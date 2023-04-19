unit uNovaVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, StdCtrls, Buttons, ExtCtrls, ActnList, DB;

type
  TFormNovaVenda = class(TFormClone_TelaPadrao)
    pnNovaVenda: TPanel;
    Image1: TImage;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    cbTipo: TComboBox;
    procedure cbTipoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNovaVenda: TFormNovaVenda;

implementation

{$R *.dfm}

procedure TFormNovaVenda.cbTipoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    ModalResult := mrOk;
  end;
end;

end.
