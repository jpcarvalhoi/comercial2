unit uConfigDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZConnection, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, ActnList, Registry;

type
  TConfig = record
    User,
    Password,
    Host,
    DBName : String;
  end;

type
  TFormConfigDB = class(TFormClone_TelaPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    edsenha: TEdit;
    edBanco: TEdit;
    edUser: TEdit;
    edServidor: TEdit;
    ZConnectionTest: TZConnection;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function  TestConnection (vConfig : TConfig): boolean;
    function   CheckRegistry(Config: TConfig; Read: boolean): TConfig;
    procedure edsenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Fbanco : String;




  public
    { Public declarations }
    PConfig : TConfig;
  end;

const
  myKey = 4518;

var
  FormConfigDB: TFormConfigDB;

implementation

uses EncryptString, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormConfigDB.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
  if self.Tag = 0 then
    Close;
end;

procedure TFormConfigDB.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    if edBanco.Text = '' then
    begin
      Application.MessageBox('Informe o nome do banco de dados.','Atenção',MB_ICONINFORMATION);
      edBanco.SetFocus;
    end
    else if edUser.Text = '' then
    begin
      Application.MessageBox('Informe o usuário da conexão.','Atenção',MB_ICONINFORMATION);
      edUser.SetFocus;
    end
   { else if edsenha.Text = '' then
    begin
       Application.MessageBox('Informe a senha de conexão.','Atenção',MB_ICONINFORMATION);
       edsenha.SetFocus;
    end  }
    else if edServidor.Text = '' then
    begin
       Application.MessageBox('Informe o endereço do servidor.','Atenção',MB_ICONINFORMATION);
       edServidor.SetFocus;
    end
    else begin
      Pconfig.User := edUser.Text;
      pconfig.Password := edsenha.Text;
      pconfig.Host := edServidor.Text;
      pconfig.DBName := edBanco.Text;
      CheckRegistry(pconfig,False);

      ModalResult := mrOk;
      if self.Tag = 0 then
        Close;
    end;
  except
    Informa('Erro ao salvar configurações.');
  end;
end;

procedure TFormConfigDB.BitBtn3Click(Sender: TObject);
begin
  inherited;
   PConfig.Host     := edServidor.Text;
   PConfig.Password := edsenha.Text;
   PConfig.User     := edUser.Text;
   PConfig.DBName   := edBanco.Text;
   if TestConnection(PConfig) then
     Informa('Conexão realizada com sucesso!')
   else
     Informa('Erro ao conectar, verifique os dados e tente novamente.');
end;

function TFormConfigDB.TestConnection (vConfig : TConfig) : boolean;
begin
  try
    with ZConnectionTest do begin
      HostName := vConfig.Host;
      User     := vConfig.User;
      Password := vConfig.Password;
      Catalog  := vConfig.DBName;
      Database := vConfig.DBName;
      Connected := True;
    end;
  except
  end;
  Result := ZConnectionTest.Connected;
end;

function TFormConfigDB.CheckRegistry (Config : TConfig; Read : Boolean) : TConfig;
var
  reg        : TRegistry;
  openResult : Boolean;
  today      : TDateTime;
begin
  try
    reg := TRegistry.Create(KEY_ALL_ACCESS);
    reg.RootKey := HKEY_LOCAL_MACHINE;

    openResult := reg.OpenKey('Software\Microsoft\JoaoP\ApplicationCon2\',True);

    { Checking if the values exist and inserting when neccesary }
  {  if not reg.KeyExists('CreationDate') then
      begin
        today := Now;
        reg.WriteDateTime('CreationDate', today);
      end;

    if not reg.KeyExists('LicencedTo') then
      begin
        reg.WriteString('LicencedTo', 'Testing');
      end;
   }
    if Read then
    begin
      Result.User := reg.ReadString('User');
      Result.Password := reg.ReadString('Password');
      Result.Host := reg.ReadString('Host');
      Result.DBName := reg.ReadString('DBName');

      if Result.User <> '' then
        Result.User := HexToString(Result.User);

      if Result.Password <> '' then
        Result.Password := HexToString(Result.Password);

      if Result.Host <> '' then
        Result.Host := HexToString(Result.Host);

      if Result.DBName <> '' then
        Result.DBName := HexToString(Result.DBName);

      {edsenha.Text := Result.Password;
      edBanco.Text := Result.DBName;
      edServidor.Text := Result.Host;
      edUser.Text := Result.User; }
    end
    else begin
       reg.WriteString('User',StringToHex(Config.User));
       reg.WriteString('Password',StringToHex(Config.Password));
       reg.WriteString('Host',StringToHex(Config.Host));
       reg.WriteString('DBName',StringToHex(Config.DBName));
    end;


  finally
    reg.CloseKey();
  end;
end;

procedure TFormConfigDB.edsenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = Ord('C')) then
    Key := 0;
end;

end.
