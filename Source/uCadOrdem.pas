unit uCadOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  DBGridEhGrouping, GridsEh, DBGridEh, DBCtrls, Mask, rxToolEdit, rxCurrEdit,
  ImgList, RxDBComb, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  FuncoesGlobais, RXDBCtrl, Grids, DBGrids, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh, System.Actions;

type
  TFormCadOrdem = class(TfrmClone)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    lbFornecedor: TLabel;
    DBLookupComboBoxFornecedor: TDBLookupComboBox;
    dsItemNota: TDataSource;
    dsFornecedor: TDataSource;
    dsUsuario: TDataSource;
    btnAlterar: TBitBtn;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizarprodutos1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    BitBtn2: TBitBtn;
    dsSel: TDataSource;
    qrSel: TZQuery;
    qrSelcodbarras: TWideStringField;
    qrSeldescricao: TWideStringField;
    qrSelvalor_varejo: TFloatField;
    qrSelest_atual: TIntegerField;
    qrSelidproduto: TIntegerField;
    qrSelvalor_custo: TFloatField;
    qrSeltabela: TWideStringField;
    btnPrefeitura: TBitBtn;
    PageControl1: TPageControl;
    tbsProduto: TTabSheet;
    edValorUnit: TCurrencyEdit;
    btnAdicionar: TBitBtn;
    Label12: TLabel;
    edValorTotal: TCurrencyEdit;
    Label11: TLabel;
    Label10: TLabel;
    edQtde: TEdit;
    Label9: TLabel;
    edDescricao: TEdit;
    btnKit: TBitBtn;
    btnLocProd: TBitBtn;
    edProduto: TEdit;
    Label8: TLabel;
    DBGridEhItens: TDBGridEh;
    dbGridSel: TDBGridEh;
    DBGridEh2: TDBGridEh;
    dsTransportadora: TDataSource;
    Label27: TLabel;
    dsPagamento: TDataSource;
    DBMemoObs: TDBMemo;
    dsCliente: TDataSource;
    btnImprimir: TBitBtn;
    btnExcluirItem: TBitBtn;
    Label7: TLabel;
    dblkCliente: TDBLookupComboBox;
    BitBtn5: TBitBtn;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    qrSeltamanho: TWideStringField;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    qrSeledital: TWideStringField;
    edEdital: TEdit;
    Label17: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    eddbValortotal: TDBEdit;
    edtotItens: TLabeledEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    pnPagamento: TPanel;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox6: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBox7: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    GroupBox8: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    ckDinheiro: TCheckBox;
    ckDebito: TCheckBox;
    ckCredito: TCheckBox;
    ckPar2: TCheckBox;
    ckpar3: TCheckBox;
    ckpar4: TCheckBox;
    ckpar5: TCheckBox;
    ckpar6: TCheckBox;
    Label32: TLabel;
    DBEdit22: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure DBLookupComboBoxFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGravarExecute(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure edValorUnitExit(Sender: TObject);
    procedure edProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEhItensGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dsNavegacaoStateChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBGridEhItensDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure dsItemNotaDataChange(Sender: TObject; Field: TField);
    procedure DBGridEhItensCellClick(Column: TColumnEh);
    procedure DBGridEhItensDblClick(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure Localizarprodutos1Click(Sender: TObject);
    procedure edProdutoChange(Sender: TObject);
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qrSelFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure edProdutoExit(Sender: TObject);
    procedure btnLocProdClick(Sender: TObject);
    procedure btnKitClick(Sender: TObject);
    procedure btnPrefeituraClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure dbGridSelDblClick(Sender: TObject);
    procedure dbGridSelKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridSelExit(Sender: TObject);
    procedure edDescricaoEnter(Sender: TObject);
    procedure DBLookupComboBoxFornecedorEnter(Sender: TObject);
    procedure DBLookupComboBoxFornecedorExit(Sender: TObject);
    procedure edEditalKeyPress(Sender: TObject; var Key: Char);
    procedure ckDinheiroClick(Sender: TObject);
    procedure dsNavegacaoDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBRadioGroup1Click(Sender: TObject);
  private
    vCodProduto :Integer;
    vTipoproduto : TTipoItem;
    sqlProduto : String;
    procedure LimpaCampos;
    procedure AtualizaItens(Atualizar : Boolean = False);
    function  LocalizarProduto(Barras: String; id: Integer; Tipo : TTipoItem):Boolean;
    function SomaItens: Currency;
    procedure ShowGrid(Exibir: Boolean = True);
    { Private declarations }
  public
    { Public declarations }
    Tipo : String;
    CodNota :Integer;

  end;

const
  ColunaExcluir = 7;

var
  FormCadOrdem: TFormCadOrdem;

implementation

uses uDM, uCadFornecedor, uCadProduto, uSelFonecedor,
  uSelProduto, FuncoesGerais, uSelKit, uLocalizar, uCadTransportadora,
  uLancaParcela, uSelCliente, uRelatorios, uCadEntSai, uCadCliente;

{$R *.dfm}

procedure TFormCadOrdem.actCancelarExecute(Sender: TObject);
begin
  inherited;
  if DM.cdsItemNota.State in [dsEdit,dsInsert] then
    DM.cdsItemNota.Cancel;

  if DM.cdsItemNota.UpdatesPending then
    DM.cdsItemNota.CancelUpdates;

  if DataSetInEdicao(dm.qrNotaPagamento) then
    dm.qrNotaPagamento.Cancel;
  if dm.qrNotaPagamento.UpdatesPending then
    dm.qrNotaPagamento.CancelUpdates;

  AtualizaItens();
end;

procedure TFormCadOrdem.actExcluirExecute(Sender: TObject);
begin
  inherited;
  AtualizaItens();
end;

procedure TFormCadOrdem.actGravarExecute(Sender: TObject);
var
  TotPagamento : Currency;
begin
  ActiveControl := nil;

  if dm.cdsNotanumnota.AsInteger <= 0 then
  begin
    Informa('Informe o número da nota');
    if DBEdit2.CanFocus then
      DBEdit2.SetFocus;
    Exit;
  end;

  if DM.cdsItemNota.RecordCount = 0 then
  begin
    Informa('Nenhum item informado.');
  end
  else begin
    if DM.cdsItemNota.State in [dsEdit,dsInsert] then
      DM.cdsItemNota.Post;

     DM.cdsNotatotal_itens.AsCurrency := SomaItens;

    inherited;

    if ((DM.cdsItemNotaidnota.AsInteger = 0) and (dm.cdsNotaidnota.AsInteger > 0)) or
       (DM.cdsItemNotatipo_nota.Value <> DM.cdsNotatipo_nota.Value) then
    begin
      try
        with DM do begin
          cdsItemNota.DisableControls;
          cdsItemNota.First;
          while not cdsItemNota.Eof do
          begin
            cdsItemNota.Edit;
            cdsItemNotaidnota.Value := cdsNotaidnota.AsInteger;
            cdsItemNotatipo_nota.Value := cdsNotatipo_nota.Value;
            cdsItemNota.Post;
            cdsItemNota.Next;
          end;
          cdsItemNota.First;
        end;
      finally
         DM.cdsItemNota.EnableControls;
      end;
    end;

    if dm.cdsItemNotaidnota.AsInteger = DM.cdsNotaidnota.AsInteger then
    begin
      if DM.cdsItemNota.UpdatesPending then begin
        DM.cdsItemNota.Params.ParamByName('pidnota').AsInteger := dm.cdsItemNotaidnota.AsInteger;
        DM.cdsItemNota.ApplyUpdates;
        DM.cdsItemNota.Refresh;
      end;
    end
    else begin
      Informa('Erro ao salvar os produtos, verifique e tente novamente.');

      AtualizaItens(True);
      Exit;
    end;


    if DataSetInEdicao(dm.qrNotaPagamento) then
       dm.qrNotaPagamento.Post;

    if (DM.qrNotaPagamento.Active) and (DM.qrNotaPagamento.RecordCount > 0) then
    begin
      TotPagamento := SomaColuna(DM.qrNotaPagamento, 'valor');
      if TotPagamento <> DM.cdsNotavalor_nota.AsCurrency then
      begin
        if Pergunta('Existe uma diferença do valor total com o valor informado para pagamento'+#13+
                    'Valor total: '+FormataCurrency(dm.cdsNotavalor_nota.AsCurrency)+#13+
                    'Valor informado: '+ FormataCurrency(TotPagamento) +#13+
                    'Deseja salvar os dados mesmo assim?') = id_no then
        begin
          dm.cdsNota.Edit;
          Exit;
        end;
      end;
    end;

    if (DM.qrNotaPagamento.Active) and (DM.qrNotaPagamento.RecordCount > 0) and
       (DM.qrNotaPagamentoidnota.AsInteger <> DM.cdsNotaidnota.AsInteger) then
    begin
      try
        dm.qrNotaPagamento.First;
        dm.qrNotaPagamento.DisableControls;
        while not dm.qrNotaPagamento.Eof do
        begin
          dm.qrNotaPagamento.Edit;
          dm.qrNotaPagamentoidnota.Value := dm.cdsNotaidnota.Value;
          dm.qrNotaPagamento.Post;
          dm.qrNotaPagamento.Next;
        end;
      finally
         dm.qrNotaPagamento.First;
         dm.qrNotaPagamento.EnableControls;
      end;
    end;

    if (dm.qrNotaPagamento.Active) and (dm.qrNotaPagamento.UpdatesPending) then
      dm.qrNotaPagamento.ApplyUpdates;

  end;

end;

procedure TFormCadOrdem.btnAdicionarClick(Sender: TObject);
var
  Condition : Boolean;
begin
  inherited;
  if (DM.cdsNotaIDNOTA.AsInteger <= 0) and (not (DM.cdsNota.State in [dsEdit,dsInsert])) then
  begin
    Informa('Inicie uma nova nota antes de adionar o Produto.');
    Exit;
  end;

  if (edProduto.Text = '') and (vCodProduto <= 0) then
  begin
    Informa('Informe o Produto.');
    if edProduto.CanFocus then
      edProduto.SetFocus;

  end
  else if StrToIntDef(edQtde.Text,0) <= 0 then
  begin
    Informa('Informe a quantidade de produtos');
  end
  else begin
    with DM do begin
      try
         Condition := (not cdsPesProd.Active) or (cdsPesProd.FieldByName('idproduto').AsInteger <> vCodProduto)
         or (TipoItem(cdsPesProd.FieldByName('tabela').AsString) <> vTipoproduto);
      except
        Condition := True;
      end;
      if Condition then
      begin
        cdsPesProd.Close;
        cdsPesProd.SQL.Clear;
        cdsPesProd.SQL.Add(sqlProduto);
        cdsPesProd.SQL.Add('where c.idcliente = '+IntToStr(DM.cdsNotaidcliente.AsInteger)+' and p.idproduto = '+IntToStr( vCodProduto));
        cdsPesProd.Open;
      end;

      if cdsPesProd.RecordCount > 0 then
      begin
        if Tipo = tipo_venda then //validação do estoque
        begin
          if (cdsPesProd.FieldByName('controla_estoque').AsString = 'T') and
             (cdsPesProd.FieldByName('est_atual').AsInteger < StrToInt(edQtde.Text)) then
             if Pergunta('Produto indisponível em estoque.'+#13+
                     'Deseja adicioná-lo mesmo assim?') = id_no then
             begin
               LimpaCampos;
               Exit;
             end;
        end;
        //insere o produto nos itens
        try
          cdsItemNota.Insert;
          cdsItemNotaIDITEM.Value := 0;
          cdsItemNotaIDNOTA.Value := cdsNotaIDNOTA.Value;
          cdsItemNotaIDPRODUTO.Value := cdsPesProd.FieldByName('idproduto').AsInteger;
          cdsItemNotadescprod.Value := cdsPesProd.FieldByName('descricao').AsString;
          cdsItemNotaQTDE.Value := StrToInt(edQtde.Text);
          cdsItemNotaVALOR_UNIT.AsCurrency := edValorUnit.Value;
          cdsItemNotaVALOR_TOTAL.AsCurrency := edValorTotal.Value;
          cdsItemNotatipo_nota.Value := cdsNotatipo_nota.Value;
          if cdsPesProd.FieldByName('est_atual').asInteger > 0 then
            cdsItemNotaest_atual.AsInteger := cdsPesProd.FieldByName('est_atual').asInteger -  cdsItemNotaQTDE.Value;
          cdsItemNotatamanho.AsString := cdsPesProd.FieldByName('tamanho').AsString;
          cdsItemNotaedital.AsString := edEdital.Text;
          cdsItemNota.Post;

          cdsNotatotal_itens.AsCurrency := SomaItens;

          LimpaCampos;
          edProduto.SetFocus;
        except
          Informa('Erro ao incluir o produto.');
          if cdsItemNota.State in [dsEdit,dsInsert] then
            cdsItemNota.Cancel;
        end;

      end;

    end;


  end;
end;

procedure TFormCadOrdem.btnAlterarClick(Sender: TObject);
begin
  inherited;
  if dsNavegacao.DataSet <> nil then
  begin
    dsNavegacao.DataSet.Edit;
  end;

end;

procedure TFormCadOrdem.CadastrodeProdutos1Click(Sender: TObject);
begin
  inherited;
  DBGridEhItensDblClick(Sender);
end;

procedure TFormCadOrdem.ckDinheiroClick(Sender: TObject);
var
  b : Boolean;
begin
  inherited;
  b := TCheckBox(Sender).Checked;
  if (DataSetInEdicao(DM.cdsNota, False)) then
      DM.cdsNotaforma_pg.AsVariant := Null;

  if (b) then
  begin

    if Sender <> ckDinheiro then
      ckDinheiro.Checked := False;

    if Sender <> ckDebito then
      ckDebito.Checked := False;

    if Sender <> ckCredito then
      ckCredito.Checked := false;

    if Sender <> ckPar2 then
      ckPar2.Checked := false;

      if Sender <> ckpar3 then
        ckpar3.Checked := false;

    if Sender <> ckpar4 then
        ckpar4.Checked := false;

    if Sender <> ckpar5 then
        ckpar5.Checked := false;

    if Sender <> ckpar6 then
        ckpar6.Checked := false;

    if (DataSetInEdicao(DM.cdsNota, False)) then
      DM.cdsNotaforma_pg.Value := TCheckBox(Sender).Tag;
  end;

end;

procedure TFormCadOrdem.DBGridEhItensCellClick(Column: TColumnEh);
begin
  inherited;
  if DM.cdsNota.State in [dsEdit,dsInsert] then
  begin
    if Column.Title.Caption = 'Excluir' then
    begin
      if Pergunta('Deseja realmente remover o produto selecionado?',MB_YESNO) = idYes then
        if DM.cdsItemNotaidproduto.AsInteger > 0 then
         DM.cdsItemNota.Delete;
    end;
  end;

end;

procedure TFormCadOrdem.DBGridEhItensDblClick(Sender: TObject);
begin
  inherited;
  //abre o cadastro de produtos
  try
    Application.CreateForm(TFormCadProduto,FormCadProduto);
    FormCadProduto.Permissao := RetornaPermissao(6);
    if not FormCadProduto.Permissao.Visualizar then
      AcessoNegado(Negado_visualizar)
    else begin
      if Sender = DBGridEhItens then
        FormCadProduto.CodProduto := DM.cdsItemNotaidproduto.AsInteger;
      FormCadProduto.ShowModal;

      if (not DM.cdsItemNota.UpdatesPending) and (DM.cdsItemNota.Active) then
        DM.cdsItemNota.Refresh;
    end;
  finally
    FreeAndNil(FormCadProduto);
  end;
end;

procedure TFormCadOrdem.DBGridEhItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if Column.Title.Caption = 'Excluir' then
  begin
    ImageList1.Draw(DBGridEhItens.Canvas,Rect.Left+10,Rect.Top + 2,0);
  end;

end;

procedure TFormCadOrdem.DBGridEhItensGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if Tipo = tipo_venda then
  begin
    if DM.cdsItemNotaqtde.AsInteger > DM.cdsItemNotaestoque.AsInteger then
      Background := $00C4C4FF;

  end
  else begin
    if odd(dm.cdsItemNota.RecNo) then
      Background := clWhite
    else
      Background := ColorGrid;
  end;
end;

procedure TFormCadOrdem.dbGridSelDblClick(Sender: TObject);
begin
  inherited;
  if qrSelidproduto.AsInteger > 0 then
  begin
    if LocalizarProduto('',qrSelidproduto.AsInteger,TipoItem(qrSeltabela.AsString)) then
      edQtde.SetFocus;
    ShowGrid(False);
  end
end;

procedure TFormCadOrdem.dbGridSelExit(Sender: TObject);
begin
  inherited;
  ShowGrid(False);
end;

procedure TFormCadOrdem.dbGridSelKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    dbGridSelDblClick(nil);
    key := #0;
  end;

end;

procedure TFormCadOrdem.DBLookupComboBoxFornecedorEnter(Sender: TObject);
var
  aux : String;
begin
  inherited;
  if (Sender = dblkCliente) and (DM.cdsNotaidcliente.AsInteger <= 0) then
  begin
    //Informa('Informe o cliente de compra');
    if DBLookupComboBoxFornecedor.CanFocus then
      DBLookupComboBoxFornecedor.SetFocus;
    Exit;
  end
  else begin
    EditEnter(Sender);
    DM.qrlkCliente.Filtered := False;

    if Sender = DBLookupComboBoxFornecedor then begin
      aux := 'T';
      DM.qrlkCliente.Filter := 'prefeitura = '+QuotedStr(aux);
    end
    else begin
      aux := 'F';
      DM.qrlkCliente.Filter := 'prefeitura = '+QuotedStr(aux)+' and idprefeitura = '+IntToStr(DM.cdsNotaidcliente.AsInteger);
    end;
    DM.qrlkCliente.Filtered := True;
  end;
end;

procedure TFormCadOrdem.DBLookupComboBoxFornecedorExit(Sender: TObject);
begin
  inherited;
  DM.qrlkCliente.Filtered := False;
  DM.qrlkCliente.Filter := '';
  EditExit(Sender);
end;

procedure TFormCadOrdem.DBLookupComboBoxFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  LookupClear(TDBLookupComboBox(Sender),key);
end;

procedure TFormCadOrdem.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  if DataSetInEdicao(DM.cdsNota) then
  begin
    if DBRadioGroup1.ItemIndex = 0 then
       DM.cdsNotaoperacao.Value := 'D'
    else
      DM.cdsNotaoperacao.Value := 'A';
  end;
end;

procedure TFormCadOrdem.dsItemNotaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DM.cdsItemNota.Active then
    edtotItens.Text := IntToStr(DM.cdsItemNota.RecordCount)
  else
    edtotItens.Text := '0';
end;

procedure TFormCadOrdem.dsNavegacaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if DM.cdsNotaforma_pg.AsString <> '' then
  begin
    case DM.cdsNotaforma_pg.AsInteger of
      0 : ckDinheiro.Checked := True;
      1 : ckDebito.Checked := True;
      2 : ckCredito.Checked := True;
      3 : ckPar2.Checked := True;
      4 : ckPar3.Checked := True;
      5 : ckPar4.Checked := True;
      6 : ckPar5.Checked := True;
      7 : ckPar6.Checked := True;
    end;
  end;
end;

procedure TFormCadOrdem.dsNavegacaoStateChange(Sender: TObject);
var
  edicao : Boolean;
begin
  inherited;
  if dsNavegacao.DataSet <> nil then
  begin
    edicao := dsNavegacao.State in [dsEdit,dsInsert];
    btnAlterar.Enabled := not edicao;
    Campos(self,edicao);

    btnAdicionar.Enabled := edicao;
    btnExcluirItem.Enabled := Edicao;

    DBGridEhItens.ReadOnly := not edicao;

    DBGridEhItens.Columns[ColunaExcluir].Visible := Edicao;
    DBLookupComboBox1.Enabled := False;

    btnLocProd.Enabled := edicao;
    btnKit.Enabled := edicao;
    ShowGrid(False);
  end
  else
    btnAlterar.Enabled := False;
end;

procedure TFormCadOrdem.ShowGrid(Exibir : Boolean = True);
begin
  if Exibir then
  begin
    dbGridSel.Left := edProduto.Left;
    dbGridSel.Top := edProduto.Top + edProduto.Height + 2;
    dbGridSel.Visible := True;
  end
  else
    dbGridSel.Visible := False;
end;


procedure TFormCadOrdem.edDescricaoEnter(Sender: TObject);
begin
  inherited;
  ShowGrid(False);
  EditEnter(Sender);
end;

procedure TFormCadOrdem.edEditalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    Key := #0;
    btnAdicionarClick(btnAdicionar);
  end;
end;

procedure TFormCadOrdem.edProdutoChange(Sender: TObject);
var
  auxFiltro, aux : String;
begin
  inherited;
  if (edProduto.Text <> '') and (not qrSel.Active) then
  begin
    qrSel.SQL.Clear;

    auxFiltro := 'where (c.idcliente = '+IntToStr(DM.cdsNotaidcliente.AsInteger)+') and (descricao '+
    'like _utf8 ' + QuotedStr(edProduto.Text[1] +'%')+' COLLATE utf8_unicode_ci or '+
    'codbarras = '+QuotedStr(edProduto.Text)+')' ;
    aux := sqlProduto + auxFiltro ;
    qrSel.SQL.Add(aux);
    qrSel.Open;
  end
  else if edProduto.Text = '' then
     qrSel.Close;

   if qrSel.Active then
     ShowGrid
   else
     ShowGrid(False);
   qrSel.Filtered := False;
   qrSel.Filtered := True;


end;

procedure TFormCadOrdem.edProdutoExit(Sender: TObject);
begin
  inherited;
//  ShowGrid(False);
  EditExit(Sender);
end;

procedure TFormCadOrdem.edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  NavegaRegistros(qrSel,Key);
end;

procedure TFormCadOrdem.edProdutoKeyPress(Sender: TObject; var Key: Char);
var
  Barras :String;
begin
  inherited;
  if Key = #13 then
  begin
    if trim(edProduto.Text) = '' then
      btnLocProdClick(nil)
    else begin
      if qrSelidproduto.AsInteger > 0 then
      begin
        if LocalizarProduto('',qrSelidproduto.AsInteger,TipoItem(qrSeltabela.AsString)) then
          edQtde.SetFocus;
      end
      else begin

        Barras := edProduto.Text;
        if not LocalizarProduto(edProduto.Text,0,tProd) then
        begin
          if Application.MessageBox('Produto não localizado.'+#13+'Deseja cadastrá-lo agora ?','Atenção',MB_YESNO+MB_ICONQUESTION) = id_yes then
          begin
            edProduto.Text := Barras;

            try
              Application.CreateForm(TFormCadProduto,FormCadProduto);
              FormCadProduto.Permissao := RetornaPermissao(6);
              if FormCadProduto.Permissao.Visualizar then
              begin
                FormCadProduto.Tag := 1;
                FormCadProduto.Barras := Barras;
                FormCadProduto.ShowModal;
              end
              else
                AcessoNegado(Negado_visualizar);

            finally
              FreeAndNil(FormCadProduto);
            end;

          end;
        end
        else
          edQtde.SetFocus;
      end;
    end;
    key := #0;
  end;
end;

procedure TFormCadOrdem.edValorUnitExit(Sender: TObject);
begin
  inherited;
  EditExit(SEnder);
  edValorTotal.Value := StrToIntDef(edQtde.Text,0) * edValorUnit.Value;
end;

procedure TFormCadOrdem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DM.cdsNota.Close;
  DM.cdsPesFornecedor.Close;
  DM.cdsPesFornecedor.IndexFieldNames := '';

  DM.qrfornecedor_produto.Close; //para caso de abrir o cadastro de produto atualiza os dados
  DM.cdsItemNota.Tag := 0;

  DM.qrlkCliente.Filtered := False;
  DM.qrlkCliente.Filter := '';
end;

procedure TFormCadOrdem.FormCreate(Sender: TObject);
begin
  inherited;
  sqlProduto := 'select distinct p.idproduto, p.codbarras, p.descricao, p.valor_custo, c.preco as valor_varejo, p.controla_estoque, p.est_atual,  '+
                '''tbproduto'' as tabela, p.tamanho, c.edital from tbproduto p '+
                'inner join tbcliente_preco c on c.idproduto = p.idproduto and c.idproduto = p.idproduto ';
  CodNota := 0;
end;

procedure TFormCadOrdem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (chr(key) = 'O') then
  begin
    pnPagamento.Visible := not pnPagamento.Visible;
    if pnPagamento.Visible then
      Self.Height := 700
    else
      self.Height := 700 - pnPagamento.Height;
    self.Top := 10;
  end;
end;

procedure TFormCadOrdem.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  //DBRadioGroup1.Visible := Self.Tag = 1;
  dsNavegacao.DataSet := DM.cdsNota;
  dsItemNota.DataSet  := DM.cdsItemNota;
  Tipo := tipo_venda;
  pnPagamento.Visible := DM.cdsConfigsexibir_formapg.AsString = 'T';
  if not pnPagamento.Visible then
    self.Height := Self.Height - pnPagamento.Height;

  if not dm.cdsUsuario.Active then DM.cdsUsuario.Open;
  if not DM.cdsPesFornecedor.Active then DM.cdsPesFornecedor.Open;
  DM.cdsPesFornecedor.SortedFields := 'razao';
  btnKit.Visible := LiberaKit;
  dm.cdsTransportadora.Open;
  dm.qrlkCliente.Open;
  PageControl1.ActivePage := tbsProduto;

  if (CodNota > 0) or (not DM.cdsNota.Active) then
  begin
    DM.cdsNota.Close;
    DM.cdsNota.Params.ParamByName('pidnota').Value := CodNota;
    DM.cdsNota.Open;
  end;

  LimpaCampos;
  AtualizaItens(True);

  if self.Tag = 1 then begin
    btnNovo.Click;
    if Tipo <> '' then
      dm.cdsNotatipo_nota.Value := Tipo;

  end;
end;

procedure TFormCadOrdem.LimpaCampos();
begin
  edProduto.Clear;
  edDescricao.Clear;
  edQtde.Clear;
  edValorUnit.Value := 0;
  edValorTotal.Value := 0;
  Application.ProcessMessages;
  vCodProduto := 0;
  edEdital.Clear;
end;

function TFormCadOrdem.LocalizarProduto(Barras :String; id :Integer; Tipo : TTipoItem) :Boolean;
var
  Cancelar : Boolean;
  auxValor : Currency;
begin
  LimpaCampos;
  if id > 0 then
  begin
    with DM do begin
      cdsPesProd.Close;
      cdsPesProd.SQL.Clear;
      cdsPesProd.SQL.Add(sqlProduto + ' where c.idcliente = '+IntToStr(DM.cdsNotaidcliente.AsInteger)+' and p.idproduto = '+IntToStr(id));
      cdsPesProd.Open;
    end;
  end
  else if Barras <> '' then
  begin
    with DM do begin
      cdsPesProd.Close;
      cdsPesProd.SQL.Clear;
      cdsPesProd.SQL.Add(sqlProduto);
      cdsPesProd.SQL.Add('where c.idcliente = '+IntToStr(DM.cdsNotaidcliente.AsInteger)+' and p.codbarras = '+QuotedStr(Barras));
      cdsPesProd.Open;
    end;
  end;
  Result := (DM.cdsPesProd.Active) and (DM.cdsPesProd.RecordCount > 0);
  if Result then
  begin
    Cancelar := False;
    if dm.cdsPesProd.RecordCount > 1 then
    begin
      Informa('O Sistema encontrou mais de um produto utilizando o mesmo código.'+#13+
              'Selecione na lista a seguir o produto correto.');
      try
        Application.CreateForm(TFormSelPoduto,FormSelPoduto);
        FormSelPoduto.Permissao := RetornaPermissao(6);
        FormSelPoduto.Localizando := True;
        FormSelPoduto.vIndex := 1;
        FormSelPoduto.edPesquisa.Text := Barras;
        if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
          if not DM.cdsPesProd.Locate('idproduto',FormSelPoduto.CodLocalizado,[]) then
            Cancelar := True;
      finally
        FreeAndNil(FormSelPoduto);
      end;
    end;

    if not Cancelar then
    begin
      //edProduto.Text   := DM.cdsPesProd.FieldByName('codbarras').AsString;
      vCodProduto      := DM.cdsPesProd.FieldByName('idproduto').AsInteger;
      vTipoproduto     := Tipo;
      edDescricao.Text := DM.cdsPesProd.FieldByName('descricao').AsString;
      edQtde.Text := '1';
      auxValor := DM.cdsPesProd.FieldByName('valor_varejo').AsCurrency;
      edEdital.Text := DM.cdsPesProd.FieldByName('edital').AsString;
     { if DM.cdsNotaidcliente.AsInteger > 0 then
        if getPrecoCliente(vCodProduto,DM.cdsNotaidcliente.AsInteger) then
           auxValor := DM.qrValorCliente.FieldByName('preco').AsCurrency; }
      edValorUnit.Value := auxValor;
      edProduto.Clear;
    end;
  end;

end;

procedure TFormCadOrdem.Localizarprodutos1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    if FormSelPoduto.Permissao.Visualizar then
      FormSelPoduto.ShowModal
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;
end;

procedure TFormCadOrdem.PageControl1Change(Sender: TObject);
begin
  inherited;
  AtualizaItens();
end;

procedure TFormCadOrdem.qrSelFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
  ValorFiltro : String;
begin
  inherited;
  if edProduto.Text <> '' then
  begin
    ValorFiltro := LowerCase(RemoveAcento(edProduto.Text));

    Accept := (pos(ValorFiltro,LowerCase(RemoveAcento(qrSeldescricao.AsString))) > 0) or
              (qrSelcodbarras.AsString = ValorFiltro);
  end
  else
    Accept := false;


end;

procedure TFormCadOrdem.actIncluirExecute(Sender: TObject);
begin
  inherited;
  AtualizaItens(True);
  if dbedit2.canfocus then
    dbedit2.setfocus;
  DM.cdsNotatipo_nota.Value := Tipo;
  if Tipo = tipo_venda then
  begin
    setQuery(DM.qrSQL,'select max(numnota) from tbnota where tipo_nota = '+QuotedStr(tipo_venda));
    dm.cdsNotanumnota.AsInteger := dm.qrSQL.Fields[0].AsInteger + 1;
  end

end;

procedure TFormCadOrdem.AtualizaItens(Atualizar : Boolean = False);
begin
  if (DM.cdsNotaIDNOTA.Value <> DM.cdsItemNotaIDNOTA.Value) or (not dm.cdsItemNota.Active) or (Atualizar) then
  begin
    if (PageControl1.ActivePage = tbsProduto) then
    begin
      DM.cdsItemNota.Close;
      DM.cdsItemNota.Params.ParamByName('pidnota').Value := DM.cdsNotaIDNOTA.Value;
      DM.cdsItemNota.Open;
    end;
  end;

end;

procedure TFormCadOrdem.btnLocProdClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    FormSelPoduto.Localizando := True;
    FormSelPoduto.IDCliente := DM.cdsNotaidcliente.AsInteger;
    if FormSelPoduto.Permissao.Visualizar then begin
      if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
      begin
        if LocalizarProduto('',FormSelPoduto.CodLocalizado,tProd) then
          edQtde.SetFocus
        else
          edProduto.SetFocus;

      end;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;

end;

procedure TFormCadOrdem.BitBtn1Click(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  if not DataSetInEdicao(DM.cdsNota,False) then exit;

  cod := fLocalizar(15);
  if cod > 0 then
  begin
    dm.cdsNotaidtransportadora.Value := cod;
  end;
end;

procedure TFormCadOrdem.BitBtn2Click(Sender: TObject);
begin
  inherited;
    try
      Application.CreateForm(TformCadCliente,formCadCliente);
      formCadCliente.Permissao := RetornaPermissao(3);
      formCadCliente.Tag := 1;
      if not formCadCliente.Permissao.Visualizar then
        AcessoNegado(Negado_visualizar)
      else
        formCadCliente.ShowModal;
    finally
      FreeAndNil(formCadCliente);
    end;
end;

procedure TFormCadOrdem.BitBtn3Click(Sender: TObject);
begin
  inherited;
   try
     Application.CreateForm(TFormCadTransportadora,FormCadTransportadora);
     FormCadTransportadora.Permissao := RetornaPermissao(21);
     FormCadTransportadora.Tag := 1;
     if FormCadTransportadora.Permissao.Visualizar then
       FormCadTransportadora.ShowModal
     else
       AcessoNegado(Negado_visualizar);
   finally
     FreeAndNil(FormCadTransportadora);
   end;
end;

procedure TFormCadOrdem.btnKitClick(Sender: TObject);
begin
  inherited;
   try
    Application.CreateForm(TFormSelKit,FormSelKit);
    FormSelKit.Permissao := RetornaPermissao(6);
    FormSelKit.Localizando := True;
    if FormSelKit.Permissao.Visualizar then begin
      if (FormSelKit.ShowModal = mrOK) and (FormSelKit.CodLocalizado > 0) then
      begin
        if LocalizarProduto('',FormSelKit.CodLocalizado,tKit) then
          edQtde.SetFocus
        else
          edProduto.SetFocus;

      end;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelKit);
  end;
end;

procedure TFormCadOrdem.btnPrefeituraClick(Sender: TObject);
begin
  inherited;
  if not DataSetInEdicao(dm.cdsNota) then exit;

  try
    Application.CreateForm(TFormSelCliente, FormSelCliente);
    FormSelCliente.Permissao := RetornaPermissao(3);
    FormSelCliente.Localizando := True;
    if Sender = btnPrefeitura then
      FormSelCliente.FiltroExtra := ' prefeitura = '+QuotedStr('T')
    else
      FormSelCliente.FiltroExtra := ' prefeitura = '+QuotedStr('F')+' and idprefeitura = '+IntToStr(DM.cdsNotaidcliente.AsInteger);

    if FormSelCliente.Permissao.Visualizar then
    begin
      if (FormSelCliente.ShowModal = mrOK) and
        (FormSelCliente.CodLocalizado > 0) then
      begin
        if Sender = btnPrefeitura then
          DM.cdsNotaidcliente.AsInteger := FormSelCliente.CodLocalizado
        else
          DM.cdsNotaidcliente_venda.AsInteger := FormSelCliente.CodLocalizado;
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelCliente);
  end;


end;

procedure TFormCadOrdem.btnExcluirItemClick(Sender: TObject);
begin
  inherited;
  if DM.cdsItemNotaidproduto.AsInteger > 0 then
  begin
    if Pergunta('Deseja realmente excluir o produto?'+#13+
                DM.cdsItemNotadescricao.AsString) = ID_YES then
    begin
      DataSetInEdicao(DM.cdsNota,True);
      DM.cdsItemNota.Delete;
    end;

  end;
end;

procedure TFormCadOrdem.btnDetalharClick(Sender: TObject);
begin
  inherited;

  try
    Application.CreateForm(TFormLancaParcela, FormLancaParcela);
    FormLancaParcela.edValorTotal.Value := DM.cdsNotavalor_nota.AsCurrency;
    FormLancaParcela.ShowModal;
  finally
    FreeAndNil(FormLancaParcela);
  end;

end;

procedure TFormCadOrdem.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if dm.cdsNotaidnota.AsInteger > 0 then
    FormRelatorios.ImprimeNota(DM.cdsNotaidnota.AsInteger,True,'V');
end;

function TFormCadOrdem.SomaItens : Currency;
var
  Total : Currency;
begin
  with DM do begin
    try
      cdsItemNota.DisableControls;
      cdsItemNota.First;
      Total := 0;
      while not cdsItemNota.Eof do
      begin
         Total := Total + (cdsItemNotavalor_unit.AsCurrency * cdsItemNotaqtde.AsInteger);

        cdsItemNota.Next;
      end;
    finally
      cdsItemNota.First;
      cdsItemNota.EnableControls;
      Result := Total;
    end;
  end;
end;

end.
