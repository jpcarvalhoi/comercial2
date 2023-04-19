unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, acPNG;

type
  TfrmLogin = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses FuncoesGlobais;

{$R *.dfm}

procedure TfrmLogin.Edit1Enter(Sender: TObject);
begin
  EnterColorEdit(Sender);
end;

procedure TfrmLogin.Edit1Exit(Sender: TObject);
begin
  ExitColorEdit(Sender);
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
  Edit1Enter(Edit1);

end;

end.
