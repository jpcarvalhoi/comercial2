unit uCadProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, rxToolEdit, RXDBCtrl, RxLookup;

type
  TFormCadProducao = class(TfrmClone)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    BitBtn2: TBitBtn;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    BitBtn4: TBitBtn;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodProducao : Integer;
  end;

var
  FormCadProducao: TFormCadProducao;

implementation

uses uDM, FuncoesGerais, uCadCliente, FuncoesGlobais;

{$R *.dfm}

procedure TFormCadProducao.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;
  with DM do begin
    if cdsCadProducaodata.AsDateTime <= 0 then
    begin
      Informa('Informe a data');
      DBDateEdit1.SetFocus;
    end
    else if cdsCadProducaoidveiculo.AsInteger <=  0 then
    begin
       Informa('Informe o veículo');
       DBLookupComboBox1.SetFocus;
    end
    else if cdsCadProducaoidcliente.AsInteger <= 0 then
    begin
      Informa('Informe o cliente.');
      DBLookupComboBox2.SetFocus;
    end
    else if cdsCadProducaopeso.Value <= 0 then
    begin
      Informa('Informe o peso.');
      DBEdit2.SetFocus;
    end
    else if cdsCadProducaovalor_tonelada.AsCurrency <= 0 then
    begin
      Informa('Informe o valor por tonelada.');
      DBEdit3.SetFocus;
    end

    else
      inherited;
  end;
end;

procedure TFormCadProducao.actIncluirExecute(Sender: TObject);
begin
  inherited;
  DM.cdsCadProducaodata.Value := Date;
  DBLookupComboBox1.SetFocus;
end;

procedure TFormCadProducao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TformCadCliente,formCadCliente);
    formCadCliente.Permissao := RetornaPermissao(3);
    formCadCliente.Tag := 1;
    if formCadCliente.Permissao.Visualizar then
      formCadCliente.ShowModal
    else
     AcessoNegado(Negado_visualizar);
     if dm.qrlkCliente.Active then DM.qrlkCliente.Refresh;

  finally
    FreeAndNil(formCadCliente);
  end;
end;

procedure TFormCadProducao.BitBtn4Click(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  cod := fLocalizar(12);
  if (cod > 0) and (DataSetInEdicao(dm.cdsCadProducao,True)) then
    DM.cdsCadProducaoidveiculo.Value := cod;

end;

procedure TFormCadProducao.FormShow(Sender: TObject);
begin
  inherited;
  if DM.cdsCadVeiculo.Active then DM.cdsCadVeiculo.Refresh else DM.cdsCadVeiculo.Open;
  if dm.qrlkCliente.Active then dm.qrlkCliente.Refresh else DM.qrlkCliente.Open;
  if dm.qrFuncionario.Active then  dm.qrFuncionario.Refresh else DM.qrFuncionario.Open;

  if CodProducao > 0 then
  begin
    DM.cdsCadProducao.Close;
    DM.cdsCadProducao.Params[0].Value := CodProducao;
  end;
  DM.cdsCadProducao.Open;
  if self.Tag = 1 then
    actIncluirExecute(nil);

end;

end.
