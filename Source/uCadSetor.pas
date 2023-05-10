unit uCadSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, System.Actions;

type
  TFormCadSetor = class(TfrmClone)
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
  FormCadSetor: TFormCadSetor;

implementation

uses uDM, FuncoesGlobais;

{$R *.dfm}

procedure TFormCadSetor.actLocalizarExecute(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  cod := fLocalizar(22);
  if cod > 0 then
    DM.cdsSetor.Locate('idsetor',cod,[]);
end;

procedure TFormCadSetor.FormShow(Sender: TObject);
begin
  inherited;
  dsNavegacao.DataSet := DM.cdsSetor;
  DM.cdsSetor.Open;

end;

end.
