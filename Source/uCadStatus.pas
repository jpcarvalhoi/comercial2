unit uCadStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, System.Actions;

type
  TFormCadStatus = class(TfrmClone)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadStatus: TFormCadStatus;

implementation

uses uDM, FuncoesGlobais;

{$R *.dfm}

procedure TFormCadStatus.actLocalizarExecute(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  cod := fLocalizar(23);
  if cod > 0 then
    DM.cdsStatus.Locate('idstatus',cod,[]);
end;

procedure TFormCadStatus.FormShow(Sender: TObject);
begin
  inherited;
  dsNavegacao.DataSet := DM.cdsStatus;
  DM.cdsStatus.Open;

end;

end.
