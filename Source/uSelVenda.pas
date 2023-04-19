unit uSelVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, DBGridEhGrouping, GridsEh, DBGridEh, DB, DBClient,
  Provider, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask, rxToolEdit, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TFormSelVenda = class(TFormCloneSelecao)
    DBGridEhSelOrcamento: TDBGridEh;
    edNota: TLabeledEdit;
    edCliente: TLabeledEdit;
    btnCliente: TSpeedButton;
    BitBtn4: TBitBtn;
    actPesquisar: TAction;
    cdsPesquisaidnota: TIntegerField;
    cdsPesquisadatanota: TDateField;
    cdsPesquisadatalancamento: TDateTimeField;
    cdsPesquisanumnota: TIntegerField;
    cdsPesquisaidcliente: TIntegerField;
    cdsPesquisanome: TWideStringField;
    cdsPesquisatelefone: TWideStringField;
    cdsPesquisacelular: TWideStringField;
    cdsPesquisanomeusuario: TWideStringField;
    btnImprimir: TBitBtn;
    cdsPesquisafinalizado_em: TDateField;
    GroupBox1: TGroupBox;
    cbData: TComboBox;
    Label1: TLabel;
    edDtIni: TDateEdit;
    edDFim: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    edClienteVenda: TLabeledEdit;
    btnClienteVenda: TSpeedButton;
    edEdital: TLabeledEdit;
    cdsPesquisacvnome: TWideStringField;
    cdsPesquisacvtelefone: TWideStringField;
    cdsPesquisacvcelular: TWideStringField;
    cdsPesquisanumedital: TIntegerField;
    ckFinalizado: TCheckBox;
    cdsPesquisaidcliente_venda: TIntegerField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure actAlterarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure DBGridEhSelOrcamentoDblClick(Sender: TObject);
    procedure edNotaKeyPress(Sender: TObject; var Key: Char);
    procedure btnClienteClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEhSelOrcamentoGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure btnClienteVendaClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure getTextTelefone(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BitBtn6Click(Sender: TObject);
  private
    FSql: String;
    FCodCliente, FCodClienteVenda : Integer;
    procedure Pesquisar;
    procedure CallCad(Incluir: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelVenda: TFormSelVenda;

implementation

uses FuncoesGerais, uCadEntSai, FuncoesGlobais, uDM, uRelatorios, uVenda,
  uCadOrdem;

{$R *.dfm}

procedure TFormSelVenda.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  BitBtn1.Enabled := cdsPesquisaidnota.AsInteger > 0;
  btnExcluir.Enabled := cdsPesquisaidnota.AsInteger > 0;
end;

procedure TFormSelVenda.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) or (key = vk_back) then
  begin
    TLabeledEdit(Sender).Clear;
    Pesquisar;
  end;

end;

procedure TFormSelVenda.edNotaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    Pesquisar;
    Key := #0;
  end;

end;

procedure TFormSelVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SaveColumnsLayout(DBGridEhSelOrcamento);
end;

procedure TFormSelVenda.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := qrPesquisa.SQL.Text;
  RestoreColumnsLayout(DBGridEhSelOrcamento);
end;

procedure TFormSelVenda.FormShow(Sender: TObject);
begin
  inherited;
  CentralizaForm(Self);
  edDtIni.Date := Date - 7;
  edDFim.Date := Date;
  cbData.ItemIndex := 2;
  Pesquisar;
end;

procedure TFormSelVenda.getTextTelefone(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := FormataTelefone(Text);
end;

procedure TFormSelVenda.Pesquisar();
var
  Filtro : String;
  CampoData : String;
  numero : Boolean;
begin
   cdsPesquisa.Close;

   numero := False;
   if StrToIntDef(edNota.Text, 0) > 0  then
   begin
     Filtro := filtro + ' and o.numnota = '+edNota.Text;
     numero := True;
   end;

   if StrToIntDef(edEdital.Text, 0) > 0 then
   begin
     filtro := filtro + ' and o.numedital = '+edEdital.Text;
     numero := True;
   end;

   if not numero then
   begin
     CampoData := '';
     case cbData.ItemIndex of
       1 : CampoData := 'cast(o.datalancamento as date)';
       2 : CampoData := 'o.datanota';
     end;


     if (edDtIni.Date > 0) and (edDFim.Date >= edDtIni.Date) and (CampoData <> '') then
     begin
       filtro := filtro + ' and '+CampoData+' between '+FormatDateSql(edDtIni.Date)+' and '+FormatDateSql(edDFim.Date);
     end;

     if ckFinalizado.Checked then
      Filtro := filtro + ' and o.finalizado_em is null';

     if (edCliente.Text <> '') and (FCodCliente > 0) then
        filtro := filtro + ' and o.idcliente = '+IntToStr(FCodCliente);

     if (edClienteVenda.Text <> '') and (FCodClienteVenda > 0) then
       filtro := filtro + ' and o.idcliente_venda = '+IntToStr(FCodClienteVenda);
   end;

   cdsPesquisa.CommandText := FSql+' '+Filtro;
   cdsPesquisa.Open;

end;

procedure TFormSelVenda.btnClienteClick(Sender: TObject);
var
  Nome : String;
begin
  inherited;
  FCodCliente := SelCliente(nome);
  if FCodCliente > 0 then
  begin
    edCliente.Text := nome;
    Pesquisar;
  end
  else
    edCliente.Clear;

end;

procedure TFormSelVenda.btnClienteVendaClick(Sender: TObject);
var
  Nome : String;
begin
  inherited;
  FCodClienteVenda := SelCliente(nome);
  if FCodClienteVenda > 0 then
  begin
    edClienteVenda.Text := nome;
    Pesquisar;
  end
  else
    edClienteVenda.Clear;

end;

procedure TFormSelVenda.CallCad(Incluir: boolean);
begin
  try
    Application.CreateForm(TFormCadOrdem,FormCadOrdem);
    FormCadOrdem.Permissao := self.Permissao;
    if Incluir then
       FormCadOrdem.Tag := 1;
    FormCadOrdem.CodNota := cdsPesquisaidnota.AsInteger;
    FormCadOrdem.ShowModal;
    if cdsPesquisa.Active then
      cdsPesquisa.Refresh;
  finally
    FreeAndNil(FormCadOrdem);
  end;
end;

procedure TFormSelVenda.DBGridEhSelOrcamentoDblClick(Sender: TObject);
begin
  inherited;
  CallCad(False);
end;

procedure TFormSelVenda.DBGridEhSelOrcamentoGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if cdsPesquisafinalizado_em.AsDateTime > 0 then
    Background := $00CEFFCE;
end;

procedure TFormSelVenda.actAlterarExecute(Sender: TObject);
begin
  inherited;
  CallCad(False);
end;

procedure TFormSelVenda.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if not Permissao.Excluir then
  begin
    AcessoNegado(Negado_excluir);
    Exit;
  end;

  if cdsPesquisaidnota.AsInteger <= 0 then
  begin
    Informa('Nehum registro selecionado');
    Exit;
  end;

  if Pergunta('Deseja realmente excluir o registro selecionado',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = ID_YES  then
  begin
    ExecutaComando(DM.qrComando,'delete from tbnota where idnota = '+cdsPesquisaidnota.asString);
    cdsPesquisa.Refresh;
  end;
end;

procedure TFormSelVenda.actIncluirExecute(Sender: TObject);
begin
  inherited;
  CallCad(True);
end;

procedure TFormSelVenda.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Pesquisar();
end;

procedure TFormSelVenda.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if not Permissao.Alterar then
  begin
    AcessoNegado(Negado_alterar);
    Exit;
  end;

  if (cdsPesquisaidnota.AsInteger > 0) and (cdsPesquisa.Active) and (cdsPesquisafinalizado_em.AsVariant = null) then
  begin
    if Pergunta('Deseja realmente marcar o registro como concluído?') = id_yes then
      DM.ExecutaComando('update tbnota set finalizado_em = current_date where idnota = '+cdsPesquisaidnota.AsString);

    cdsPesquisa.Refresh;
  end;
end;

procedure TFormSelVenda.BitBtn6Click(Sender: TObject);
begin
  inherited;
  if Pergunta('O Relatório será enviado diretamente para a impressora, deseja continuar?') = idYes then
  begin
    try
      cdsPesquisa.DisableControls;
      self.Enabled := False;
      cdsPesquisa.First;

      if Pergunta('Deseja imprimir os valores?') = id_yes then
        FormRelatorios.rpNota.Tag := 1
      else
        FormRelatorios.rpNota.Tag := 2;

      FormRelatorios.rpNota.DeviceType := 'Printer';
      FormRelatorios.rpNota.ShowPrintDialog := False;

      while not cdsPesquisa.Eof do
      begin
        with FormRelatorios do begin

          ImprimeNota(cdsPesquisaidnota.AsInteger, True, 'V');
        end;

        Application.ProcessMessages;
        cdsPesquisa.Next;
      end;
    finally
       cdsPesquisa.First;
       cdsPesquisa.EnableControls;
       self.Enabled := True;
    end;
  end;
end;

procedure TFormSelVenda.btnImprimirClick(Sender: TObject);
begin
  inherited;
  with FormRelatorios do begin
    ImprimeNota(cdsPesquisaidnota.AsInteger, True, 'V');
  end;

end;

procedure TFormSelVenda.btnNovoClick(Sender: TObject);
begin
  inherited;
  CallCad(True);
end;

end.
