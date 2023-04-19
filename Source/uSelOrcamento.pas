unit uSelOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, DBGridEhGrouping, GridsEh, DBGridEh, DB, DBClient,
  Provider, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask, rxToolEdit, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TFormSelOrcamento = class(TFormCloneSelecao)
    DBGridEhSelOrcamento: TDBGridEh;
    edNota: TLabeledEdit;
    edCliente: TLabeledEdit;
    sbtnLocalizar: TSpeedButton;
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
    BitBtn5: TBitBtn;
    cdsPesquisafinalizado_em: TDateField;
    GroupBox1: TGroupBox;
    cbData: TComboBox;
    Label1: TLabel;
    edDtIni: TDateEdit;
    edDFim: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    ckFinalizados: TCheckBox;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure actAlterarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure DBGridEhSelOrcamentoDblClick(Sender: TObject);
    procedure edNotaKeyPress(Sender: TObject; var Key: Char);
    procedure sbtnLocalizarClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbDataChange(Sender: TObject);
    procedure DBGridEhSelOrcamentoGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
  private
    FSql: String;
    FCodCliente : Integer;
    procedure Pesquisar;
    procedure CallCad(Incluir: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelOrcamento: TFormSelOrcamento;

implementation

uses FuncoesGerais, uCadEntSai, FuncoesGlobais, uDM, uRelatorios, uVenda;

{$R *.dfm}

procedure TFormSelOrcamento.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  BitBtn1.Enabled := cdsPesquisaidnota.AsInteger > 0;
  btnExcluir.Enabled := cdsPesquisaidnota.AsInteger > 0;
end;

procedure TFormSelOrcamento.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) or (key = vk_back) then
    edCliente.Clear;
end;

procedure TFormSelOrcamento.edNotaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Pesquisar;
end;

procedure TFormSelOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SaveColumnsLayout(DBGridEhSelOrcamento);
end;

procedure TFormSelOrcamento.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := qrPesquisa.SQL.Text;
  RestoreColumnsLayout(DBGridEhSelOrcamento);
end;

procedure TFormSelOrcamento.FormShow(Sender: TObject);
begin
  inherited;
  edDtIni.Date := Date - 7;
  edDFim.Date := Date;
  cbData.ItemIndex := 1;
  Pesquisar;
end;

procedure TFormSelOrcamento.Pesquisar();
var
  Filtro : String;
  CampoData : String;
begin
   cdsPesquisa.Close;

   if StrToIntDef(edNota.Text, 0) > 0  then
     Filtro := filtro + ' and o.numnota = '+edNota.Text;

   CampoData := '';
   case cbData.ItemIndex of
     1 : CampoData := 'cast(o.datalancamento as date)';
     2 : CampoData := 'o.datanota';
     3 : CampoData := 'o.finalizado_em';
   end;

   if ckFinalizados.Checked then
     Filtro := Filtro + ' and o.finalizado_em is null';

   if (edDtIni.Date > 0) and (edDFim.Date >= edDtIni.Date) and (CampoData <> '') then
   begin
     filtro := filtro + ' and '+CampoData+' between '+FormatDateSql(edDtIni.Date)+' and '+FormatDateSql(edDFim.Date);
   end;

   if (edCliente.Text <> '') and (FCodCliente > 0) then
      filtro := filtro + ' and o.idcliente = '+IntToStr(FCodCliente);

   cdsPesquisa.CommandText := FSql+' '+Filtro;
   cdsPesquisa.Open;

end;

procedure TFormSelOrcamento.sbtnLocalizarClick(Sender: TObject);
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

procedure TFormSelOrcamento.CallCad(Incluir: boolean);
begin
  try
    Application.CreateForm(TFormCadEntSai,FormCadEntSai);
    FormCadEntSai.Permissao := self.Permissao;
    FormCadEntSai.Tipo := tipo_orcamento;
    if Incluir then
       FormCadEntSai.Tag := 1;
    FormCadEntSai.CodNota := cdsPesquisaidnota.AsInteger;
    FormCadEntSai.ShowModal;
    if cdsPesquisa.Active then
      cdsPesquisa.Refresh;
  finally
    FreeAndNil(FormCadEntSai);
  end;
end;

procedure TFormSelOrcamento.cbDataChange(Sender: TObject);
begin
  inherited;
  if cbData.ItemIndex = 3 then
    ckFinalizados.Checked := False;
end;

procedure TFormSelOrcamento.DBGridEhSelOrcamentoDblClick(Sender: TObject);
begin
  inherited;
  CallCad(False);
end;

procedure TFormSelOrcamento.DBGridEhSelOrcamentoGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if cdsPesquisafinalizado_em.AsDateTime > 0 then
    Background := $00CEFFCE;
end;

procedure TFormSelOrcamento.actAlterarExecute(Sender: TObject);
begin
  inherited;
  CallCad(False);
end;

procedure TFormSelOrcamento.actExcluirExecute(Sender: TObject);
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

procedure TFormSelOrcamento.actIncluirExecute(Sender: TObject);
begin
  inherited;
  CallCad(True);
end;

procedure TFormSelOrcamento.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  Pesquisar();
end;

procedure TFormSelOrcamento.BitBtn5Click(Sender: TObject);
var
  Localizou : Boolean;
  Dif : Currency;
  ret : Integer;
begin
  inherited;

  if cdsPesquisafinalizado_em.AsDateTime > 0 then
  begin
    if Pergunta('O Orçamento selecionado já foi finalizado, deseja realmente continuar?') = id_no then
      Exit;
  end;

  DM.cdsNota.Close;
  DM.cdsNota.Params.ParamByName('pidnota').Value := cdsPesquisaidnota.AsInteger;
  DM.cdsNota.Open;

  if DM.cdsNotaidnota.AsInteger > 0 then
  begin
    with FormVenda do
    begin
      if VendaEmAndamento then
      begin
        Informa('No momento já existe uma venda em andamento.');
        Exit;
      end;

      if not IniciaVenda then begin
        Informa('Não foi possível iniciar a venda!');
        Exit;
      end;

      cdsVenda.Edit;
      if DM.cdsNotaidcliente.AsInteger > 0 then
      begin
        cdsVendacodcliente.AsInteger := DM.cdsNotaidcliente.AsInteger;
        SetSqlCliente('codcliente = '+DM.cdsNotaidcliente.AsString);
      end;

      DM.cdsItemNota.Close;
      DM.cdsItemNota.Params.ParamByName('pidnota').Value := DM.cdsNotaidnota.AsInteger;
      DM.cdsItemNota.Open;
      DM.cdsItemNota.First;
      while not DM.cdsItemNota.Eof do
      begin

        if DM.cdsItemNotaidkit.AsInteger > 0 then
          Localizou := LocalizarProduto('',DM.cdsItemNotaidkit.AsInteger,tKit)
        else
          Localizou := LocalizarProduto('',DM.cdsItemNotaidproduto.AsInteger,tProd);

        if Localizou then
        begin
           InsereItem(DM.cdsItemNotavalor_unit.AsCurrency,DM.cdsItemNotaqtde.AsInteger);
        end;

        DM.cdsItemNota.Next;
      end;

      //pagamento
      Dif := DM.cdsNotavalor_nota.AsCurrency - cdsVendatotal_venda.AsCurrency;
      if Dif < 0 then
        cdsVendadesconto.AsCurrency := Dif * -1
      else if Dif > 0 then
        cdsVendaacrescimo.AsCurrency := Dif;

      DM.qrNotaPagamento.Close;
      DM.qrNotaPagamento.Params.ParamByName('pidnota').AsInteger := DM.cdsNotaidnota.AsInteger;
      DM.qrNotaPagamento.Open;

      ret := FormVenda.ShowModal;

      DM.cdsNota.Close;
      DM.cdsItemNota.Close;

      if  (ret = mrOK) and (cdsPesquisafinalizado_em.AsDateTime <= 0) and
          (Pergunta('Deseja marcar o orçamento como finalizado?') = id_yes) then
      begin
        DM.ExecutaComando('update tbnota set finalizado_em = '+FormatDateSql(Date)+' where idnota = '+cdsPesquisaidnota.AsString);
        cdsPesquisa.Refresh;
      end;
    end;
  end;
end;

procedure TFormSelOrcamento.btnImprimirClick(Sender: TObject);
begin
  inherited;
  with FormRelatorios do begin
    ImprimeNota(cdsPesquisaidnota.AsInteger);
  end;

end;

procedure TFormSelOrcamento.btnNovoClick(Sender: TObject);
begin
  inherited;
  CallCad(True);
end;

end.
