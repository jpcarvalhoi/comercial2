unit uClone_TelaPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FuncoesGlobais, StdCtrls, ActnList, System.Actions;

type
  TFormClone_TelaPadrao = class(TForm)
    ActionList: TActionList;
    actFechar: TAction;
    procedure EditEnter(Sender: TObject);
    procedure EditExit(Sender: TObject);
    procedure SelectProximo(Sender: TObject; var Key: Char);
    procedure actFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Permissao : TPermissao;
  end;

var
  FormClone_TelaPadrao: TFormClone_TelaPadrao;

implementation

{$R *.dfm}

procedure TFormClone_TelaPadrao.actFecharExecute(Sender: TObject);
begin
  Close;

end;

procedure TFormClone_TelaPadrao.EditEnter(Sender: TObject);
begin
  EnterColorEdit(Sender);
end;

procedure TFormClone_TelaPadrao.EditExit(Sender: TObject);
begin
  ExitColorEdit(Sender);
end;

procedure TFormClone_TelaPadrao.SelectProximo(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    SelectNext((Sender as TWinControl), True, True);
  end;
end;

end.
