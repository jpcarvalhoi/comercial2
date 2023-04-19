unit uCadKit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, DBGridEhGrouping, GridsEh, DBGridEh, rxToolEdit,
  rxCurrEdit, sSkinProvider;

type
  TProduto = record
    IDProduto : Integer;
    Descricao,
    CodBarras : String;
    Preco,
    Preco_custo     : Currency;
    Est_Atual : Integer;
  end;

type
  TFormCadKit = class(TfrmClone)
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
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    edProduto: TLabeledEdit;
    edQuantidade: TLabeledEdit;
    btnCliente: TBitBtn;
    dsKitProduto: TDataSource;
    Panel3: TPanel;
    edTotalKit: TCurrencyEdit;
    edCustoKit: TCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    actLocProd: TAction;
    lbStatus: TLabel;
    sSkinProvider1: TsSkinProvider;
    edKitCompleto: TLabeledEdit;
    procedure actGravarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure actLocProdExecute(Sender: TObject);
    procedure edProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure sSkinProvider1SkinItem(Item: TComponent;
      var CanBeAdded: Boolean; var SkinSection: string);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
    vProd : TProduto;
    procedure CalculaTotais;
    procedure LoadProdutos(Atualizar: boolean = False);
  public
    { Public declarations }
    CodKit : Integer;

  end;

var
  FormCadKit: TFormCadKit;

implementation

uses uDM, FuncoesGlobais, uSelProduto, uCadProduto, FuncoesGerais;

{$R *.dfm}

procedure TFormCadKit.actCancelarExecute(Sender: TObject);
begin
  inherited;
  LoadProdutos(True);
end;

procedure TFormCadKit.actExcluirExecute(Sender: TObject);
begin
  inherited;
  LoadProdutos(True);
end;

procedure TFormCadKit.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;

  if DM.cdsKitProduto.State in [dsEdit,dsInsert] then
  begin
    DM.cdsKitProduto.Post;
  end;

  CalculaTotais; //atualiza os totais
  DM.cdsCadKitvalor_custo.AsCurrency := edCustoKit.Value;

  with DM do begin
    if cdsCadKitvalor_varejo.AsCurrency <= 0 then
      DM.cdsCadKitvalor_varejo.AsCurrency := edTotalKit.Value;

    if cdsCadKitvalor_varejo.AsCurrency <> edTotalKit.Value then
    begin
      if Pergunta('Foi verificado uma diferença no valor total dos produtos e o valor informado para o Kit.'+#13 +
                  'Valor total dos produtos: '+FormataCurrency(edTotalKit.Value)+#13+
                  'Valor informado: '+FormataCurrency(cdsCadKitvalor_varejo.asCurrency)+#13+
                  'Deseja atualizar este valor?',MB_YESNO+MB_ICONQUESTION) = id_yes then
         cdsCadKitvalor_varejo.AsCurrency := edTotalKit.Value;
    end;

   { if cdsCadKitcodbarras.AsString = '' then
    begin
      Informa('Código de Barras não informado.');
      if DBEdit8.CanFocus then
        DBEdit8.SetFocus;
    end
    else }if cdsCadKitdescricao.AsString = '' then
      begin
        Informa('Informe a descrição do Kit de Produtos.');
        if DBEdit2.CanFocus then
          DBEdit2.SetFocus;
      end
    else if (cdsCadKitvalor_varejo.AsCurrency <= 0) then
    begin
      Informa('Informe o valor de venda do Kit de Produtos.');
      if DBEdit4.CanFocus then
        dbedit4.SetFocus;
    end
    else begin
      if (DM.cdsCadKit.State in [dsInsert]) or (DM.cdsCadKitcodbarras.AsString <> VarToStr(DM.cdsCadKitcodbarras.OldValue)) then
        if DM.ChecaBarras(DM.cdsCadKitcodbarras.AsString, DM.cdsCadKitidkit.AsInteger, 'K') then
          Exit;

      try
         DM.ZConnection.StartTransaction;

         if cdsCadKit.State in [dsEdit,dsInsert] then
           cdsCadKit.Post;
         if cdsCadKit.UpdatesPending  then
           cdsCadKit.ApplyUpdates;

         if cdsCadKitidkit.AsInteger <> cdsKitProdutoidkit.AsInteger then
           CalculaTotais; //atualiza o código do kit nos itens;

         if cdsKitProduto.UpdatesPending then
           cdsKitProduto.ApplyUpdates;

         DM.ZConnection.Commit;
      except
        DM.ZConnection.Rollback;
         Informa('Erro ao salvar dados.');
      end;
      //inherited;
    end;

  end;


end;

procedure TFormCadKit.CalculaTotais;
var
  Total_Custo, Total_kit : Currency;
  NumCompleto, aux : Integer;
begin
  with DM do begin
      Total_Custo := 0;
      Total_kit  := 0;
      NumCompleto := -1;
    try
      cdsKitProduto.DisableControls;
      cdsKitProduto.First;
      while not cdsKitProduto.Eof do
      begin
        Total_Custo := Total_Custo + (cdsKitProdutovalor_custo.AsCurrency * cdsKitProdutoqtde.AsInteger);
        Total_kit  := Total_kit  + (cdsKitProdutovalor_varejo.AsCurrency * cdsKitProdutoqtde.AsInteger);

        if (cdsKitProdutoidkit.AsInteger <> cdsCadKitidkit.AsInteger) and
           (cdsCadKitidkit.AsInteger > 0) then
        begin
          cdsKitProduto.Edit;
          cdsKitProdutoidkit.Value := cdsCadKitidkit.AsInteger;
          cdsKitProduto.Post;
        end;

        //total de kit disponivel
        if cdsKitProdutoest_atual.AsInteger > cdsKitProdutoqtde.AsInteger then
        begin
          aux := cdsKitProdutoest_atual.AsInteger div cdsKitProdutoqtde.AsInteger;
          if (NumCompleto = -1) or (aux < NumCompleto) then
            NumCompleto := Aux;
        end
        else
          NumCompleto := 0;

        cdsKitProduto.Next;
      end;
    finally
      edTotalKit.Value := Total_kit ;
      edCustoKit.Value := Total_Custo;
      if NumCompleto > 0 then
        edKitCompleto.Text := IntToStr(NumCompleto)
      else
        edKitCompleto.Text := '0';

      lbStatus.Visible := cdsKitProduto.Locate('completo',False,[]);

      cdsKitProduto.EnableControls;
    end;
  end;
end;

procedure TFormCadKit.DBGridEh1DblClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormCadProduto,FormCadProduto);
    FormCadProduto.Permissao := self.Permissao;
    FormCadProduto.CodProduto := DM.cdsKitProdutoidproduto.AsInteger;
    FormCadProduto.ShowModal;
  finally
    FreeAndNil(FormCadProduto);
  end;
end;

procedure TFormCadKit.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if not DM.cdsKitProdutoCompleto.Value then
    AFont.Color := clRed;

end;

procedure TFormCadKit.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  try
    if LowerCase(DBGridEh1.Columns[DBGridEh1.Col-1].FieldName) = 'qtde' then
    begin
      if not (DM.cdsCadKit.State in [dsEdit,dsInsert]) then
        DM.cdsCadKit.Edit;
    end;
  except
  end;

end;

procedure TFormCadKit.edProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    actLocProdExecute(nil);
    key := #0;
  end;
end;

procedure TFormCadKit.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  EditEnter(Sender);
  if key = #13 then
   btnAdicionar.Click ;

end;

procedure TFormCadKit.actIncluirExecute(Sender: TObject);
begin
  inherited;
  DBEdit8.SetFocus;
  LoadProdutos();
end;

procedure TFormCadKit.actLocalizarExecute(Sender: TObject);
var
  Cod : Integer;
begin
  inherited;
  cod := fLocalizar(5);
  if cod > 0 then
  begin
    DM.cdsCadKit.Close;
    DM.cdsCadKit.Params.ParamByName('pidkit').Value := Cod;
    DM.cdsCadKit.Open;
  end;

end;

procedure TFormCadKit.actLocProdExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    FormSelPoduto.Localizando := True;
    if FormSelPoduto.Permissao.Visualizar then begin
      if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
      begin
         if edQuantidade.CanFocus then
           edQuantidade.SetFocus;
        with FormSelPoduto do begin
          vProd.Descricao := cdsPesquisadescricao.AsString;
          vProd.IDProduto := cdsPesquisaidproduto.Value;
          vProd.Preco     := cdsPesquisavalor_varejo.AsCurrency;
          vProd.Preco_custo := cdsPesquisavalor_custo.ascurrency;
          vProd.CodBarras := cdsPesquisacodbarras.Value;
          vProd.Est_Atual := cdsPesquisaest_atual.AsInteger;
        end;
        edProduto.Text := vProd.Descricao;

      end
      else
          edProduto.SetFocus;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;

end;

procedure TFormCadKit.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if edProduto.Text = '' then
  begin
    Informa('Selecione o produto.');
    Exit;
  end;

  if StrToIntDef(edQuantidade.Text,0) <= 0 then
  begin
    Informa('Informe a quantidade.');
    edQuantidade.SetFocus;
    Exit;
  end;

  if (DM.cdsCadKitidkit.AsInteger <= 0) and (not (DM.cdsCadKit.State in [dsInsert])) then Exit;

  if (DM.cdsKitProduto.Locate('idproduto',vProd.IDProduto,[])) then
  begin
    Informa('Produto já adicionado, altere apenas a quantidade.');
    Exit;
  end;

  if vProd.Descricao <> '' then
  begin
     with DM do begin
       cdsKitProduto.Insert;
       cdsKitProdutoidkit.Value := DM.cdsCadKitidkit.AsInteger;
       cdsKitProdutoidproduto.Value := vProd.IDProduto;
       cdsKitProdutocodbarras.Value := vProd.CodBarras;
       cdsKitProdutovalor_varejo.Value := vProd.Preco;
       cdsKitProdutovalor_custo.Value := vProd.Preco_custo;
       cdsKitProdutodescricao.Value := vProd.Descricao;
       cdsKitProdutoqtde.Value := StrToInt(edQuantidade.Text);
       cdsKitProdutoest_atual.Value := vProd.Est_Atual;
       cdsKitProduto.Post;

       CalculaTotais;

       if not (DM.cdsCadKit.State in [dsEdit,dsInsert]) then
        DM.cdsCadKit.Edit;
     end;
     vProd.Descricao := '';
     edProduto.Clear;
     edProduto.SetFocus;
     edQuantidade.Text := '1';
  end;
end;

procedure TFormCadKit.btnRemoverClick(Sender: TObject);
begin
  inherited;
  if DM.cdsKitProdutoidproduto.AsInteger > 0 then
    if Pergunta('Deseja realmente remover o produto selecionado do Kit?') = ID_YES then
    begin
      DM.cdsKitProduto.Delete;
      if not (DM.cdsCadKit.State in [dsEdit,dsInsert]) then
        DM.cdsCadKit.Edit;
    end;
end;

procedure TFormCadKit.LoadProdutos(Atualizar : boolean = False);
begin
  with DM do begin
    if (cdsKitProdutoidkit.AsInteger <> cdsCadKitidkit.AsInteger) or (Atualizar) then
    begin
      cdsKitProduto.Close;
      cdsKitProduto.Params.ParamByName('pidkit').Value := cdsCadKitidkit.AsInteger;
      cdsKitProduto.Open;

      CalculaTotais;
    end;
  end;
end;

procedure TFormCadKit.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  inherited;
  if Item.Tag = 1 then
    CanBeAdded := False;
end;

procedure TFormCadKit.FormCreate(Sender: TObject);
begin
  inherited;
  CodKit := 0;
  FNomeCadastro := 'Kit de produtos';
end;

procedure TFormCadKit.FormShow(Sender: TObject);
begin
  inherited;
  dsNavegacao.DataSet := dm.cdsCadKit;

  if (CodKit > 0) and ((DM.cdsCadKitidkit.AsInteger <> CodKit) or (not DM.cdsCadKit.Active))  then
  begin
    DM.cdsCadKit.Close;
    DM.cdsCadKit.Params.ParamByName('pidkit').AsInteger := CodKit;
  end;
  DM.cdsCadKit.Open;

  if self.Tag = 1 then
    actIncluirExecute(nil);

  LoadProdutos(True);
end;

end.
