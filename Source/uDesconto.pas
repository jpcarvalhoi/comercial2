unit uDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, StdCtrls, Buttons, ExtCtrls, Mask,
  rxToolEdit, rxCurrEdit, ActnList;

type
  TFormDesc_Acre = class(TFormClone_TelaPadrao)
    Label1: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    edDesconto: TCurrencyEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnConfirmar: TBitBtn;
    CurrencyEdit2: TCurrencyEdit;
    actConfirmar: TAction;
    CurrencyEdit3: TCurrencyEdit;
    Label5: TLabel;
    procedure ComboBox2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
    procedure edDescontoChange(Sender: TObject);
  private
    procedure Calcula;
    { Private declarations }
  public
    { Public declarations }
    ValorTotal, Desconto, Acrescimo : Currency;

  end;

var
  FormDesc_Acre: TFormDesc_Acre;

implementation

uses FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormDesc_Acre.Calcula;
begin
  Desconto := 0;
  Acrescimo:= 0;
  if ComboBox2.ItemIndex = 0 then //por valor
  begin
    if ComboBox1.ItemIndex = 0 then //desconto
      Desconto := edDesconto.Value
    else
      Acrescimo := edDesconto.Value;
  end
  else begin
    if ComboBox1.ItemIndex = 0 then //desconto
      Desconto := (ValorTotal * edDesconto.Value / 100)
    else
      Acrescimo := (ValorTotal * edDesconto.Value / 100);
  end;

  CurrencyEdit3.Value := ValorTotal + Acrescimo - Desconto;
end;

procedure TFormDesc_Acre.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  if edDesconto.Value > 0 then begin
    Calcula;
    ModalResult := mrOk;
  end
  else Informa('Informe o valor.');
end;

procedure TFormDesc_Acre.ComboBox2Change(Sender: TObject);
begin
  inherited;
  if ComboBox2.ItemIndex = 0 then
    edDesconto.DisplayFormat := 'R$ ,0.00;-R$ ,0.00'
  else
    edDesconto.DisplayFormat := '#0.0';
end;

procedure TFormDesc_Acre.edDescontoChange(Sender: TObject);
begin
  inherited;
  if edDesconto.Value > 0 then
    Calcula;
end;

procedure TFormDesc_Acre.FormShow(Sender: TObject);
begin
  inherited;
  CurrencyEdit2.Value := ValorTotal;
  Calcula;
end;

end.
