unit uLancaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UClone, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, RxToolEdit, Vcl.DBActns, System.Actions, Vcl.ActnList, Data.DB,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, RxDBCtrl;

type
  TfrmLancaPagamento = class(TfrmClone)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    procedure actGravarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idTbsistema : Integer;
    AlterouValor : Boolean;
  end;

var
  frmLancaPagamento: TfrmLancaPagamento;

implementation

uses
  uDM, FuncoesGerais, FuncoesGlobais;

{$R *.dfm}

procedure TfrmLancaPagamento.actGravarExecute(Sender: TObject);
begin
  if DM.cdsControlePgdata.AsDateTime <= 0 then
  begin
    Informa('Informe a data.');
    Exit;
  end;

  if DM.cdsControlePgvalor.AsCurrency <= 0 then
  begin
    Informa('Informe o valor.');
    Exit;
  end;

  if DM.cdsControlePgidtbsistema.AsInteger = 0 then
    DM.cdsControlePgidtbsistema.Value := idTbsistema;
  DM.cdsControlePgusuario.Value := mNomeUsuario;
  AlterouValor := True;
  inherited;

end;

procedure TfrmLancaPagamento.FormCreate(Sender: TObject);
begin
  inherited;
  AlterouValor := false;
end;

end.
