unit uImportaProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, DBCtrls, Buttons, ExtCtrls, StrUtils, Mask,
  rxToolEdit, rxCurrEdit;

type
  TProducao = record
    PesoLiquido, Tara, PesoBruto : Double;
    Data : TDate;
    Hora : TTime;
    Veiculo, CodCliente : Integer
  end;

type
  EErroCliente = Class(Exception);

type
  TFormImportaProducao = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    dblkCliente: TDBLookupComboBox;
    Label1: TLabel;
    pb: TProgressBar;
    dsCliente: TDataSource;
    OpenDialog: TOpenDialog;
    mmLog: TMemo;
    Log: TLabel;
    Label2: TLabel;
    edValor: TCurrencyEdit;
    pnItamarati: TPanel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    edAgregado: TCurrencyEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    IDImportacao : Integer;

    function getIDVeiculo(Veiculo: Integer;Placa: String): Integer;
    function gravaProducao(Dados : TProducao): Boolean;
    function getIDCliente(Cliente: String): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

const
  tag_modMirai = 0;
  tag_modItamarati = 1;


var
  FormImportaProducao: TFormImportaProducao;

implementation

uses uDM, FuncoesGerais, uPrincipal, FuncoesGlobais;

{$R *.dfm}

function TFormImportaProducao.getIDCliente(Cliente : String) : Integer;
begin
  Result := 0;
  Cliente := Trim(Cliente);
  if Cliente = '' then Exit;

  if DM.qrlkCliente.Locate('nome',Cliente,[loCaseInsensitive]) then
  begin
    Result := DM.qrlkClientecodcliente.AsInteger;
  end
  else begin
    DM.qrlkCliente.Insert;
    DM.qrlkClientecodcliente.AsInteger := 0;
    DM.qrlkClientenome.Value := Cliente;
    DM.qrlkCliente.Post;

    if dm.qrlkClientenome.Value = Cliente then
      Result := DM.qrlkClientecodcliente.AsInteger;

  end;

end;

function TFormImportaProducao.getIDVeiculo(Veiculo : Integer; Placa: String): Integer;
begin
  Result := 0;
  if Veiculo > 0 then
  begin
    if DM.cdsCadVeiculo.Locate('codveiculo',Veiculo,[]) then
      Result := DM.cdsCadVeiculoidveiculo.Value
    else begin
      //cadastra o veiculo
      DM.cdsCadVeiculo.Insert;
      DM.cdsCadVeiculoidveiculo.Value := 0;
      DM.cdsCadVeiculocodveiculo.Value := Veiculo;
      DM.cdsCadVeiculoplaca.Value := Placa;
      DM.cdsCadVeiculo.Post;

      Result := DM.cdsCadVeiculoidveiculo.Value;
    end;
  end;
end;

function TFormImportaProducao.gravaProducao(Dados : TProducao) : Boolean;
begin
  Result := False;
  try
    if (Dados.Veiculo > 0) and (Dados.Data > 0) then
    begin
      DM.qrComando.Insert;
      DM.qrComando.FieldByName('idproducao').AsInteger := 0;
      DM.qrComando.FieldByName('idcliente').AsInteger := Dados.CodCliente;
      DM.qrComando.FieldByName('peso').AsFloat := Dados.PesoLiquido;
      DM.qrComando.FieldByName('valor_tonelada').value := 0;
      DM.qrComando.FieldByName('data').AsDateTime := Dados.Data;
      DM.qrComando.FieldByName('idveiculo').AsInteger := Dados.Veiculo;
      DM.qrComando.FieldByName('idusuario').AsInteger := mCodigoUsuario;
      DM.qrComando.FieldByName('valor_tonelada').AsCurrency := edValor.Value;
      DM.qrComando.FieldByName('valor_agregado').AsCurrency := edAgregado.Value;
      DM.qrComando.FieldByName('tara').AsCurrency := Dados.Tara;
      DM.qrComando.FieldByName('peso_bruto').AsCurrency := Dados.PesoBruto;
      DM.qrComando.FieldByName('tipo').Value := 'I';
      DM.qrComando.FieldByName('dtimportacao').AsDateTime := Now;
      DM.qrComando.FieldByName('idimportacao').asInteger := IDImportacao;
      if Dados.Hora >= 0 then
        DM.qrComando.FieldByName('hora').AsDateTime := Dados.Hora;

      DM.qrComando.Post;
      Result := True;
    end;
  except
    on E: Exception do begin
      if dm.qrComando.State in [dsEdit,dsInsert] then
        dm.qrComando.Cancel;
      mmLog.Lines.Add(E.Message);
     end;
  end;
end;

procedure TFormImportaProducao.BitBtn1Click(Sender: TObject);
var
  Arquivo : TStringList;
  i : Integer;
  linha, sfile : String;
  Dados : TStringArray;
  Importado : Boolean;
  Prod : TProducao;
begin
  if dblkCliente.Text = '' then
  begin
    Informa('Informe o Cliente/Mina');
    Exit;
  end;

  if edValor.Value <= 0 then
  begin
      Informa('Informe o valor por tonelada');
      Exit;
  end;

  if edAgregado.Value <=  0 then
  begin
    Informa('Informe o valor agregado.');
    Exit;
  end;


  if (tag = tag_modItamarati) then
  begin
    if DateEdit1.Date <= 0 then
    begin
      Informa('Informe a data referente aos lançamentos!');
      Exit;
    end;
  end;

  OpenDialog.FileName := 'Seleciona arquivo para importação';
  OpenDialog.Filter := 'Arquivo csv (*.csv)|*.csv';
  if OpenDialog.Execute then
  begin
    Arquivo := TStringList.Create;
    Arquivo.LoadFromFile(OpenDialog.FileName);
    pb.Max := Arquivo.Count;
    pb.Position := 0;
    pb.Visible := True;
    mmLog.Clear;
    Application.ProcessMessages;
    SetQuery(DM.qrComando,'Select max(IDImportacao) from tbproducao');
    IDImportacao := DM.qrComando.Fields[0].AsInteger;
    IDImportacao := IDImportacao + 1;
    SetQuery(DM.qrComando,'select * from tbproducao where idproducao = 0');

    DM.cdsCadVeiculo.Open;

    for i := 0 to arquivo.Count - 1 do
    begin
      linha := Arquivo.Strings[i];
      Importado := False;
      if tag = tag_modMirai then
      begin
        Dados := Split(';',linha) ;
        if Length(Dados) = 23 then
        begin
          try
            Prod.Data := StrToDateDef(dados[2],0);
            Prod.Veiculo := StrToIntDef(dados[4],0);
            Prod.PesoBruto := StrToFloatDef(dados[6],0);
            if Prod.PesoBruto > 0 then
              Prod.PesoBruto := Prod.PesoBruto / 1000;
            Prod.Tara := StrToFloatDef(dados[7],0);
            if Prod.Tara > 0 then
              Prod.Tara := Prod.Tara / 1000;
            Prod.PesoLiquido := StrToFloatDef(dados[8],0);
            if Prod.PesoLiquido > 0 then
              Prod.PesoLiquido := Prod.PesoLiquido / 1000;
            Prod.Hora := StrToTimeDef(dados[3],-1);

            if Prod.Veiculo > 0 then
            begin
              Prod.Veiculo := getIDVeiculo(Prod.Veiculo, Dados[5]);

              if (Prod.Veiculo > 0) and (Prod.Data > 0) then
              begin
                Prod.CodCliente := getIDCliente(dados[14]);
                if Prod.CodCliente <> dblkCliente.KeyValue then
                  raise EErroCliente.Create('Cliente/Mina não confere.');
              end;

              if gravaProducao(Prod) then
                  Importado := True;
            end;

          except
            on E:Exception do begin
              mmLog.Lines.Add(E.Message);
            end;
          end;
        end;

      end
      else if Tag = tag_modItamarati then
      begin
        Dados := Split(';',linha) ;
        if Length(Dados) = 10 then
        begin
          try
            Prod.Data := DateEdit1.Date;
            Prod.Veiculo := StrToIntDef(dados[0],0);
            Prod.PesoBruto := StrToFloatDef(dados[7],0);
            Prod.Tara := StrToFloatDef(dados[8],0);
            Prod.PesoLiquido := StrToFloatDef(dados[9],0);
            Prod.CodCliente := dblkCliente.KeyValue;
            Prod.Hora := -1;

            Prod.Veiculo := getIDVeiculo(Prod.Veiculo,Dados[1]);
            if gravaProducao(Prod) then
              Importado := True;

          except
            on E:Exception do begin
              mmLog.Lines.Add(E.Message);
            end;
          end;
        end;

      end;

      if not Importado then
        mmLog.Lines.Add('Registro não importado: '+ linha);

      pb.StepBy(1);
      Application.ProcessMessages;
    end;

    Arquivo.Free;

    Informa('Importação concluída.');
    if FileExists(OpenDialog.FileName) then begin
      if Pergunta('Deseja marcar o arquivo como importado?',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = id_yes then
      begin
        sfile := ChangeFileExt(OpenDialog.FileName,'.imp');
        if FileExists(sfile) then
          DeleteFile(sfile);
        RenameFile(OpenDialog.FileName,sfile);
      end;
    end;

  end;

end;

procedure TFormImportaProducao.FormShow(Sender: TObject);
begin
  if not dm.qrlkCliente.Active then
    dm.qrlkCliente.Open else dm.qrlkCliente.Refresh;

  pnItamarati.Visible := tag = tag_modItamarati;
end;

end.
