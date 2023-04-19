unit uFTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP;

var
  myFTP : TIdFTP;

  procedure SetConfigFTP();


implementation

uses uDM, FuncoesGlobais, FuncoesGerais;

procedure SetConfigFTP;
begin
  try
    if not Assigned(myFTP) then
    begin
      myFTP := TIdFTP.Create(nil);
    end;

    if Assigned(myFTP) then
    begin
      if myFTP.Connected then
        myFTP.Disconnect;

      if not DM.cdsConfigs.Active then
        DM.cdsConfigs.Open;

      myFTP.Port := 21;
      myFTP.Host := DM.cdsConfigshost.Value;
      //myFTP.Passive := False;
      myFTP.Password := DM.cdsConfigssenha_ftp.Value;
      myFTP.Username := DM.cdsConfigsuser_ftp.Value;
      myFTP.ConnectTimeout := 10000;
      myFTP.Connect;

      if not myFTP.Connected then
        Informa('Verifique as configurações de FTP.'+#13+
                'Não será possível cadastrar ou exibir as fotos dos produtos');
    end;

  except
  end;
end;



end.
