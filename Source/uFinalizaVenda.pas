unit uFinalizaVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, rxToolEdit, rxCurrEdit, StdCtrls, Mask,
  DBCtrls, ComCtrls, Buttons, ExtCtrls, ActnList, DB, sSkinProvider,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBClient,
  DBGridEhGrouping, GridsEh, DBGridEh, Spin, DateUtils, uVenda, FuncoesGlobais;

type
  TTotalPagamento = record
    TotalDinheiro,
    TotalCartao_Cre,
    TotalCartao_Deb,
    TotalCheque,
    TotalPrazo,
    TotalDeposito,
    TotalTransferencia : Currency;
  end;

type
  TFormFinalizaVenda = class(TFormClone_TelaPadrao)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnConfirmar: TBitBtn;
    actConfirmar: TAction;
    dsvenda: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label4: TLabel;
    edTotalVenda: TDBEdit;
    Panel5: TPanel;
    cbPagamento: TComboBox;
    Label1: TLabel;
    edDesconto: TDBEdit;
    Label2: TLabel;
    edtotalPagar: TDBEdit;
    pgPagamento: TPageControl;
    tbsDinheiro: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    edDinheiro: TCurrencyEdit;
    Label5: TLabel;
    edTroco: TCurrencyEdit;
    btnDesconto: TBitBtn;
    sSkinProvider1: TsSkinProvider;
    memConta: TClientDataSet;
    dsMemConta: TDataSource;
    memContadata_vencimento: TDateField;
    memContadata_pagamento: TDateField;
    memContavalor: TCurrencyField;
    memContaforma_pagamento: TStringField;
    memContaparcela: TStringField;
    Label6: TLabel;
    edEntrada: TCurrencyEdit;
    SpinEditParcelas: TSpinEdit;
    Label7: TLabel;
    btnGerarPrazo: TBitBtn;
    DateEditVencimento: TDateEdit;
    Label9: TLabel;
    Label10: TLabel;
    SpinEditPeriodo: TSpinEdit;
    BitBtn4: TBitBtn;
    memContaid: TIntegerField;
    Label11: TLabel;
    Label12: TLabel;
    DBLookupComboBoxCartao: TDBLookupComboBox;
    cbTipo: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    SpinEditParCart: TSpinEdit;
    Label16: TLabel;
    DateEditVencimentoCart: TDateEdit;
    Label17: TLabel;
    SpinEditPer2: TSpinEdit;
    btnGerarCartao: TBitBtn;
    BitBtn6: TBitBtn;
    DBGridEh2: TDBGridEh;
    actDesconto: TAction;
    Label18: TLabel;
    SpinEditParCheque: TSpinEdit;
    Label20: TLabel;
    DateEditCheque: TDateEdit;
    Label21: TLabel;
    SpinEditPerCheque: TSpinEdit;
    btnGerarCheque: TBitBtn;
    BitBtn8: TBitBtn;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    tbsOrcamento: TTabSheet;
    Label22: TLabel;
    DateEditOrcamento: TDateEdit;
    mmObs: TMemo;
    Label23: TLabel;
    dsCartao: TDataSource;
    memContaidcartao: TIntegerField;
    lbTotal: TLabel;
    edTotalPrazo: TCurrencyEdit;
    edTotalCartao: TCurrencyEdit;
    Label24: TLabel;
    Label25: TLabel;
    edTotalCheque: TCurrencyEdit;
    tbsDeposito: TTabSheet;
    Label8: TLabel;
    edDeposito: TCurrencyEdit;
    procedure cbPagamentoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edDinheiroChange(Sender: TObject);
    procedure sSkinProvider1SkinItem(Item: TComponent;
      var CanBeAdded: Boolean; var SkinSection: string);
    procedure actConfirmarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGerarPrazoClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet2Show(Sender: TObject);
    procedure btnGerarCartaoClick(Sender: TObject);
    procedure actDescontoExecute(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnGerarChequeClick(Sender: TObject);
    procedure DBLookupComboBoxCartaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTotalCartaoEnter(Sender: TObject);
    procedure tbsDinheiroShow(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure SpinEditParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pgPagamentoChange(Sender: TObject);
  private
    vParcela : TParcela;

    CampoValorTotal : String;

    function  ValidaTotal: Boolean;
    procedure LimparLancamento(Lancamento: String; Operacao : String = '=');
    function  SomaTotais: TTotalPagamento;
    function getIdx: Integer;
    procedure setValorTotal;
    { Private declarations }
  public
    { Public declarations }
    FormaPagamento : String;
    FormParent : TFormVenda;
    Totais : TTotalPagamento;
  end;

const
  FormasPg : array [0..6] of string =  ('1 - À Vista', '2 - Cartão', '3 - A Prazo',
    '4 - Cheque', '5 - Misto', '6 - Depósito', '7 - Transferência');


implementation

uses uDM, uDesconto, uParcelaCheque, FuncoesGerais;

{$R *.dfm}

function TFormFinalizaVenda.SomaTotais : TTotalPagamento;
var
   OldFiltered : Boolean;
begin
  //somas as parcelas lançadas
  with Result do begin
    TotalDinheiro := 0; TotalCartao_Cre := 0; TotalCartao_Deb := 0; TotalCheque := 0; TotalPrazo := 0;
    TotalDeposito := 0; TotalTransferencia := 0;

    try
      memConta.DisableControls;
      OldFiltered := memConta.Filtered;
      memConta.Filtered := False;
      memConta.First;
      while not memConta.Eof do
      begin
          if memContaforma_pagamento.Value = fpg_dinheiro then
            TotalDinheiro := TotalDinheiro + memContavalor.AsCurrency
          else if (memContaforma_pagamento.Value = fpg_cartaoCre) then
            TotalCartao_Cre := TotalCartao_Cre + memContavalor.AsCurrency
          else if (memContaforma_pagamento.Value = fpg_cartaoDe) then
            TotalCartao_Deb := TotalCartao_Deb + memContavalor.AsCurrency
          else if memContaforma_pagamento.Value = fpg_cheque then
            TotalCheque := TotalCheque + memContavalor.AsCurrency
          else if memContaforma_pagamento.Value = fpg_prazo then
            TotalPrazo := TotalPrazo + memContavalor.AsCurrency
          else if memContaforma_pagamento.Value = fpg_deposito then
            TotalDeposito := TotalDeposito + memContavalor.AsCurrency
         else if memContaforma_pagamento.Value = fpg_transferencia then
            TotalTransferencia := TotalTransferencia + memContavalor.AsCurrency;



        memConta.Next;
      end;

    finally
      memConta.Filtered := OldFiltered;
      memConta.First;
      memConta.EnableControls;
    end;
  end;
end;

procedure TFormFinalizaVenda.SpinEditParcelasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    SelectNext(TWinControl(Sender),True,True);
  end;
end;

function TFormFinalizaVenda.ValidaTotal : Boolean;
var
  TotalPagar, TotalAux : Currency;
  Msg : String;
  idx : Integer;

  procedure gravaconta(Valor : Currency; Fpagamento : String);
  begin
    memConta.Insert;
    memContadata_vencimento.AsDateTime := Date;
    memContadata_pagamento.AsDateTime  := Date;
    if Valor > TotalPagar then
      memContavalor.AsCurrency := TotalPagar
    else
      memContavalor.AsCurrency := Valor;
    memContaforma_pagamento.Value := Fpagamento;
    memConta.Post;
  end;
begin
  Result := False;
  try
    //validação do cliente
    idx := getIdx;

    if self.Tag <> tag_conta then
    begin
      if dsvenda.DataSet.FieldByName('codcliente').AsInteger <= 0 then
      begin
        if ((idx <> idx_dinheiro) and (idx <> idx_cartao)) or (Self.Tag = tag_orcamento) then
        begin
            if Pergunta('Cliente não informado.'+#13+
                        'Para utilizar este tipo de pagamento é necessário informar o cliente.'+#13+
                        'Deseja informar o cliente agora?',MB_YESNO+MB_ICONQUESTION) = id_Yes then
            begin
              if FormParent is TForm then
                FormParent.actCliente.Execute;

            end;

          if dsvenda.DataSet.FieldByName('codcliente').AsInteger <= 0 then
          begin
            Informa('Cliente não informado.');
            Exit;
          end;
        end;
      end;
    end;

    if self.Tag = tag_orcamento then
    begin
      Result := True;
      Exit;
    end;

    TotalPagar := dsvenda.DataSet.FieldByName('total_pagar').AsCurrency;

    LimparLancamento(fpg_dinheiro);
    LimparLancamento(fpg_deposito);
    LimparLancamento(fpg_transferencia);

    memConta.Filtered := False;
    if (idx = idx_deposito) then
    begin
      if edDeposito.Value > 0 then
        GravaConta(edDeposito.Value,fpg_deposito);
    end
    else if (idx = idx_transferencia) then
    begin
      if edDeposito.Value > 0 then
        GravaConta(edDeposito.Value,fpg_transferencia);
    end
    else if (idx = idx_dinheiro) or (idx = idx_misto) then //somene dinheiro ou misto
    begin
        if (edDinheiro.Value > 0) then
        begin
          GravaConta(edDinheiro.Value,fpg_dinheiro);
        end;
    end
    else if idx = idx_prazo then
    begin
      if edEntrada.Value > 0 then
        gravaconta(edEntrada.Value,fpg_dinheiro);
    end ;


    Totais := SomaTotais;

    with Totais do begin
      case idx of
         idx_dinheiro : TotalAux := TotalDinheiro;
         idx_cartao   : TotalAux := TotalCartao_Cre + TotalCartao_Deb;
         idx_prazo    : TotalAux := TotalPrazo + TotalDinheiro;
         idx_cheque   : TotalAux := TotalCheque;
         idx_misto    : TotalAux := TotalDinheiro + TotalPrazo + TotalCartao_Cre + TotalCartao_Deb + TotalCheque + TotalDeposito + TotalTransferencia;
         idx_deposito  : TotalAux := TotalDeposito;
         idx_transferencia : TotalAux := TotalTransferencia;
         else TotalAux := 0;
      end;
    end;

     if (TotalAux > (TotalPagar + 0.02)) or (TotalAux < (TotalPagar - 0.02)) then
           Informa('O valor não confere com o valor informado para pagamento.'+#13+
                   ' Valor do movimento: '+FormataCurrency(TotalPagar)+#13+
                   'Pagamento informado: '+FormataCurrency(TotalAux))
     else begin
       Msg := 'Confirmação do Pagamento: '+#13+#13;
       with Totais do begin
         if TotalDinheiro > 0 then
           Msg := Msg + #13+'Dinheiro: '+FormataCurrency(TotalDinheiro);
         if (TotalCartao_Cre + TotalCartao_Deb) > 0 then
           Msg := Msg + #13+'Cartão: '+FormataCurrency(TotalCartao_Cre + TotalCartao_Deb);
         if TotalCheque > 0 then
           Msg := Msg + #13+'Cheque: '+FormataCurrency(TotalCheque);
         if TotalPrazo > 0 then
           Msg := Msg + #13+'Prazo: '+FormataCurrency(TotalPrazo);
         if TotalDeposito > 0 then
           Msg := Msg + #13+'Depósito: '+FormataCurrency(TotalDeposito);
         if TotalTransferencia > 0 then
           Msg := Msg + #13+'Transferência: '+FormataCurrency(TotalTransferencia);

       end;

       if Pergunta(Msg,MB_YESNO+MB_ICONINFORMATION) = id_yes then
         Result := True;
     end;

  except
    Result := False;
  end;
  memConta.Filtered := True;
  ForceEnableControls(memConta);
end;

procedure TFormFinalizaVenda.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  if ValidaTotal then
    ModalResult := mrOk;
end;


procedure TFormFinalizaVenda.LimparLancamento(Lancamento : String; Operacao : String = '=');
var
   OldFiltered : Boolean;
begin
  OldFiltered := memConta.Filtered;
  memConta.Filtered := False;
  memConta.First;
  while not memConta.Eof do begin
    if Operacao = '=' then
    begin
      if memContaforma_pagamento.Value = Lancamento then
        memConta.Delete
      else
        memConta.Next;
    end
    else begin
      if memContaforma_pagamento.Value <> Lancamento then
        memConta.Delete
      else
        memConta.Next;
    end;
  end;
  memConta.Filtered := OldFiltered;
end;

procedure TFormFinalizaVenda.pgPagamentoChange(Sender: TObject);
begin
  inherited;
  setValorTotal;
end;

procedure TFormFinalizaVenda.setValorTotal;
var
  idx : Integer;

begin
   idx := getIdx;
   case pgPagamento.ActivePageIndex of
      idx_cartao : edTotalCartao.Value := dsvenda.DataSet.FieldByName('total_pagar').AsCurrency;
      idx_cheque : edTotalCheque.Value := dsvenda.DataSet.FieldByName('total_pagar').AsCurrency;
      idx_deposito : edDeposito.Value := dsvenda.DataSet.FieldByName('total_pagar').AsCurrency;
      idx_prazo : edTotalPrazo.Value := dsvenda.DataSet.FieldByName('total_pagar').AsCurrency;
      idx_misto : begin
         edTotalCartao.Value := 0;
         edTotalCheque.Value := 0;
         edDeposito.Value := 0;
         edTotalPrazo.Value := 0;
      end;
   end;
end;

procedure TFormFinalizaVenda.actDescontoExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormDesc_Acre, FormDesc_Acre);
    FormDesc_Acre.ValorTotal := dsvenda.DataSet.FieldByName(edTotalVenda.DataField).AsCurrency;
    FormDesc_Acre.Desconto   := dsvenda.DataSet.FieldByName('desconto').AsCurrency;
    FormDesc_Acre.Acrescimo  := dsvenda.DataSet.FieldByName('acrescimo').AsCurrency;
    if FormDesc_Acre.ShowModal = mrOK then
    begin
      dsvenda.DataSet.Edit;
      dsvenda.DataSet.FieldByName('desconto').Value := FormDesc_Acre.Desconto;
      dsvenda.DataSet.FieldByName('acrescimo').Value := FormDesc_Acre.Acrescimo;
      dsvenda.DataSet.Post;

      setValorTotal;
    end;

  finally
    FreeAndNil(FormDesc_Acre);
  end;
end;

procedure TFormFinalizaVenda.btnGerarPrazoClick(Sender: TObject);
var
  ValorParcela : Currency;
  i : Integer;
  DtVencimento : TDateTime;
begin
  inherited;
  //validação dos campos
  if SpinEditParcelas.Value <= 0 then
  begin
    Informa('Informe o número de parcelas.');
    if SpinEditParcelas.CanFocus then
      SpinEditParcelas.SetFocus;
  end
  else if SpinEditPeriodo.Value <= 0 then
  begin
    Informa('Informe o período de geração das parcelas.');
    if SpinEditPeriodo.CanFocus then
      SpinEditPeriodo.SetFocus;
  end
  else if DateEditVencimento.Date <= 0 then
  begin
    Informa('Informe a data do 1º vencimento.');
    if DateEditVencimento.CanFocus then
      DateEditVencimento.SetFocus;
  end
  else begin
    LimparLancamento(fpg_prazo);
    vParcela := CalculaParcela(SpinEditParcelas.Value,edTotalPrazo.Value - edEntrada.Value);

    if edEntrada.Value > 0 then
    begin
      memConta.Insert;
      memContaid.Value := 0;
      memContadata_vencimento.AsDateTime := Date;
      memContadata_pagamento.AsDateTime  := Date;
      memContavalor.AsCurrency := edEntrada.Value;
      memContaforma_pagamento.Value := fpg_dinheiro;
      memConta.Post;
    end;

    DtVencimento := DateEditVencimento.Date;
    for i := 1 to SpinEditParcelas.Value do
    begin
      if i > 1 then
      begin
        if SpinEditPeriodo.Value = 30 then
          DtVencimento := IncMonth(DtVencimento,1)
        else
          DtVencimento := DtVencimento + SpinEditPeriodo.Value;
      end;

      memConta.Insert;
      memContaid.Value := i;
      memContadata_vencimento.AsDateTime := DtVencimento;
     if i = 1 then
        memContavalor.AsCurrency := vParcela.ValorPrimeira
     else
        memContavalor.AsCurrency := vParcela.ValorDemais;
      memContaforma_pagamento.Value := fpg_prazo;
      memConta.Post;

    end;

  end;
end;

procedure TFormFinalizaVenda.BitBtn4Click(Sender: TObject);
begin
  inherited;
  LimparLancamento(fpg_prazo);
  LimparLancamento(fpg_dinheiro);
end;

procedure TFormFinalizaVenda.btnGerarCartaoClick(Sender: TObject);
var
  ValorParcela : TParcela;
  i : Integer;
  DtVencimento : TDateTime;
begin
  inherited;
  //validação dos campos
  if edTotalCartao.Value <= 0 then
  begin
    Informa('Informe o total pago em cartão.');
    if edTotalCartao.CanFocus then
      edTotalCartao.SetFocus;
  end
  else if SpinEditPer2.Value <= 0 then
  begin
    Informa('Informe o número de parcelas.');
    if SpinEditPer2.CanFocus then
      SpinEditPer2.SetFocus;
  end
  else if SpinEditPer2.Value <= 0 then
  begin
    Informa('Informe o período de geração das parcelas.');
    if SpinEditPer2.CanFocus then
      SpinEditPer2.SetFocus;
  end
  else if DateEditVencimentoCart.Date <= 0 then
  begin
    Informa('Informe a data do 1º vencimento.');
    if DateEditVencimentoCart.CanFocus then
      DateEditVencimentoCart.SetFocus;
  end
  else begin
    LimparLancamento(fpg_cartaoCre);
    LimparLancamento(fpg_cartaoDe);

    vParcela := CalculaParcela(SpinEditParCart.Value,edTotalCartao.Value);

    DtVencimento := DateEditVencimentoCart.Date;
    for i := 1 to SpinEditParCart.Value do
    begin
      if i > 1 then
      begin
        if SpinEditPer2.Value = 30 then
          DtVencimento := IncMonth(DtVencimento,1)
        else
          DtVencimento := DtVencimento + SpinEditPer2.Value;
      end;

      memConta.Insert;
      memContaid.Value := i;
      memContadata_vencimento.AsDateTime := DtVencimento;
      if i = 1 then
        memContavalor.AsCurrency := vParcela.ValorPrimeira
      else
        memContavalor.AsCurrency := vParcela.ValorDemais;
      if cbTipo.ItemIndex = 0 then
        memContaforma_pagamento.Value := fpg_cartaoCre
      else
        memContaforma_pagamento.Value := fpg_cartaoDe;
      if DBLookupComboBoxCartao.Text <> '' then
        memContaidcartao.AsInteger := DBLookupComboBoxCartao.KeyValue;
      memConta.Post;

    end;

  end;
end;

procedure TFormFinalizaVenda.BitBtn6Click(Sender: TObject);
begin
  inherited;
  LimparLancamento(fpg_cartaoCre);
  LimparLancamento(fpg_cartaoDe);
end;

procedure TFormFinalizaVenda.btnGerarChequeClick(Sender: TObject);
var
  ValorParcela : Currency;
  DtVencimento : TDate;
  i : Integer;
begin
  inherited;
  //validação dos campos
  if SpinEditParCheque.Value <= 0 then
  begin
    Informa('Informe o número de parcelas.');
    if SpinEditParCheque.CanFocus then
      SpinEditParCheque.SetFocus;
  end
  else if SpinEditPerCheque.Value <= 0 then
  begin
    Informa('Informe o período de geração das parcelas.');
    if SpinEditPerCheque.CanFocus then
      SpinEditPerCheque.SetFocus;
  end
  else if DateEditCheque.Date <= 0 then
  begin
    Informa('Informe a data do 1º vencimento.');
    if DateEditCheque.CanFocus then
      DateEditCheque.SetFocus;
  end
  else begin
    LimparLancamento(fpg_cheque);

    try
      Application.CreateForm(TFormParcelaCheque,FormParcelaCheque);
      FormParcelaCheque.edTotalCheque.Value := edTotalCheque.Value;
      FormParcelaCheque.SpinEditParCheque.Value := SpinEditParCheque.Value;
      FormParcelaCheque.SpinEditPerCheque.Value := SpinEditPerCheque.Value;
      FormParcelaCheque.DateEditCheque.Date := DateEditCheque.Date;
      FormParcelaCheque.btnGerarChequeClick(nil);
      if FormParcelaCheque.ShowModal = mrOK then
      begin
        memConta.Insert;
        memContaid.Value := i;
        memContadata_vencimento.AsDateTime := Date;
        memContavalor.AsCurrency := edTotalCheque.Value;
        memContaforma_pagamento.Value := fpg_cheque;
        memConta.Post;
      end ;

    finally
      FreeAndNil(FormParcelaCheque);
    end;


  end;

end;

procedure TFormFinalizaVenda.BitBtn8Click(Sender: TObject);
begin
  inherited;
  LimparLancamento(fpg_cheque);
end;

procedure TFormFinalizaVenda.cbPagamentoChange(Sender: TObject);
var
  idx : Integer;
begin
  inherited;
  if self.Tag <> tag_orcamento then
  begin
    idx := getIdx;
    if (idx = idx_transferencia) or (idx = idx_deposito) then begin
      pgPagamento.ActivePage := tbsDeposito;
    end
    else if idx < idx_misto then
      pgPagamento.ActivePageIndex := idx
    else
      pgPagamento.ActivePageIndex := 0;
    setValorTotal;
  end;

end;

procedure TFormFinalizaVenda.cbPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    case getIdx of
      idx_dinheiro, idx_misto : if edDinheiro.CanFocus then edDinheiro.SetFocus;
      idx_cartao : if edTotalCartao.CanFocus then edTotalCartao.SetFocus;
      idx_prazo  : if edTotalPrazo.CanFocus then edTotalPrazo.SetFocus;
      idx_cheque : if edTotalCheque.CanFocus then edTotalCheque.SetFocus;
      idx_deposito, idx_transferencia : if edDesconto.CanFocus then edDeposito.SetFocus

      else SelectProximo(Sender,Key);
    end;


    Key := #0;
  end;

end;

procedure TFormFinalizaVenda.DBLookupComboBoxCartaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = VK_DELETE) or (key = VK_BACK) then
    DBLookupComboBoxCartao.KeyValue := null;
end;

procedure TFormFinalizaVenda.edDinheiroChange(Sender: TObject);
var
  ValorVenda : Currency;
begin
  inherited;
  ValorVenda := dsVenda.DataSet.FieldByname('total_pagar').asCurrency;
  if (edDinheiro.Value > ValorVenda)  then
    edTroco.Value := edDinheiro.Value - ValorVenda
  else
    edTroco.Value := 0;
end;

procedure TFormFinalizaVenda.edTotalCartaoEnter(Sender: TObject);
var
  Total : Currency;
begin
  inherited;
  EditEnter(Sender);
  Total := dsvenda.DataSet.FieldByName('total_pagar').AsCurrency - edTotalPrazo.Value -
    edTotalCartao.Value - edTotalCheque.Value - edDinheiro.Value + TCurrencyEdit(Sender).Value;
  if Total < 0 then
    Total := 0;
  TCurrencyEdit(Sender).Value := Total;
end;

procedure TFormFinalizaVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  memConta.Filter   := '';
  memConta.Filtered := False;
  case getIdx of
    idx_dinheiro : FormaPagamento := fpg_dinheiro;
    idx_cartao   : if cbTipo.ItemIndex = 0 then  FormaPagamento := fpg_cartaoCre else FormaPagamento := fpg_cartaoDe;
    idx_prazo    : FormaPagamento := fpg_prazo;
    idx_cheque   : FormaPagamento := fpg_cheque;
    idx_misto    : FormaPagamento := fpg_misto;
    idx_deposito : FormaPagamento := fpg_deposito;
    idx_transferencia : FormaPagamento := fpg_transferencia;
  end;
end;

procedure TFormFinalizaVenda.FormCreate(Sender: TObject);
var
  I : Integer;
begin
  inherited;
  memConta.CreateDataSet;
  cbPagamento.Items.Clear;
  for I := 0 to Length(FormasPg) - 3 do
  begin
    cbPagamento.Items.Add(FormasPg[i]);
  end;

end;

procedure TFormFinalizaVenda.FormShow(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  memConta.EmptyDataSet;
  cbPagamento.SetFocus;
  cbPagamento.ItemIndex := idx_dinheiro;
  DateEditVencimento.Date := IncMonth(Date,1);
  DateEditVencimentoCart.Date := DateEditVencimento.Date;
  DateEditCheque.Date := DateEditVencimento.Date;
  tbsDeposito.TabVisible := False;

  if not DM.cdsCartao.Active then
    DM.cdsCartao.Open;
  pgPagamento.ActivePageIndex := 0;
  tbsOrcamento.TabVisible := False;
  if self.Tag = tag_orcamento then
  begin
    for i := 0 to pgPagamento.PageCount - 1 do
    begin
      pgPagamento.Pages[i].TabVisible := False;
    end;
    tbsOrcamento.TabVisible := True;
    pgPagamento.ActivePage := tbsOrcamento;
    DateEditOrcamento.Date := Date + 5;
  end;

  if self.Tag = tag_conta then
  begin
     {if (dsvenda.DataSet.FieldByName('idcliente').AsInteger <= 0) and
        (dsvenda.DataSet.FieldByName('tipo').AsString = _Credito) then }
      for i := 1 to pgPagamento.PageCount - 1 do
      begin
        pgPagamento.Pages[i].TabVisible := False;
      end;
      cbPagamento.Items.Clear;
      cbPagamento.Items.Add(FormasPg[0]);
      cbPagamento.Items.Add(FormasPg[1]);
      cbPagamento.Items.Add(FormasPg[3]);
      cbPagamento.Items.Add(FormasPg[5]);
      cbPagamento.Items.Add(FormasPg[6]);
      cbPagamento.ItemIndex := 0;
  end;

end;

procedure TFormFinalizaVenda.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  inherited;
  if Item.Tag = 1 then
    CanBeAdded := False;
end;

procedure TFormFinalizaVenda.TabSheet2Show(Sender: TObject);
begin
  inherited;
  memConta.Filter   := 'forma_pagamento = '+QuotedStr(fpg_cartaoCre) +
                       'or forma_pagamento = '+QuotedStr(fpg_cartaoDe);
  memConta.Filtered := True;

  if (getIdx <> idx_cartao) and (getIdx <> idx_misto) then
    cbPagamento.ItemIndex := idx_cartao;

end;

procedure TFormFinalizaVenda.TabSheet3Show(Sender: TObject);
begin
  inherited;
  memConta.Filter   := 'forma_pagamento = '+QuotedStr(fpg_prazo)+' or forma_pagamento = '+QuotedStr(fpg_dinheiro);
  memConta.Filtered := True;

  if (getIdx <> idx_prazo) and (getIdx <> idx_misto) then
    cbPagamento.ItemIndex := idx_prazo;
end;

procedure TFormFinalizaVenda.TabSheet4Show(Sender: TObject);
begin
  inherited;
   if (getIdx <> idx_cheque) and (getIdx <> idx_misto) then
    cbPagamento.ItemIndex := idx_cheque;

  memConta.Filter   := 'forma_pagamento = '+QuotedStr(fpg_cheque);
  memConta.Filtered := True;
end;

procedure TFormFinalizaVenda.tbsDinheiroShow(Sender: TObject);
begin
  inherited;
  if (getIdx <> idx_dinheiro) and (getIdx <> idx_misto) then
    cbPagamento.ItemIndex := idx_dinheiro;
end;

function TFormFinalizaVenda.getIdx : Integer;
var
  i : Integer;
begin
  Result := 0;
  for i := 0 to Length(FormasPg) - 1 do
    if FormasPg[i] =  cbPagamento.Text then
    begin
      Result := i;
      Break;
    end;
end;

end.
