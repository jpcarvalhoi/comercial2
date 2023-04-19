unit uCadEntSai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  DBGridEhGrouping, GridsEh, DBGridEh, DBCtrls, Mask, rxToolEdit, rxCurrEdit,
  ImgList, RxDBComb, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  FuncoesGlobais, RXDBCtrl, Grids, DBGrids;

type
  TFormCadEntSai = class(TfrmClone)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    lbFornecedor: TLabel;
    DBLookupComboBoxFornecedor: TDBLookupComboBox;
    dsItemNota: TDataSource;
    dsFornecedor: TDataSource;
    dsUsuario: TDataSource;
    btnAlterar: TBitBtn;
    ImageList1: TImageList;
    RxDBComboBoxTipo: TRxDBComboBox;
    Label16: TLabel;
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
    BitBtn4: TBitBtn;
    PageControl1: TPageControl;
    tbsProduto: TTabSheet;
    tbsPagamento: TTabSheet;
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
    Panel2: TPanel;
    Label4: TLabel;
    Label15: TLabel;
    eddbValortotal: TDBEdit;
    edtotItens: TLabeledEdit;
    DBEdit7: TDBEdit;
    dbGridSel: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBLookupComboBox3: TDBLookupComboBox;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit1VFrete: TDBEdit;
    Label22: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEditICMS: TDBEdit;
    Label23: TLabel;
    DBEditIPI: TDBEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBComboBox1: TDBComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    dsTransportadora: TDataSource;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBGridEhPagamento: TDBGridEh;
    dsPagamento: TDataSource;
    DBMemoObs: TDBMemo;
    btnDetalhar: TBitBtn;
    dsCliente: TDataSource;
    DBLookupComboBoxCliente: TDBLookupComboBox;
    btnImprimir: TBitBtn;
    btnExcluirItem: TBitBtn;
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
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edValorUnitKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboBoxTipoChange(Sender: TObject);
    procedure dsNavegacaoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
  private
    vCodProduto :Integer;
    vTipoproduto : TTipoItem;
    sqlProduto, sqlKit : String;
    procedure LimpaCampos;
    procedure AtualizaItens(Atualizar : Boolean = False);
    function  LocalizarProduto(Barras: String; id: Integer; Tipo : TTipoItem):Boolean;
    function SomaItens: Currency;
    procedure ShowGrid(Exibir: Boolean = True);
    { Private declarations }
  public
    { Public declarations }
    CodNota :Integer;
    Tipo : String;
  end;

var
  FormCadEntSai: TFormCadEntSai;

implementation

uses uDM, uCadFornecedor, uCadProduto, uSelFonecedor,
  uSelProduto, FuncoesGerais, uSelKit, uLocalizar, uCadTransportadora,
  uLancaParcela, uSelCliente, uRelatorios;

{$R *.dfm}

procedure TFormCadEntSai.actCancelarExecute(Sender: TObject);
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

procedure TFormCadEntSai.actExcluirExecute(Sender: TObject);
begin
  inherited;
  AtualizaItens();
end;

procedure TFormCadEntSai.actGravarExecute(Sender: TObject);
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
      if DM.cdsItemNota.UpdatesPending then
        DM.cdsItemNota.ApplyUpdates;
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

procedure TFormCadEntSai.btnAdicionarClick(Sender: TObject);
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
        if vTipoproduto = tKit then
        begin
          cdsPesProd.SQL.Add(sqlKit);
          cdsPesProd.SQL.Add('where idkit = '+IntToStr( vCodProduto));
        end
        else begin
          cdsPesProd.SQL.Add(sqlProduto);
          cdsPesProd.SQL.Add('where idproduto = '+IntToStr( vCodProduto));
        end;

        cdsPesProd.Open;
      end;

      if cdsPesProd.RecordCount > 0 then
      begin
        //verifica alteração no valor de custo do produto
        if (cdsConfigsatualizar_valor_compra_produto.AsString = sTrue) and (Tipo = tipo_estoque) then
        begin
          if cdsPesProd.FieldByName('valor_custo').AsCurrency <> edValorUnit.Value then
          begin
            if Pergunta('O sistema verificou uma alteração no valor de custo do Produto/Kit.'+#13+
                        'Valor de custo atual: '+FormataCurrency(cdsPesProd.FieldByName('valor_custo').AsCurrency)+#13+
                        'Novo valor: '+FormataCurrency(edValorUnit.Value)+#13+
                        'Deseja efetuar a atualização no cadastro de produto agora?',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = ID_YES then
            begin
              try
                qrSQL.Close;
                qrSQL.SQL.Clear;
                if vTipoproduto = tProd then
                  qrSQL.SQL.Add('update tbproduto set valor_custo = '+FloatToStrSql(edValorUnit.Value)+' where idproduto = '+IntToStr(vCodProduto))
                else
                  qrSQL.SQL.Add('update tbkit set valor_custo = '+FloatToStrSql(edValorUnit.Value)+' where idkit = '+IntToStr(vCodProduto));

                qrSQL.ExecSQL;
                if qrSQL.RowsAffected > 0 then
                  Informa('Atualizado com sucesso!');
              except
                Informa('Erro ao atualizar.');
              end;

            end;

          end;

        end;

        if Tipo = tipo_orcamento then //validação do estoque
        begin
          if vTipoproduto <> tKit then
          begin
            if (cdsPesProd.FieldByName('controla_estoque').AsString = 'T') and
               (cdsPesProd.FieldByName('est_atual').AsInteger < StrToInt(edQtde.Text)) then
               if Pergunta('Produto indisponível em estoque.'+#13+
                       'Deseja adicioná-lo mesmo assim?') = id_no then
               begin
                 LimpaCampos;
                 Exit;
               end;
          end
          else begin
            if (GetEstoqueKit(cdsPesProd.FieldByName('idproduto').AsInteger) < StrToInt(edQtde.Text)) then
               if Pergunta('Produto indisponível em estoque.'+#13+
                       'Deseja adicioná-lo mesmo assim?') = id_no then
               begin
                 LimpaCampos;
                 Exit;
               end;
          end;
        end;


        //insere o produto nos itens
        try
          cdsItemNota.Insert;
          cdsItemNotaIDITEM.Value := 0;
          cdsItemNotaIDNOTA.Value := cdsNotaIDNOTA.Value;
          if vTipoproduto = tProd then
          begin
            cdsItemNotaIDPRODUTO.Value := cdsPesProd.FieldByName('idproduto').AsInteger;
            cdsItemNotadescprod.Value := cdsPesProd.FieldByName('descricao').AsString;
          end
          else begin
            cdsItemNotaidkit.Value := cdsPesProd.FieldByName('idproduto').AsInteger;
            cdsItemNotadesckit.Value := cdsPesProd.FieldByName('descricao').AsString;
          end;

          cdsItemNotaQTDE.Value := StrToInt(edQtde.Text);
          cdsItemNotaVALOR_UNIT.AsCurrency := edValorUnit.Value;
          cdsItemNotaVALOR_TOTAL.AsCurrency := edValorTotal.Value;
          cdsItemNotatipo_nota.Value := cdsNotatipo_nota.Value;
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

procedure TFormCadEntSai.btnAlterarClick(Sender: TObject);
begin
  inherited;
  if dsNavegacao.DataSet <> nil then
  begin
    dsNavegacao.DataSet.Edit;
  end;

end;

procedure TFormCadEntSai.CadastrodeProdutos1Click(Sender: TObject);
begin
  inherited;
  DBGridEhItensDblClick(Sender);
end;

procedure TFormCadEntSai.DBGridEhItensCellClick(Column: TColumnEh);
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

procedure TFormCadEntSai.DBGridEhItensDblClick(Sender: TObject);
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
    end;
  finally
    FreeAndNil(FormCadProduto);
  end;
end;

procedure TFormCadEntSai.DBGridEhItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if Column.Title.Caption = 'Excluir' then
  begin
    ImageList1.Draw(DBGridEhItens.Canvas,Rect.Left+10,Rect.Top + 2,0);
  end;

end;

procedure TFormCadEntSai.DBGridEhItensGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if Tipo = tipo_orcamento then
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

procedure TFormCadEntSai.DBLookupComboBoxFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  LookupClear(TDBLookupComboBox(Sender),key);
end;

procedure TFormCadEntSai.dsItemNotaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DM.cdsItemNota.Active then
    edtotItens.Text := IntToStr(DM.cdsItemNota.RecordCount)
  else
    edtotItens.Text := '0';
end;

procedure TFormCadEntSai.dsNavegacaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if RxDBComboBoxTipo.Text <> '' then
    RxDBComboBoxTipoChange(nil);
end;

procedure TFormCadEntSai.dsNavegacaoStateChange(Sender: TObject);
var
  edicao : Boolean;
begin
  inherited;
  if dsNavegacao.DataSet <> nil then
  begin
    edicao := dsNavegacao.State in [dsEdit,dsInsert];
    btnAlterar.Enabled := not edicao;
    Campos(FormCadEntSai,edicao);

    btnAdicionar.Enabled := edicao;
    btnExcluirItem.Enabled := Edicao;

    DBGridEhItens.ReadOnly := not edicao;
    DBGridEhPagamento.ReadOnly := not edicao;
    btnDetalhar.Enabled := edicao;

    DBGridEhItens.Columns[6].Visible := Edicao;

    RxDBComboBoxTipo.Enabled :=  False;// edicao and (dm.cdsNotatipo_nota.AsString <> 'E');
    btnLocProd.Enabled := edicao;
    btnKit.Enabled := edicao;
    DBLookupComboBox1.Enabled := False;
  end
  else
    btnAlterar.Enabled := False;
end;

procedure TFormCadEntSai.ShowGrid(Exibir : Boolean = True);
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


procedure TFormCadEntSai.edProdutoChange(Sender: TObject);
var
  auxFiltro, aux : String;
begin
  inherited;
  if (edProduto.Text <> '') and (not qrSel.Active) then
  begin
    qrSel.SQL.Clear;

    auxFiltro := 'where descricao '+
    'like _utf8 ' + QuotedStr(edProduto.Text[1] +'%')+' COLLATE utf8_unicode_ci or '+
    'codbarras = '+QuotedStr(edProduto.Text) ;
    aux := sqlProduto + auxFiltro + ' union '+ sqlKit + auxFiltro;
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

procedure TFormCadEntSai.edProdutoExit(Sender: TObject);
begin
  inherited;
  ShowGrid(False);
  EditExit(Sender);
end;

procedure TFormCadEntSai.edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  NavegaRegistros(qrSel,Key);
end;

procedure TFormCadEntSai.edProdutoKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormCadEntSai.edValorUnitExit(Sender: TObject);
begin
  inherited;
  EditExit(SEnder);
  edValorTotal.Value := StrToIntDef(edQtde.Text,0) * edValorUnit.Value;
end;

procedure TFormCadEntSai.edValorUnitKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btnAdicionar.SetFocus;
end;

procedure TFormCadEntSai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DM.cdsNota.Close;
  DM.cdsPesFornecedor.Close;
  DM.cdsPesFornecedor.IndexFieldNames := '';

  DM.qrfornecedor_produto.Close; //para caso de abrir o cadastro de produto atualiza os dados
  DM.cdsItemNota.Tag := 0;
end;

procedure TFormCadEntSai.FormCreate(Sender: TObject);
begin
  inherited;
  sqlProduto := 'select idproduto, codbarras, descricao, valor_custo, valor_varejo, '+
    'controla_estoque, est_atual, '+QuotedStr('tbproduto') +' as tabela from tbproduto ';


  sqlKit := 'select idkit as idproduto, codbarras, descricao,valor_custo, valor_varejo, '+
    QuotedStr('T')+' as controla_estoque, null as est_atual, '+QuotedStr('tbkit') +' as tabela from tbkit ';

  CodNota := 0;
end;

procedure TFormCadEntSai.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  dsNavegacao.DataSet := DM.cdsNota;
  dsItemNota.DataSet  := DM.cdsItemNota;

  if not dm.cdsUsuario.Active then DM.cdsUsuario.Open;
  if not DM.cdsPesFornecedor.Active then DM.cdsPesFornecedor.Open;
  DM.cdsPesFornecedor.SortedFields := 'razao';
  btnKit.Visible := LiberaKit;
  dm.cdsTransportadora.Open;
  dm.qrlkCliente.Open;
  PageControl1.ActivePage := tbsProduto;
  if Tipo = tipo_estoque then begin
    tbsPagamento.TabVisible := False;
    self.Caption := 'Cadastro de Produtos em Estoque';
  end
  else if Tipo = tipo_orcamento then
  begin
    lbFornecedor.Caption := 'Cliente';
    DBLookupComboBoxFornecedor.Visible := False;
    DBLookupComboBoxCliente.Visible := True;
    DBLookupComboBoxCliente.Left := DBLookupComboBoxFornecedor.Left;
    DBLookupComboBoxCliente.Top := DBLookupComboBoxFornecedor.Top;
    DBLookupComboBoxCliente.Width := DBLookupComboBoxFornecedor.Width;
    self.Caption := 'Cadastro de Orçamento / Pedido de Compra';
    btnImprimir.Visible := True;
  end
  else if tipo = tipo_pedido then
  begin
    self.Caption := 'Cadastro de Ordens de Compra';
    for i := 0 to dbGridSel.Columns.Count - 1 do
      if LowerCase(dbGridSel.Columns[i].FieldName) = 'valor_varejo' then
      begin
        dbGridSel.Columns[i].FieldName := 'valor_custo';
        dbGridSel.Columns[i].Title.Caption := 'V. Custo';
      end;

  end;
  DBGridEhItens.Columns[5].Visible := Tipo = tipo_orcamento;
  if Tipo = tipo_orcamento then
    DM.cdsItemNota.Tag := 1
  else
    DM.cdsItemNota.Tag := 0;

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

procedure TFormCadEntSai.LimpaCampos();
begin
  edProduto.Clear;
  edDescricao.Clear;
  edQtde.Clear;
  edValorUnit.Value := 0;
  edValorTotal.Value := 0;
  Application.ProcessMessages;
  vCodProduto := 0;
end;

function TFormCadEntSai.LocalizarProduto(Barras :String; id :Integer; Tipo : TTipoItem) :Boolean;
var
  Cancelar : Boolean;
begin
  LimpaCampos;
  if id > 0 then
  begin
    with DM do begin
      cdsPesProd.Close;
      cdsPesProd.SQL.Clear;
      if Tipo = tProd then
        cdsPesProd.SQL.Add(sqlProduto + ' where idproduto = '+IntToStr(id))
      else
        cdsPesProd.SQL.Add(sqlKit + ' where idkit = '+IntToStr(id));
      cdsPesProd.Open;
    end;
  end
  else if Barras <> '' then
  begin
    with DM do begin
      cdsPesProd.Close;
      cdsPesProd.SQL.Clear;
      if tipo = tProd then
         cdsPesProd.SQL.Add(sqlProduto)
      else
        cdsPesProd.SQL.Add(sqlKit);
      cdsPesProd.SQL.Add('where codbarras = '+QuotedStr(Barras));
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
      if self.Tipo = tipo_orcamento then
        edValorUnit.Value := DM.cdsPesProd.FieldByName('valor_varejo').AsCurrency
      else
        edValorUnit.Value := DM.cdsPesProd.FieldByName('valor_custo').AsCurrency;
      edProduto.Clear;
    end;
  end;

end;

procedure TFormCadEntSai.Localizarprodutos1Click(Sender: TObject);
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

procedure TFormCadEntSai.PageControl1Change(Sender: TObject);
begin
  inherited;
  AtualizaItens();
end;

procedure TFormCadEntSai.qrSelFilterRecord(DataSet: TDataSet; var Accept: Boolean);
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

procedure TFormCadEntSai.RxDBComboBoxTipoChange(Sender: TObject);
begin
  inherited;
  if Tipo = tipo_pedido then
  begin
    Label3.Caption := 'Previsão de entrega';
    Label2.Caption := 'Nº Ordem';
  end
  else if Tipo = tipo_estoque then begin
    Label3.Caption := 'Dt. Nota';
    Label2.Caption := 'Nº Nota';
  end
  else if tipo = tipo_orcamento then
  begin
    Label2.Caption := 'Nº Orçamento';
    Label3.Caption := 'Validade';
  end;



end;

procedure TFormCadEntSai.actIncluirExecute(Sender: TObject);
begin
  inherited;
  AtualizaItens(True);
  if dbedit2.canfocus then
    dbedit2.setfocus;
  DM.cdsNotatipo_nota.Value := Tipo;
  if Tipo = tipo_pedido then
  begin
    setQuery(DM.qrSQL,'select max(numnota) from tbnota where tipo_nota = '+QuotedStr(tipo_pedido));
    dm.cdsNotanumnota.AsInteger := dm.qrSQL.Fields[0].AsInteger + 1;
  end
  else if Tipo = tipo_orcamento then begin
     setQuery(DM.qrSQL,'select max(numnota) from tbnota where tipo_nota = '+QuotedStr(tipo_orcamento));
    dm.cdsNotanumnota.AsInteger := dm.qrSQL.Fields[0].AsInteger + 1;
  end;
end;

procedure TFormCadEntSai.AtualizaItens(Atualizar : Boolean = False);
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

  if (DM.cdsNotaIDNOTA.Value <> DM.cdsItemNotaIDNOTA.Value) or (not dm.qrNotaPagamento.Active) or (Atualizar) then
    if (PageControl1.ActivePage = tbsPagamento) then
    begin
      DM.qrNotaPagamento.Close;
      DM.qrNotaPagamento.Params.ParamByName('pidnota').Value := DM.cdsNotaIDNOTA.Value;
      DM.qrNotaPagamento.Open;
    end;

end;

procedure TFormCadEntSai.btnLocProdClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    FormSelPoduto.Localizando := True;
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

procedure TFormCadEntSai.BitBtn1Click(Sender: TObject);
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

procedure TFormCadEntSai.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelFornecedor,FormSelFornecedor);
    FormSelFornecedor.Permissao := RetornaPermissao(4);
    if FormSelFornecedor.Permissao.Visualizar then begin
      FormSelFornecedor.ShowModal;
      if DM.cdsFornecedoridfornecedor.AsInteger > 0 then
        if DM.cdsNota.State in [dsEdit,dsInsert] then
          DM.cdsNotaidfornecedor.Value := DM.cdsFornecedoridfornecedor.Value;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelFornecedor);
  end;
end;

procedure TFormCadEntSai.BitBtn3Click(Sender: TObject);
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

procedure TFormCadEntSai.btnKitClick(Sender: TObject);
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

procedure TFormCadEntSai.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if not DataSetInEdicao(dm.cdsNota) then exit;

  if tipo = tipo_orcamento then
  begin
    try
      Application.CreateForm(TFormSelCliente, FormSelCliente);
      FormSelCliente.Permissao := RetornaPermissao(3);
      FormSelCliente.Localizando := True;
      if FormSelCliente.Permissao.Visualizar then
      begin
        if (FormSelCliente.ShowModal = mrOK) and
          (FormSelCliente.CodLocalizado > 0) then
        begin
          DM.cdsNotaidcliente.Value := FormSelCliente.CodLocalizado;
        end;
      end
      else
        AcessoNegado(Negado_visualizar);
    finally
      FreeAndNil(FormSelCliente);
    end;
  end
  else begin
    try
      Application.CreateForm(TFormSelFornecedor,FormSelFornecedor);
      FormSelFornecedor.Permissao := RetornaPermissao(4);
      FormSelFornecedor.Localizando := True;
      if FormSelFornecedor.Permissao.Visualizar then begin
        if (FormSelFornecedor.ShowModal = mrOK) and (FormSelFornecedor.CodLocalizado > 0) then
        begin
          DM.cdsNotaidfornecedor.Value := FormSelFornecedor.CodLocalizado;

        end;

      end
      else
        AcessoNegado(Negado_visualizar);
    finally
      FreeAndNil(FormSelFornecedor);
    end;
  end;
end;

procedure TFormCadEntSai.btnExcluirItemClick(Sender: TObject);
begin
  inherited;
  if DM.cdsItemNotaiditem.AsInteger > 0 then
  begin
    if Pergunta('Deseja realmente excluir o produto?'+#13+
                DM.cdsItemNotadescricao.AsString) = ID_YES then
    begin
      DataSetInEdicao(DM.cdsNota,True);
      DM.cdsItemNota.Delete;
    end;

  end;
end;

procedure TFormCadEntSai.btnDetalharClick(Sender: TObject);
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

procedure TFormCadEntSai.btnImprimirClick(Sender: TObject);
begin
  inherited;
  FormRelatorios.ImprimeNota(DM.cdsNotaidnota.AsInteger);
end;

function TFormCadEntSai.SomaItens : Currency;
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
