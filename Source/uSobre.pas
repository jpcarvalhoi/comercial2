unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RXCtrls, RxGIF, jpeg, Buttons;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    SecretPanel1: TSecretPanel;
    Timer1: TTimer;
    Label2: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure SecretPanel1StopPlay(Sender: TObject);
    procedure SecretPanel1StartPlay(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

procedure TfrmSobre.Timer1Timer(Sender: TObject);
begin
  if not SecretPanel1.Active then
    SecretPanel1.Active:= True;
end;

procedure TfrmSobre.SecretPanel1StopPlay(Sender: TObject);
begin
  Timer1.Enabled:= True;
end;

procedure TfrmSobre.SecretPanel1StartPlay(Sender: TObject);
begin
  Timer1.Enabled:= False;
end;

procedure TfrmSobre.FormActivate(Sender: TObject);
begin
  Timer1.Enabled:= True;
end;

end.
