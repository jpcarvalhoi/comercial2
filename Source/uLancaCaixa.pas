unit uLancaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, StdCtrls, Buttons, ExtCtrls, RxDBComb,
  DBCtrls, Mask, rxToolEdit, RXDBCtrl, sSkinProvider, DB, ActnList;

type
  TFormLancaCaixa = class(TFormClone_TelaPadrao)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsCaixa: TDataSource;
    Notebook1: TNotebook;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Tipo: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Panel3: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    edObs: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    edObs2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vSaldo :Currency;
  end;

var
  FormLancaCaixa: TFormLancaCaixa;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormLancaCaixa.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormLancaCaixa.BitBtn2Click(Sender: TObject);
begin
  inherited;
  with DM do begin
    if Notebook1.PageIndex = 0 then  //lançamentos de valores
    begin
      if Int(cdsCadCaixaDATA_HORA.AsDateTime) <= 0 then
      begin
        Erro('Informe a data do lançamento.');
        DBDateEdit1.SetFocus;
      end
      else if cdsCadCaixaVALOR.AsCurrency <= 0 then
      begin
         Erro('Informe o valor.');
         DBEdit1.SetFocus;
      end
      else if RxDBComboBox1.Text = '' then
      begin
         Erro('Informe o tipo de lançamento.');
         RxDBComboBox1.SetFocus;
      end
      else if trim(cdsCadCaixaDESCRICAO.AsString) = '' then
      begin
        Erro('Informe a descrição.');
        DBEdit2.SetFocus;
      end
      else begin
        cdsCadCaixaDATA_HORA.AsDateTime := Int(DBDateEdit1.Date)+Time;
        cdsCadCaixaidUSUARIO.Value := mCodigoUsuario;
        cdsCadCaixaFORMA_PAGAMENTO.Value := 'Dinheiro';
        if RxDBComboBox1.ItemIndex = 0 then
          cdsCadCaixatipo.Value := _Credito
        else
          cdsCadCaixatipo.Value := _Debito;
        cdsCadCaixa.Post;
        cdsCadCaixa.ApplyUpdates;

        Informa('Lançamento efetuado com sucesso!');

        Close;
      end;
    end
    else
    if Notebook1.PageIndex = 1 then //abertura de caixa
    begin
       cdsCadCaixaDATA_HORA.AsDateTime := Now;
       cdsCadCaixaidUSUARIO.Value := mCodigoUsuario;
       cdsCadCaixaTIPO.Value := 'A'; //abertura de caixa
       cdsCadCaixaDESCRICAO.Value := 'Abertura de Caixa';
       if edObs2.Text <> '' then
         cdsCadCaixaDESCRICAO.Value := cdsCadCaixaDESCRICAO.Value + '('+edObs2.Text+')';
       cdsCadCaixa.Post;
       cdsCadCaixa.ApplyUpdates;

       Informa('Caixa aberto com sucesso!');
       Close;
    end
    else if Notebook1.PageIndex = 2 then
    begin
      cdsCadCaixaDATA_HORA.AsDateTime := Now;
      cdsCadCaixaidUSUARIO.Value := mCodigoUsuario;
      cdsCadCaixaTIPO.Value := 'F'; //fechamento de caixa
      cdsCadCaixaDESCRICAO.Value := 'Fechamento de Caixa' ;
      if edObs.Text <> '' then
         cdsCadCaixaDESCRICAO.Value := cdsCadCaixaDESCRICAO.Value + '('+edObs.Text+')';
      cdsCadCaixa.Post;
      cdsCadCaixa.ApplyUpdates;

      Informa('Caixa fechado com sucesso!');
      Close;
    end;

  end;

end;

procedure TFormLancaCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DM.cdsCadCaixa.State in [dsEdit,dsInsert] then
     DM.cdsCadCaixa.Cancel;
end;



procedure TFormLancaCaixa.FormShow(Sender: TObject);
begin
  inherited;
  Notebook1.PageIndex := self.Tag;
  DM.cdsCadCaixa.Close;
  DM.cdsCadCaixa.Params.ParamByName('pid').Value := 0;
  DM.cdsCadCaixa.Open;

  DM.cdsCadCaixa.Insert;

  if self.Tag = 2 then
  begin
    DM.cdsCadCaixaVALOR.AsCurrency := vSaldo;

  end;
end;

end.
