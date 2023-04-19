unit uSelKit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, StdCtrls, ExtCtrls, DB, DBClient, Provider,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls,
  Buttons, Grids, DBGrids, rxPlacemnt;

type
  TFormSelKit = class(TFormCloneSelecao)
    edPesquisa: TLabeledEdit;
    btnBuscar: TBitBtn;
    rgbusca: TRadioGroup;
    cdsPesquisaidkit: TIntegerField;
    cdsPesquisacodbarras: TWideStringField;
    cdsPesquisadescricao: TWideStringField;
    cdsPesquisavalor_varejo: TFloatField;
    cdsPesquisavalor_custo: TFloatField;
    cdsPesquisainfo_adicional: TWideStringField;
    cdsPesquisaestoque_atual: TIntegerField;
    ckEstoque: TCheckBox;
    FormStorage1: TFormStorage;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure DBGridPesquisaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgbuscaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPesquisaCalcFields(DataSet: TDataSet);
    procedure ckEstoqueClick(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure cdsPesquisaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    FSql, campofiltro : String;

    procedure ChamaCadastro(IDKit: Integer);
    { Private declarations }
  public
    { Public declarations }
    vIndex : Integer;
  end;

var
  FormSelKit: TFormSelKit;

implementation

uses FuncoesGlobais, uCadKit, FuncoesGerais;

{$R *.dfm}

procedure TFormSelKit.actAlterarExecute(Sender: TObject);
begin
  inherited;
  if cdsPesquisaidkit.AsInteger > 0 then
      ChamaCadastro(cdsPesquisaidkit.AsInteger);
end;

procedure TFormSelKit.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro(0);
end;

procedure TFormSelKit.btnBuscarClick(Sender: TObject);
var
  filtro : String;
begin
  inherited;
  if Trim(edPesquisa.Text) = '' then
    if Pergunta('Nenhum critério de busca informado, isso retornará'+#13+
                'todos os Kits cadastrados, o que pode demorar.'+#13+
                'Deseja continuar?') = id_no then
     Exit;

  case rgbusca.ItemIndex of
    0 : campofiltro := 'cod';
    1 : campofiltro := 'descricao';
    2 : campofiltro := 'codbarras';
    3 : campofiltro := 'info_adicional';
  end;

  if edPesquisa.Text <> '' then
  begin
    if campofiltro <> 'cod' then
      filtro :=  campofiltro + ' like _utf8 '+QuotedStr(edPesquisa.Text[1] + '%')+ ' COLLATE utf8_unicode_ci '
    else
      filtro := 'descricao like _utf8 '+QuotedStr(edPesquisa.Text[1] + '%') +
                ' or codbarras like _utf8 '+QuotedStr(edPesquisa.Text[1] + '%')+ ' COLLATE utf8_unicode_ci ';
  end;

  if filtro <> '' then
    filtro := ' and '+filtro;

  cdsPesquisa.Close;
  cdsPesquisa.CommandText := FSql + filtro;
  cdsPesquisa.Open;

  cdsPesquisa.Filtered := False;
  cdsPesquisa.Filtered := True;

end;

procedure TFormSelKit.cdsPesquisaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsPesquisa.State = dsInternalCalc then
  begin
    cdsPesquisaestoque_atual.AsVariant := null;
    if ckEstoque.Checked then
    begin
      cdsPesquisaestoque_atual.Value := GetEstoqueKit(cdsPesquisaidkit.AsInteger);
    end;
  end;

end;

procedure TFormSelKit.cdsPesquisaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if (CampoFiltro <> '') and (edPesquisa.Text <> '') then begin
    if CampoFiltro = 'cod' then
      Accept := (pos(UpperCase(RemoveAcento(edPesquisa.Text)), UpperCase(RemoveAcento(cdsPesquisa.FieldByName('descricao').AsString))) > 0) or
                (pos(UpperCase(RemoveAcento(edPesquisa.Text)), UpperCase(RemoveAcento(cdsPesquisa.FieldByName('codbarras').AsString))) > 0)
    else
      Accept := pos(UpperCase(RemoveAcento(edPesquisa.Text)), UpperCase(RemoveAcento(cdsPesquisa.FieldByName(CampoFiltro).AsString))) > 0;
  end
  else
    Accept := True;
end;

procedure TFormSelKit.ChamaCadastro(IDKit : Integer);
begin
  if (not self.Permissao.Incluir) and (IDKit = 0) then
    AcessoNegado(Negado_incluir)
  else
    try
      Application.CreateForm(TFormCadKit,FormCadKit);
      FormCadKit.CodKit := IDKit;
      FormCadKit.Permissao := self.Permissao;
      if IDKit = 0 then
        FormCadKit.Tag := 1;
      FormCadKit.ShowModal;
    finally
      FreeAndNil(FormCadKit);
      //não dá refresh com muitos registros para não agarrar
      if (cdsPesquisa.Active) and (cdsPesquisa.RecordCount <= 10) then
        cdsPesquisa.Refresh;
    end;

end;


procedure TFormSelKit.ckEstoqueClick(Sender: TObject);
begin
  inherited;
  if cdsPesquisa.Active then
    cdsPesquisa.Refresh;
end;

procedure TFormSelKit.DBGridPesquisaDblClick(Sender: TObject);
begin
  inherited;
  if (not Localizando) and (cdsPesquisa.Active) and (cdsPesquisa.RecordCount > 0) then
     ChamaCadastro(cdsPesquisa.FieldByName('idkit').AsInteger)
  else if Localizando then
       ModalResult := mrOk;
end;

procedure TFormSelKit.edPesquisaChange(Sender: TObject);
begin
  inherited;
  if edPesquisa.Text <> '' then
    btnBuscarClick(nil);
end;

procedure TFormSelKit.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_RETURN) and (shift = [ssCtrl]) then
  begin
    key := 0;
    if (not Localizando) and (cdsPesquisa.Active) and (cdsPesquisaidkit.AsInteger > 0) then
      ChamaCadastro(cdsPesquisaidkit.AsInteger)
    else
      ModalResult := mrOk;
  end
  else if (key = VK_RETURN) then
  begin
    btnBuscar.Click;
    key := 0;
  end
  else
    NavegaRegistros(cdsPesquisa,Key);
end;

procedure TFormSelKit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CodLocalizado := cdsPesquisaidkit.AsInteger ;
  FormStorage1.SaveFormPlacement;
end;

procedure TFormSelKit.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := qrPesquisa.SQL.Text;
  vIndex := 0;
  LoadConfigLocal(FormStorage1);
end;

procedure TFormSelKit.FormShow(Sender: TObject);
begin
  inherited;
  rgbusca.ItemIndex := vIndex;
  edPesquisa.SetFocus;
  if edPesquisa.Text <> '' then
    btnBuscar.Click;
end;

procedure TFormSelKit.rgbuscaClick(Sender: TObject);
begin
  inherited;
  edPesquisa.SetFocus;
  edPesquisa.SelectAll;
end;

end.
