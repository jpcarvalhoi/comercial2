unit uCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, ExtDlgs, DBGridEhGrouping, GridsEh, DBGridEh, rxToolEdit,
  rxCurrEdit;

type
  TFormCadProduto = class(TfrmClone)
    dsCategoria: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tbsFornecedor: TTabSheet;
    tbsFoto: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    OpenPictureDialog: TOpenPictureDialog;
    pnFoto: TPanel;
    imgFoto: TImage;
    btnAbrirFoto: TBitBtn;
    btnExcluirFoto: TBitBtn;
    Label13: TLabel;
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    BitBtn3: TBitBtn;
    DateEdit1: TDateEdit;
    Label14: TLabel;
    DBGridEh1: TDBGridEh;
    BitBtn4: TBitBtn;
    dsFornec_produto: TDataSource;
    BitBtn5: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    CurrencyEdit1: TCurrencyEdit;
    Label15: TLabel;
    edCustoMedio: TLabeledEdit;
    tbsEstoque: TTabSheet;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    Label26: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    Label29: TLabel;
    DBEdit27: TDBEdit;
    Label31: TLabel;
    TabSheet3: TTabSheet;
    Label32: TLabel;
    DBEdit28: TDBEdit;
    Label33: TLabel;
    DBEdit29: TDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit31: TDBEdit;
    Label36: TLabel;
    DBEdit32: TDBEdit;
    Label37: TLabel;
    Label30: TLabel;
    DBEdit26: TDBEdit;
    DBEdit30: TDBEdit;
    Label38: TLabel;
    DBEdit33: TDBEdit;
    Label39: TLabel;
    DBEdit34: TDBEdit;
    Label40: TLabel;
    DBEdit35: TDBEdit;
    Label41: TLabel;
    DBEdit36: TDBEdit;
    Label42: TLabel;
    DBEdit37: TDBEdit;
    Label43: TLabel;
    DBEdit38: TDBEdit;
    Label44: TLabel;
    DBEdit39: TDBEdit;
    Label45: TLabel;
    DBEdit40: TDBEdit;
    Label46: TLabel;
    DBEdit41: TDBEdit;
    Label47: TLabel;
    DBEdit42: TDBEdit;
    Label48: TLabel;
    DBEdit43: TDBEdit;
    Label49: TLabel;
    DBEdit44: TDBEdit;
    Label50: TLabel;
    DBEdit45: TDBEdit;
    Label51: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label52: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit63: TDBEdit;
    Label55: TLabel;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit64: TDBEdit;
    Label56: TLabel;
    btnReplicar: TBitBtn;
    TabSheet2: TTabSheet;
    btnCliente: TBitBtn;
    edCliente: TLabeledEdit;
    btnClienteAdd: TBitBtn;
    edValorCliente: TCurrencyEdit;
    Label57: TLabel;
    DBGridEh2: TDBGridEh;
    BitBtn9: TBitBtn;
    dsClientePreco: TDataSource;
    DBEdit65: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit66: TDBEdit;
    edEdital: TLabeledEdit;
    procedure actIncluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAbrirFotoClick(Sender: TObject);
    procedure tbsFotoShow(Sender: TObject);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnExcluirFotoClick(Sender: TObject);
    procedure tbsFornecedorShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnReplicarClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnClienteAddClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure edEditalKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    CodigoFoto : Integer;
    CodFornecedor : Integer;
    procedure AtualizaCustoMedio;
  public
    { Public declarations }
    CodProduto, CodCliente : Integer;
    Barras : String;
  end;

var
  FormCadProduto: TFormCadProduto;

implementation

uses uDM, FuncoesGlobais, FuncoesImagens, uLocalizar, uCadCategoria, FuncoesGerais;

{$R *.dfm}

procedure TFormCadProduto.actCancelarExecute(Sender: TObject);
begin
  inherited;
  AtualizaCustoMedio;
end;

procedure TFormCadProduto.actExcluirExecute(Sender: TObject);
begin
  inherited;
  AtualizaCustoMedio;
end;

procedure TFormCadProduto.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;

 { if DM.cdsProdutocodbarras.AsString = '' then
  begin
    Informa('Informe um código de barras ou código de identificação para o produto.');
    if DBEdit2.CanFocus then
      DBEdit2.SetFocus;
  end }
 {
  else if DM.cdsProdutovalor_varejo.AsCurrency <= 0 then
  begin
    Informa('Informe o valor de venda a varejo do produto.');
    if DBEdit7.CanFocus then
      DBEdit7.SetFocus;
  end }
  if dm.cdsProdutodescricao.AsString = '' then
  begin
    Informa('Informe a descrição do produto.');
    if DBEdit3.CanFocus then
      DBEdit3.SetFocus;
  end
  else begin
    if (DM.cdsProduto.State in [dsInsert]) or (DM.cdsProdutocodbarras.AsString <> VarToStr(DM.cdsProdutocodbarras.OldValue)) then
      if DM.ChecaBarras(DM.cdsProdutocodbarras.AsString, DM.cdsProdutoidproduto.AsInteger, 'P') then
        Exit;

    inherited;

    AtualizaCustoMedio;
  end;


end;

procedure TFormCadProduto.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
  AtualizaCustoMedio;
end;

procedure TFormCadProduto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormLocalizar,FormLocalizar);
    FormLocalizar.Tag := 2;
    FormLocalizar.ShowModal;
    if FormLocalizar.CodigoLocalizado > 0 then
    begin
      if not (DM.cdsProduto.State in [dsEdit,dsInsert]) then
        dm.cdsProduto.Edit;
      DM.cdsProdutoidcategoria.Value := FormLocalizar.CodigoLocalizado;
    end;
  finally
     FreeAndNil(FormLocalizar);
  end;
end;

procedure TFormCadProduto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormCadCategoria,FormCadCategoria);
    FormCadCategoria.Permissao := RetornaPermissao(5);
    if FormCadCategoria.Permissao.Visualizar then
    begin
      if (DM.cdsProdutoidcategoria.AsInteger > 0) and (DM.cdsCategoria.Active) then
        DM.cdsCategoria.Locate('idcategoria',dm.cdsProdutoidcategoria.Value,[]);

      FormCadCategoria.ShowModal;
      if (DM.cdsCategoriaidcategoria.AsInteger > 0) and (DM.cdsProduto.State in [dsEdit,dsInsert]) then
        dm.cdsProdutoidcategoria.Value := dm.cdsCategoriaidcategoria.Value;


    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadCategoria);
  end;
end;

procedure TFormCadProduto.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if (LabeledEdit1.Text <> '') and (CodFornecedor > 0) then
  begin
    if not DM.qrfornecedor_produto.Locate('idfornecedor',CodFornecedor,[]) then
    begin
      DM.qrfornecedor_produto.Insert;
      DM.qrfornecedor_produtoidproduto.Value := DM.cdsProdutoidproduto.AsInteger;
      DM.qrfornecedor_produtoidfornecedor.Value := CodFornecedor;
      DM.qrfornecedor_produtorazao.Value := LabeledEdit1.Text;
      DM.qrfornecedor_produtoultimo_valor.AsCurrency := CurrencyEdit1.Value;
      if DateEdit1.Date > 0 then
        DM.qrfornecedor_produtoultima_compra.AsDateTime := DateEdit1.Date;
      DM.qrfornecedor_produto.Post;
      //DM.qrfornecedor_produto.Refresh;
      LabeledEdit1.Clear;
      DateEdit1.Clear;
      CurrencyEdit1.Clear;
    end
    else
      Informa('Fornecedor "'+LabeledEdit1.Text+'" já cadastrado para este produto.');
  end
  else
    informa('Selecione um fornecedor.');


end;

procedure TFormCadProduto.BitBtn4Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormLocalizar,FormLocalizar);
    FormLocalizar.Tag := 3;
    FormLocalizar.ShowModal;
    if FormLocalizar.CodigoLocalizado > 0 then
    begin
      LabeledEdit1.Text := FormLocalizar.cdsLocalizar.FieldByName('descricao').AsString;
      CodFornecedor := FormLocalizar.CodigoLocalizado;
      DateEdit1.SetFocus;
    end;
  finally
     FreeAndNil(FormLocalizar);
  end;
end;

procedure TFormCadProduto.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if DM.qrfornecedor_produtoidproduto.AsInteger > 0 then
  begin
    if Pergunta('Deseja excluir o item selecionado?') = id_yes then
    begin
      DM.qrfornecedor_produto.Delete;
    end;

  end
  else
    Informa('Nenhum produto selecionado');
end;

procedure TFormCadProduto.BitBtn6Click(Sender: TObject);
begin
  inherited;
  if DM.cdsProdutoPrecoVenda_ideal.Value <= 0 then Exit;
  
  if not (DM.cdsProduto.State in [dsEdit,dsInsert]) then
    DM.cdsProduto.Edit;
  DM.cdsProdutovalor_varejo.Value := DM.cdsProdutoPrecoVenda_ideal.Value;
end;

procedure TFormCadProduto.BitBtn9Click(Sender: TObject);
begin
  inherited;
  if dm.qrClientePrecoidcliente.AsInteger > 0 then
  begin
    if Pergunta('Deseja realmente excluir o registro selecionado') = id_yes then
       DM.qrClientePreco.Delete;

  end;
end;

procedure TFormCadProduto.btnClienteClick(Sender: TObject);
var
  nome : string;
begin
  inherited;
  CodCliente := SelCliente(nome, true);
  if CodCliente > 0 then begin
    edCliente.Text := nome;
    edValorCliente.SetFocus;
  end
  else
    edCliente.Clear;
end;

procedure TFormCadProduto.btnClienteAddClick(Sender: TObject);
begin
  inherited;
  if (CodCliente <= 0) or (edCliente.Text = '') then
  begin
     Informa('Informe o Cliente');
     Exit;
  end;

  if edValorCliente.Value <= 0 then
  begin
    Informa('Informe o valor!');
    Exit;
  end;

  setPrecoProduto(dm.cdsProdutoidproduto.AsInteger,False);

  if not DM.qrClientePreco.Locate('idcliente;idproduto',VarArrayOf([CodCliente,DM.cdsProdutoidproduto.AsInteger]),[]) then
  begin
    dm.qrClientePreco.Insert;
    DM.qrClientePrecoidcliente.Value := CodCliente;
    DM.qrClientePrecoidproduto.Value := DM.cdsProdutoidproduto.AsInteger;
    dm.qrClientePrecopreco.AsCurrency := edValorCliente.Value;
    DM.qrClientePreconome.Value := edCliente.Text;
    if edEdital.Text <> '' then
      DM.qrClientePrecoedital.Value := edEdital.Text;
    DM.qrClientePreco.Post;
  end
  else begin
    if Pergunta('Cliente já encontrado, deseja atualizar o Preço do produto') = id_yes then
    begin
      dm.qrClientePreco.Edit;
      dm.qrClientePrecopreco.AsCurrency := edValorCliente.Value;
      DM.qrClientePrecoedital.Value := edEdital.Text;
      DM.qrClientePreco.Post;
    end;
  end;


  edCliente.Clear;
  edValorCliente.Clear;
  edEdital.Clear;
  btnCliente.SetFocus;

end;

procedure TFormCadProduto.btnAbrirFotoClick(Sender: TObject);
begin
  inherited;
  if OpenPictureDialog.Execute then
  begin
    imgFoto.Picture.LoadFromFile(OpenPictureDialog.FileName);

    GravaImagem(dm.cdsProdutoidproduto.AsInteger,imgFoto.Picture,'tbfoto_produto');
  end;
end;

procedure TFormCadProduto.btnExcluirFotoClick(Sender: TObject);
begin
  inherited;
  if (DM.cdsProdutoidproduto.AsInteger > 0) and (imgFoto.Picture.Graphic <> nil) then
  if Pergunta('Deseja realmente apagar a foto do produto?')  = idyes then
    begin
      ApagaImagem(DM.cdsProdutoidproduto.AsInteger,'tbfoto_produto');
      imgFoto.Picture := nil;
    end;
end;

procedure TFormCadProduto.btnReplicarClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if Pergunta('Deseja realmente replicar o cadastro do produto selecionado') = id_yes then
  begin
    setQuery(DM.qrSQL,'select * from tbproduto where idproduto = '+DM.cdsProdutoidproduto.AsString);
    if (DM.qrSQL.FieldByName('idproduto').AsInteger > 0) and
    (dm.cdsProdutoidproduto.AsInteger = DM.qrSQL.FieldByName('idproduto').AsInteger ) then
    begin
      DM.cdsProduto.Insert;
      for i := 0 to DM.qrSQL.FieldCount - 1 do
        DM.cdsProduto.FieldByName(DM.qrSQL.Fields[i].FieldName).AsVariant :=  DM.qrSQL.Fields[i].AsVariant;
      DM.cdsProdutoidproduto.AsInteger := 0;
      DM.cdsProdutodt_cadastro.AsDateTime := Date;
      DM.cdsProdutoidproduto.AsInteger := 0;
      DM.cdsProduto.Post;
      DM.qrSQL.Close;
      Informa('Produto replicado!');
    end;



  end;
end;

procedure TFormCadProduto.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  LookupClear(DBLookupComboBox1,Key);
end;

procedure TFormCadProduto.dsNavegacaoStateChange(Sender: TObject);
begin
  inherited;
  if dsNavegacao.DataSet <> nil then begin
    tbsFoto.TabVisible := False;// dsNavegacao.DataSet.State in [dsEdit,dsBrowse];
    tbsFornecedor.TabVisible := dsNavegacao.DataSet.State in [dsEdit,dsBrowse];
  end;
end;

procedure TFormCadProduto.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) or (key = VK_BACK) then
  begin
    edCliente.Clear;
    CodCliente := 0;
    key := 0;
  end;
end;

procedure TFormCadProduto.edEditalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    btnClienteAddClick(btnClienteAdd);
    key := #0;
  end;
end;

procedure TFormCadProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CodProduto := DM.cdsProdutoidproduto.AsInteger;
  DM.qrCustoMedio.Close;

end;

procedure TFormCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  FNomeCadastro := 'produto';
  CodProduto := 0;
  PageControl1.ActivePageIndex := 0;
  tbsEstoque.TabVisible := False;
end;

procedure TFormCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  CodigoFoto := 0;

  dsNavegacao.DataSet := DM.cdsProduto;
  DM.cdsProduto.Close;
  DM.cdsProduto.Params.ParamByName('pid').Value := CodProduto;
  DM.cdsProduto.Open;

  if not DM.cdsCategoria.Active then
    DM.cdsCategoria.Open;

  if self.Tag = 1 then begin
    btnNovo.Click;
    if Barras <> '' then
      DM.cdsProdutocodbarras.Value := Barras;
  end;

  AtualizaCustoMedio;
end;

procedure TFormCadProduto.LabeledEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) or (key = VK_BACK) then
  begin
    LabeledEdit1.Clear;
    CodFornecedor := 0;
    key := 0;
  end;
end;

procedure TFormCadProduto.TabSheet2Show(Sender: TObject);
begin
  inherited;
  setPrecoProduto(dm.cdsProdutoidproduto.AsInteger,False);
end;

procedure TFormCadProduto.tbsFornecedorShow(Sender: TObject);
begin
  inherited;
  with DM do begin
    if cdsProdutoidproduto.Value <> qrfornecedor_produtoidproduto.value then
    begin
      qrfornecedor_produto.Close;
      qrfornecedor_produto.Params.ParamByName('pidproduto').Value := DM.cdsProdutoidproduto.AsInteger;
      qrfornecedor_produto.Open;
    end;
  end;

end;

procedure TFormCadProduto.tbsFotoShow(Sender: TObject);
begin
  inherited;
{  if (dm.cdsProdutoidproduto.AsInteger > 0) and (CodigoFoto <> dm.cdsProdutoidproduto.AsInteger) then
  begin
     CarregaImagem(dm.cdsProdutoidproduto.AsInteger,imgFoto.Picture,'tbfoto_produto');
     CodigoFoto := dm.cdsProdutoidproduto.AsInteger;
  end
  else if (dm.cdsProdutoidproduto.AsInteger = 0) then
  begin
    imgFoto.Picture := nil;
  end;
}
end;

procedure TFormCadProduto.AtualizaCustoMedio;
begin
  with DM do begin
    if (cdsProdutoidproduto.AsInteger <> qrCustoMedioidproduto.AsInteger) or (not qrCustoMedio.Active) then
    begin
      qrCustoMedio.Close;
      qrCustoMedio.Params.ParamByName('pidproduto').Value := cdsProdutoidproduto.AsInteger;
      qrCustoMedio.Open;

      edCustoMedio.Text := FormataCurrency(qrCustoMediocusto_medio.AsCurrency);
    end;
  end;
end;

end.
