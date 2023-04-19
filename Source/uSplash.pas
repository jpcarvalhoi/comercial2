unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    LabelVersao: TLabel;
    Label2: TLabel;
    Image2: TImage;
    lbDemonstracao: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses FuncoesGlobais;

{$R *.dfm}

procedure TfrmSplash.FormCreate(Sender: TObject);
begin
  LabelVersao.Caption:= 'Versão '+VersaoSistema;

end;

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sleep(2000);
end;

end.
