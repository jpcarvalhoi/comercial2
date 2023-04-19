unit ActiveHandleException;

interface

uses Forms, SysUtils, Classes, Dialogs;

type
  TActiveHandleException = class
  private
    FLogFile: String;
    procedure AppException(Sender: TObject; E: Exception);
  public
    constructor Create;
  end;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais;

{ TActiveHandleException }

procedure TActiveHandleException.AppException(Sender: TObject;
  E: Exception);
var
  Log: TextFile;
begin
{$I-}
  AssignFile(Log, FLogFile);
  if FileExists(FLogFile) then
    Append(Log)
  else
    Rewrite(Log);
  try
    WriteLn(Log,'-------------------------------------------------------------------');
    WriteLn(Log, 'Exception ocorrida em '+
      FormatDateTime('dd" de "mmmm" de "yyyy" às "hh:nn:ss', Now));
    if TComponent(sender) is TForm then
    begin
      WriteLn(Log,'Form.................: '+ TForm(sender).Name);
      WriteLn(Log,'Caption do Form......: '+TForm(sender).Caption);
    end else
    begin
      WriteLn(Log,'Form.................: '+TForm(TComponent(sender).Owner).Name);
      WriteLn(Log,'Caption do Form......: '+TForm(TComponent(sender).Owner).Caption);
    end;
    WriteLn(Log,'Classe da Exception..: '+E.ClassName);
    WriteLn(Log,'Mensagem da Exception: '+E.Message);
    WriteLn(Log,'-------------------------------------------------------------------');
    WriteLn(Log,'');
  finally
    CloseFile(Log);
  end;

  if Pos('server has gone', LowerCase(E.Message)) > 0 then
  begin //conexão perdida por tempo inativo, tenta reconectar
    DM.ZConnection.Reconnect;

    Informa('O Servidor ficou muito tempo inativo e a conexão foi perdida.'+#13+
            'O sistema se reconectou automaticamente, por favor tente novamete.');
  end;

{$I+}
end;

constructor TActiveHandleException.Create;
begin
  Application.OnException := AppException;
  FLogFile := ChangeFileExt(ParamStr(0), '.log');
end;

var
  ActiveExcetion: TActiveHandleException;

initialization
  ActiveExcetion := TActiveHandleException.Create;

finalization
  ActiveExcetion.Free;

end.

