unit UProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, ComCtrls, StdCtrls, ExtCtrls, sGauge, Buttons,
  ActnList;

type
  TFormProgress = class(TFormClone_TelaPadrao)
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    lbAndamento: TLabel;
    Label1: TLabel;
    lbTempo: TLabel;
    BitBtn1: TBitBtn;
    sGauge: TsGauge;
    StatusBar1: TStatusBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    CancelouImportacao, PodeFechar:Boolean;
    HoraInicio:TTime;

  end;

var
  FormProgress: TFormProgress;

implementation



{$R *.dfm}

procedure TFormProgress.Timer1Timer(Sender: TObject);
begin
  inherited;
  lbTempo.Caption := FormatDateTime('hh:mm:ss',HoraInicio-Time);
  Application.ProcessMessages;
end;

procedure TFormProgress.FormShow(Sender: TObject);
begin
  inherited;
  HoraInicio := Time;
  Timer1.Enabled := True;
end;

procedure TFormProgress.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose := PodeFechar;
end;

end.
