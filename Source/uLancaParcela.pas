unit uLancaParcela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, Spin, rxToolEdit, StdCtrls, Mask, rxCurrEdit,
  ActnList, Buttons, ExtCtrls;

type
  TFormLancaParcela = class(TFormClone_TelaPadrao)
    gbEntrada: TGroupBox;
    ckEntrada: TCheckBox;
    edValorEntrada: TCurrencyEdit;
    cbEntrada: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEditentrada: TDateEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    edValorTotal: TCurrencyEdit;
    Label4: TLabel;
    SpinEditParcela: TSpinEdit;
    Label5: TLabel;
    cbParcela: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    SpinEditPeriodo: TSpinEdit;
    DateEditparcela: TDateEdit;
    Label9: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edValorParcela: TCurrencyEdit;
    Label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure ckEntradaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DateEditentradaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure SpinEditParcelaChange(Sender: TObject);
  private
    function addPer(vData: TDate): TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaParcela: TFormLancaParcela;

implementation

uses FuncoesGerais, FuncoesGlobais, uDM;

{$R *.dfm}

procedure TFormLancaParcela.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

function TFormLancaParcela.addPer(vData : TDate) : TDate;
begin
  if SpinEditPeriodo.Value = 30 then
    Result := IncMonth(vData,1)
  else
    Result := vData + SpinEditPeriodo.Value;
end;

procedure TFormLancaParcela.BitBtn2Click(Sender: TObject);
var
  ValorTotal, ValorParcela, Dif : Currency;
  i : Integer;
  Data : TDateTime;
begin
  inherited;
  if DM.qrNotaPagamento.RecordCount > 0 then
  begin
    if Pergunta('Os lançamentos já cadastrados serão excluídos.'+#13+
                'Deseja continuar') = id_no then
       Exit;

  end;
  ValorTotal := edValorTotal.Value;

  if ckEntrada.Checked then
  begin
    if (edValorEntrada.Value <= 0) or (cbEntrada.Text = '') or (DateEditentrada.Date <= 0) then
    begin
      Informa('Informe os dados da entrada.');
      Exit;
    end;
  end;

  if (SpinEditParcela.Value <= 0) or (cbParcela.Text = '') or (SpinEditPeriodo.Value <= 0) or (DateEditparcela.Date <= 0) then
  begin
    Informa('Informe os dados das parcelas.');
    Exit;
  end;

  //DM.qrNotaPagamento.EmptyDataSet;
  if DM.qrNotaPagamento.RecordCount > 0 then
    EmptyDataSet(DM.qrNotaPagamento);

  if ckEntrada.Checked then begin
    ValorTotal := ValorTotal - edValorEntrada.Value;
    DateEditparcela.Date := addPer(DateEditentrada.Date);

    with DM do begin
      qrNotaPagamento.Insert;
      qrNotaPagamentodata_vencimento.Value := DateEditentrada.Date;
      qrNotaPagamentovalor.AsCurrency := edValorEntrada.Value;
      qrNotaPagamentoforma_pagamento.Value := cbEntrada.Text;
      qrNotaPagamento.Post;
    end;
  end;

  ValorParcela := CorrigeCurrency(ValorTotal / SpinEditParcela.Value);
  Data := DateEditparcela.Date;
  for i := 1 to SpinEditParcela.Value do
  begin
    with DM do begin
      qrNotaPagamento.Insert;
      qrNotaPagamentodata_vencimento.Value := Data;
      Data := addPer(Data);
      qrNotaPagamentovalor.AsCurrency := ValorParcela;
      qrNotaPagamentoforma_pagamento.Value := cbParcela.Text;
      qrNotaPagamento.Post;
    end;
  end;

  //correção de arredondamento
  ValorTotal := 0;
  if ckEntrada.Checked then
    ValorTotal := edValorEntrada.Value;
  ValorTotal := ValorTotal + (ValorParcela * SpinEditParcela.Value);

  if ValorTotal <> edValorTotal.Value then
  begin
    dif := edValorTotal.Value - ValorTotal;
    DM.qrNotaPagamento.Last;
    DM.qrNotaPagamento.Edit;
    DM.qrNotaPagamentovalor.AsCurrency := DM.qrNotaPagamentovalor.AsCurrency + Dif;
    dm.qrNotaPagamento.Post;
  end;

  Close;


end;

procedure TFormLancaParcela.ckEntradaClick(Sender: TObject);
begin
  inherited;
  gbEntrada.Enabled := ckEntrada.checked;
end;

procedure TFormLancaParcela.DateEditentradaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  DateEditparcela.Date := addPer(DateEditentrada.Date);
end;

procedure TFormLancaParcela.SpinEditParcelaChange(Sender: TObject);
begin
  inherited;
  edValorParcela.Value := 0;
  if SpinEditParcela.Value > 0 then
    edValorParcela.Value := (edValorTotal.Value - edValorEntrada.Value) / SpinEditParcela.Value;

end;

end.
