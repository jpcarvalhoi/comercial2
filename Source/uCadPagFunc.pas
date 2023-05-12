unit uCadPagFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  rxToolEdit, RXDBCtrl, Mask, DBCtrls, System.Actions;

type
  TFormCadPagFunc = class(TfrmClone)
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGravarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IDConta : Integer;
  end;

var
  FormCadPagFunc: TFormCadPagFunc;

implementation

uses uDM, FuncoesGerais, FuncoesGlobais;

{$R *.dfm}

procedure TFormCadPagFunc.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;
  with DM do begin
    if not ChecaRequeridos(DM.cdsCadConta) then Exit;

    cdsCadContadescricao.Value := 'FUNCIONÁRIO: '+DBLookupComboBox1.Text;
  end;
  inherited;

end;

procedure TFormCadPagFunc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DM.cdsCadConta.Close;
  DM.qrlkFuncionario.Close;
  DM.cdsCadContaidfuncionario.Required := False;
  DM.cdsCadContasalario.Required := false;
  DM.cdsCadConta.Tag := 0;
end;

procedure TFormCadPagFunc.FormShow(Sender: TObject);
begin
  inherited;
  if IDConta > 0 then
  begin
    DM.cdsCadConta.Close;
    DM.cdsCadConta.Params.ParamByName('pidconta').Value := IDConta;
  end;
  DM.cdsCadConta.Open;
  DM.qrlkFuncionario.Open;
  DM.cdsCadContaidfuncionario.Required := True;
  DM.cdsCadContasalario.Required := True;
  DM.cdsCadConta.Tag := LancamentoSalario;
end;

end.
