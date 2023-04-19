unit uParcelaCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, DBGridEhGrouping, DB, DBClient, StdCtrls,
  Buttons, rxToolEdit, Spin, Mask, rxCurrEdit, GridsEh, DBGridEh, ExtCtrls,
  ActnList;

type
  TFormParcelaCheque = class(TFormClone_TelaPadrao)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    edTotalCheque: TCurrencyEdit;
    Label1: TLabel;
    Label18: TLabel;
    SpinEditParCheque: TSpinEdit;
    Label20: TLabel;
    DateEditCheque: TDateEdit;
    Label21: TLabel;
    SpinEditPerCheque: TSpinEdit;
    btnGerarCheque: TBitBtn;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    btnConfirmar: TBitBtn;
    BitBtn2: TBitBtn;
    actConfirmar: TAction;
    procedure btnGerarChequeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParcelaCheque: TFormParcelaCheque;

implementation

uses FuncoesGlobais, FuncoesGerais, uDM;

{$R *.dfm}

procedure TFormParcelaCheque.actConfirmarExecute(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  try
    DBGridEh1.SumList.RecalcAll;
    if edTotalCheque.Value <> DBGridEh1.SumList.SumCollection.Items[0].SumValue then
      Informa('Existe uma diferença entre os valores informados.'+#13+
              'Total a ser pago em cheque: '+FormataCurrency(edTotalCheque.Value)+#13+
              'Total das parcelas informadas: '+FormataCurrency(DBGridEh1.SumList.SumCollection.Items[0].SumValue))
    else
      ModalResult := mrOk;
  except
    Informa('Erro ao concluir a operação.');
  end;

end;

procedure TFormParcelaCheque.BitBtn1Click(Sender: TObject);
var
  Conta, Agencia, Banco, NumCheque : String;
begin
  inherited;
  with DM do begin
    try
      memcheque.DisableControls;
      memcheque.First;
      Agencia := memchequeagencia.Value;
      Banco   := memchequebanco.Value;
      Conta   := memchequeconta.Value;
      NumCheque := memchequenumchque.Value;
      memcheque.Next;
      while not memcheque.Eof do begin
        memcheque.Edit;
        memchequebanco.Value := Banco;
        memchequeagencia.Value := Agencia;
        memchequeconta.Value := conta;
        if StrToFloatDef(NumCheque,0) > 0 then
          memchequenumchque.Value := FloatToStr(StrToFloat(NumCheque)+1);
        memcheque.Post;
        memcheque.Next;
      end;
    finally
       memcheque.First;
       memcheque.EnableControls;
    end;
  end;
end;

procedure TFormParcelaCheque.btnGerarChequeClick(Sender: TObject);
var
  parcela : TParcela;
  i : Integer;
  DtVencimento : TDate;
begin
  inherited;
  with dm do begin
    if memcheque.RecordCount > 0 then
    begin
      if Pergunta('Já existem parcelas lançadas, todas as parcelas serão excluídas.'+#13+
                  'Deseja continuar?') = ID_NO then
       Exit;

    end;
    if edTotalCheque.Value <= 0 then
    begin
      Informa('Informe o valor total.');
      Exit;
    end;

    parcela := CalculaParcela(SpinEditParCheque.Value , edTotalCheque.Value);
    DtVencimento := DateEditCheque.Date;
    memcheque.EmptyDataSet;
    for i := 1 to SpinEditParCheque.Value do
    begin
      if i > 1 then
      begin
        if SpinEditPerCheque.Value = 30 then
          DtVencimento := IncMonth(DtVencimento,1)
        else
          DtVencimento := DtVencimento + SpinEditPerCheque.Value;
      end;

      memcheque.Insert;
      memchequeid.Value := i;
      memchequedtvencimento.AsDateTime := DtVencimento;
      if i = 1 then
        memchequevalor.Value := parcela.ValorPrimeira
      else
        memchequevalor.Value := parcela.ValorDemais;
      memchequeTipo.Value := 'P';
      memcheque.Post;

    end;
  end;
  DBGridEh1.SumList.RecalcAll;
end;

procedure TFormParcelaCheque.FormShow(Sender: TObject);
begin
  inherited;
  btnGerarCheque.SetFocus;
end;

end.
