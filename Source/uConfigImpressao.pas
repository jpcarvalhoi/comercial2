unit uConfigImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmConfigImressao = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    tbsVeiculo: TTabSheet;
    tbsConta: TTabSheet;
    rgvalor: TRadioGroup;
    ckpagina: TCheckBox;
    cbContas: TComboBox;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigImressao: TfrmConfigImressao;

implementation

{$R *.dfm}

procedure TfrmConfigImressao.FormShow(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[i].TabVisible := False;
  end;

  PageControl1.ActivePageIndex := Tag;
  cbContas.ItemIndex := 0;
end;

end.
