unit uSelProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, StdCtrls, ExtCtrls, DB, DBClient, Provider,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, Buttons,
  Grids, DBGrids, System.Actions;

type
  TFormSelPoduto = class(TFormCloneSelecao)
    edPesquisa: TLabeledEdit;
    rgbusca: TRadioGroup;
    cdsPesquisaidproduto: TIntegerField;
    cdsPesquisacodbarras: TWideStringField;
    cdsPesquisadescricao: TWideStringField;
    cdsPesquisavalor_varejo: TFloatField;
    cdsPesquisainfo_adicional: TWideStringField;
    cdsPesquisaest_atual: TIntegerField;
    btnBuscar: TBitBtn;
    cdsPesquisavalor_custo: TFloatField;
    cdsPesquisadesccategoria: TWideStringField;
    cdsPesquisaedital: TWideStringField;
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgbuscaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridPesquisaDblClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure cdsPesquisaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure edPesquisaChange(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure actAlterarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
  private
    mysql, sqlCliente : string;
    CampoFiltro : String;

    procedure ChamaCadastro(IDProduto: Integer);
    { Private declarations }
  public
    { Public declarations }
    vIndex : SmallInt;
    IDCliente : Integer;
  end;

var
  FormSelPoduto: TFormSelPoduto;

implementation

uses FuncoesGlobais, uCadProduto, FuncoesGerais;

{$R *.dfm}

procedure TFormSelPoduto.ChamaCadastro(IDProduto : Integer);
begin
  if (not self.Permissao.Incluir) and (IDProduto = 0) then
    AcessoNegado(Negado_incluir)
  else
    try
      Application.CreateForm(TFormCadProduto,FormCadProduto);
      FormCadProduto.CodProduto := IDProduto;
      FormCadProduto.Permissao := self.Permissao;
      if IDProduto = 0 then
        FormCadProduto.Tag := 1;
      FormCadProduto.ShowModal;
    finally
      FreeAndNil(FormCadProduto);
      //não dá refresh com muitos registros para não agarrar
      if (cdsPesquisa.Active) and (cdsPesquisa.RecordCount <= 10) then
        cdsPesquisa.Refresh;
    end;

end;

procedure TFormSelPoduto.actAlterarExecute(Sender: TObject);
begin
  inherited;
  if cdsPesquisaidproduto.AsInteger > 0 then
      ChamaCadastro(cdsPesquisaidproduto.AsInteger);
end;

procedure TFormSelPoduto.actIncluirExecute(Sender: TObject);
begin
  inherited;
    ChamaCadastro(0);
end;

procedure TFormSelPoduto.btnBuscarClick(Sender: TObject);
var
  filtro, vSql : String;
begin
  inherited;
  if IDCliente >= 0 then
    vSql := sqlCliente + ' where cp.idcliente = '+IntToStr(IDCliente)
  else
    vSql := mysql+' where idproduto > 0 ';

  case rgbusca.ItemIndex of
    0 : CampoFiltro := 'cod';
    1 : CampoFiltro := 'p.descricao';
    2 : CampoFiltro := 'codbarras';
    3 : CampoFiltro := 'info_adicional';
  end;

  if (edPesquisa.Text <> '') and (not cdsPesquisa.Active) then
  begin
    if CampoFiltro = 'cod' then
      filtro := 'p.descricao like _utf8 '+QuotedStr(edPesquisa.Text[1]+'%') +
                ' or codbarras like _utf8 '+QuotedStr(edPesquisa.Text[1]+'%')+ ' COLLATE utf8_unicode_ci '
    else
      filtro := CampoFiltro + ' like _utf8 '+QuotedStr(edPesquisa.Text[1]+'%') + ' COLLATE utf8_unicode_ci ';
    cdsPesquisa.Close;
    cdsPesquisa.CommandText := vSql +' and '+ filtro ;
    cdsPesquisa.Open;
  end
  else if Trim(edPesquisa.Text) = '' then
  begin
    cdsPesquisa.Close;
    if Sender = btnBuscar then
      if Pergunta('Nenhum critério de busca informado, isso retornará'+#13+
                  'todos os produtos cadastrados, o que pode demorar.'+#13+
                  'Deseja continuar?') = id_yes then
      begin
        cdsPesquisa.CommandText := vSql;
        cdsPesquisa.Open;

      end;
  end;

  cdsPesquisa.Filtered := False;
  cdsPesquisa.Filtered := True;
end;

procedure TFormSelPoduto.cdsPesquisaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  CampoFiltro:= StringReplace(CampoFiltro,'p.','',[rfIgnoreCase]);
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

procedure TFormSelPoduto.DBGridPesquisaDblClick(Sender: TObject);
begin
  inherited;
  if (not Localizando) and (cdsPesquisa.Active) and (cdsPesquisa.RecordCount > 0) then
     ChamaCadastro(cdsPesquisa.FieldByName('idproduto').AsInteger)
  else if Localizando then
       ModalResult := mrOk;
end;

procedure TFormSelPoduto.DBGridPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then begin
    DBGridPesquisaDblClick(nil);
    Key := #0;
  end;

end;

procedure TFormSelPoduto.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  BitBtn1.Enabled := (cdsPesquisa.Active) and (cdsPesquisa.RecordCount > 0);
end;

procedure TFormSelPoduto.edPesquisaChange(Sender: TObject);
begin
  inherited;
  btnBuscarClick(nil);
end;

procedure TFormSelPoduto.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((key = VK_RETURN) and (shift = [ssCtrl])) or
     ((key = VK_RETURN) and (Localizando)) then
  begin
    if (cdsPesquisa.Active) and (cdsPesquisaidproduto.AsInteger > 0) then
      if (not Localizando) then
        ChamaCadastro(cdsPesquisaidproduto.AsInteger)
      else
        ModalResult := mrOk;
    key := 0;
  end
  else if (key = VK_RETURN) then
  begin
    btnBuscar.Click;
    key := 0;
  end
  else
    NavegaRegistros(cdsPesquisa,Key);
end;

procedure TFormSelPoduto.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    key := #0;
end;

procedure TFormSelPoduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CodLocalizado := cdsPesquisaidproduto.AsInteger ;

end;

procedure TFormSelPoduto.FormCreate(Sender: TObject);
begin
  inherited;
  vIndex := 0;
  mysql := qrPesquisa.SQL.Text;

  sqlCliente := 'select p.idproduto, p.codbarras, p.descricao, p.valor_varejo, cp.preco as valor_custo, p.info_adicional, '+
                'p.est_atual, c.descricao as desccategoria, p.edital '+
                'from tbproduto p '+
                'left join tbcategoria c on p.idcategoria = c.idcategoria '+
                'inner join tbcliente_preco cp on cp.idproduto = p.idproduto and cp.idproduto = p.idproduto ';
  IDCliente := -1;
end;

procedure TFormSelPoduto.FormShow(Sender: TObject);
begin
  inherited;
  rgbusca.ItemIndex := vIndex;
  edPesquisa.SetFocus;
  if edPesquisa.Text <> '' then
    btnBuscar.Click;
  if IDCliente > 0 then
     DBGridPesquisa.Columns[4].Visible := False;
end;

procedure TFormSelPoduto.rgbuscaClick(Sender: TObject);
begin
  inherited;
  edPesquisa.SetFocus;
  edPesquisa.SelectAll;
end;

end.
