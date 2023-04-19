unit uCadTransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls;

type
  TFormCadTransportadora = class(TfrmClone)
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
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGravarExecute(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure actLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadTransportadora: TFormCadTransportadora;

implementation

uses uDM, FuncoesGerais, FuncoesGlobais;

{$R *.dfm}

procedure TFormCadTransportadora.actGravarExecute(Sender: TObject);
begin
  if Trim(dm.cdsTransportadorarazaosocial.AsString) = '' then
  begin
    Informa('Informe a Razão Social');
    DBEdit1.SetFocus
  end
  else if (DM.cdsTransportadoracnpj.AsString <> '') and (not gfCalculaCnpjCeiCpf(DM.cdsTransportadoracnpj.AsString)) then
  begin
    Informa('O Documento informado não é válido.');
    DBEdit3.SetFocus;
  end
  else
    inherited;

end;

procedure TFormCadTransportadora.actLocalizarExecute(Sender: TObject);
var
  Cod : Integer;
begin
  inherited;
  cod := fLocalizar(15);
  if cod > 0 then
    dm.cdsTransportadora.Locate('idtransportadora',cod,[]);
end;

procedure TFormCadTransportadora.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  keyPressSoNumber(Sender,Key);
end;

procedure TFormCadTransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if self.Tag = 0 then
    DM.cdsTransportadora.Close;
end;

procedure TFormCadTransportadora.FormShow(Sender: TObject);
begin
  inherited;
  dm.cdsTransportadora.Open;
end;

end.
