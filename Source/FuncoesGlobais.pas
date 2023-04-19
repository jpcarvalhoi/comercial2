unit FuncoesGlobais;

interface

uses
  SysUtils, Classes, DB, StdCtrls, SqlExpr, Windows, ShellAPI,
  ExtCtrls, Graphics, Forms, Controls, Messages,
  DBCtrls, DBCtrlsEh, Tlhelp32, Menus, ComObj, uPrincipal,
  ActiveX, MMSystem, Variants, Mask, ComCtrls, RxLookup, RXDBCtrl,
  IniFiles, ZDataset, rxToolEdit, DBGridEh, Buttons, RxDBComb, rxPlacemnt;

type
  TPermissao = record
    Incluir, Alterar, Excluir, Visualizar: Boolean;
  end;

type
  TCadPermissao = record
    Cod: Integer;
    Descricao: String;
  end;

type
  TCaixa = record
    idconta, idvenda: Integer;
    valor: currency;
    tipo: string;
    forma_pagamento: string;
    Descricao: string;
  end;

type
  TSaldoCaixa = record
    CreditoDinheiro, DebitoDinheiro, TotCartCredito, TotCartDebito,
      SaldoDinheiro, SaldoGeral: currency;
  end;

type
  TParcela = record
    ValorPrimeira, ValorDemais: currency;
  end;

type
  TTipoItem = (tProd, tKit);

procedure Incrementa(Nome_Tabela: String; Chave_Primaria: TField);
function HoraToMinutos(Hora: String): Double;
function MinutosToHora(Minutos: Double; ExibeSegundos: Boolean): String;
// Retorna as horas de um determinado minuto

// ********** funcoes para validacao de tipos **************
function SeInteiro(Param: String): Boolean;
function HoraValida(Hora: String): Boolean;

// ********** funcoes para tratamento de strings **************
function PrimeiroNome(Nome: String): String;
function RemoveAcento(Str: String): String;
function udf_CollateBr(Str: PChar): PChar;
function Replicate(Caracter: String; Quant: Integer): String;
function StrZero(Zeros: string; Quant: Integer): String;
function CentralizaStr(S: string; len: byte): string;
function Alltrim(const Search: string): string;
function EnDecryptString(StrValue: String; Chave: Word): String;
function gfCalculaCnpjCeiCpf(Numero: String): Boolean;
function ValidaPIS(nPIS: String): Boolean;
function gpAnsiToAscii(Str: String): String;
function Completa(S: String): String;
function fCentra(const vLinha: string): string;
// *************************************************************
Function ExecutaPrograma(Nome, Parametros: String;
  AguardarTermino: Boolean = False): Integer;

function GeraNomeArquivoTemp(Extensao_sem_ponto: String;
  NomeSugerido: String = ''): String;
function RetornaTamanhoArquivo(Arquivo: String): Integer;
function HexToInt(const HexStr: string): longint;
function GetIpAddress(): String;

{ procedure MudaWallPaper(const Image: TImage; const Stretch: Boolean;
  const CorFundo: TColor= $00F0F0F0; const PainelFundo: TPanel = nil); }
// Muda o wallpaper dentro do TImage especificado
function TrimAll(S: String): String;
function fBoolToStr(b: Boolean): String;
procedure GravaLogNoBanco(msg: String; Sistema: Boolean = False);
function ConvertToSQL(tags, FieldName: string): string;
procedure ExibeHint(msg: String; x, y: Integer);
Procedure Campos(vForm: TForm; Habilita: Boolean);

// ************** Tratamento de Hora e Data ******************************************
function fHoraToMinutos(Hora: String): Double;
function fMinutosToHora(Minutos: Double; ExibeSegundos: Boolean;
  MostraNegativo: Boolean = False): String; // Retorna as horas de um determinado minuto
function fCentesimalToHora(ValorCentesimal: String): String;
function gfDoubleHora(valor: Double; const TudoZeroBranco: Boolean = True)
  : string;
function gfHoraDouble(const Hora: string): Extended;
function CorrigeDateTime(const valor: TDateTime; const tipo: Char): TDateTime;
function gfIsValidStrDate(const _STRDATE: string): Boolean;
// ************************************************************************************
function ProcessoExiste(ExeFileName: string): Boolean;
function GetTempDirectory: String;
// function  AtualizaVersaoBanco(var VersaoAtual:String): Boolean;
procedure EnumFiles(Pasta, Arquivo: String; Files: TStrings;
  bEnumFolders: Boolean = True);
procedure EnumFolders(Root: String; Folders: TStrings);
function isTime(vTime: String): Boolean;
function Verifica_Demonstracao(ExibeMensagem: Boolean = True): Boolean;
procedure EnterColorEdit(Sender: TObject);
procedure ExitColorEdit(Sender: TObject);
function fAplicacaoLocal: Boolean;
function DiaUtil(DtInicio: TDateTime; DiasUteis: Integer): TDateTime;
// *************************************************************
function RetornaPermissao(Controle: Integer): TPermissao;
procedure AcessoNegado(acao: Integer);
function getDadosString(DataSet: TDataSet; alteracao: Boolean = False;
  GravaTodos: Boolean = False): String;
function GetLasID(): Int64;
procedure LookupClear(Sender: TDBLookupComboBox; var key: Word);
procedure SaveColumnsLayout(grid: TDbGridEh);
procedure RestoreColumnsLayout(grid: TDbGridEh);
function VerificaCaixaAberto(): String;
function fCaixaAberto(msg: Boolean): Boolean;
procedure RetornaSaldoCaixa;
function IntToStrNull(Value: Integer): String;
function CorrigeCurrency(Value: currency): currency;
function CalculaParcela(nParcelas: Integer; valor: currency): TParcela;
function fLocalizar(Tag: Integer): Integer; overload;
function fLocalizar(Tag: Integer; var Desc: String): Integer; overload;
function DescontaTaxa(valor, Taxa: currency): currency;
procedure Processa_Recebimento_CartaoCredito(Filtro: String);
procedure LimpaFilter(DataSet: TDataSet);
function MySqlData(Data: TDate): string;
function GetEstoqueAtual(IDProduto: Integer): Integer;
function GetEstoqueKit(IDKit: Integer): Integer;
procedure LoadConfigLocal(FormStorage: TFormStorage);
function TipoItem(Tab: String): TTipoItem;
function Porcentagem(Taxa, valor: Double): Double;
function getMeta(Data: TDate; Veiculo: Integer): Boolean;
function ValidaLicenca(MostrarForm : Boolean; pLicenca : String) : Boolean;
function SelCliente(var Nome : String; Prefeitura : Boolean = False): Integer;
procedure MascaraTelefone(Field : TField);
procedure setConfigLocal;
procedure setPrecoProduto(CodProduto: Integer; Atualizar : Boolean);
function  getPrecoCliente(IDProduto, IDCliente : Integer) : Boolean;
procedure CalculaParcelas(DataSet : TDataSet);
function  LocalizaProduto(var Desc : String) : Integer;
function  removePercentual(Valor, Taxa : Currency) : Currency;
function  addPercentual(Valor, Taxa : Currency) : Currency;

const
  // ---------- Informações sobre a versao do software ----------------------------------------
  // ************ MUITO IMPORTANTE: Mude os 2 caso o banco foi modificado************

  VersaoBanco = 1;
  VersaoSistema = '1.0.13';
  // ------------------------------------------------------------------------------------------
  Programa: String = 'Comércio';
  Produto: String = 'Comércio';

  CHAVE_CRIPTOGRAFIA = 'I2';

  Semana: array [1 .. 7] of string[15] = ('Domingo', 'Segunda', 'Terça',
    'Quarta', 'Quinta', 'Sexta', 'Sábado');
  SemanaShort: array [1 .. 7] of string[3] = ('Dom', 'Seg', 'Ter', 'Qua',
    'Qui', 'Sex', 'Sáb');

  aPermissoes: array [0 .. 12] of TCadPermissao = ((Cod: 1;
      Descricao: 'Cadastro de Usuários do Sistema.'), (Cod: 2;
      Descricao: 'Configurações do Sistema.'), (Cod: 3;
      Descricao: 'Cadastro de Clientes.'), (Cod: 4;
      Descricao: 'Cadastro de Fornecedores.'), (Cod: 5;
      Descricao: 'Cadastro de Categoria de Produtos.'), (Cod: 6;
      Descricao: 'Cadastro de Produtos.'), (Cod: 7;
      Descricao: 'Cadastro de Estoque.'), (Cod: 8;
      Descricao: 'Cadastro de Cartões.'), (Cod: 9; Descricao: 'Caixa.'),
    (Cod: 10; Descricao: 'Cadastro de Grupo de Contas.'), (Cod: 11;
      Descricao: 'Cadastro de Contas.'), (Cod: 12;
      Descricao: 'Venda de Produtos e Orçamento.'), (Cod: 13;
      Descricao: 'Efetuar Backup do Sistema.'));

  ColorFundo = $00F0F0F0;
  ColorGrid = clYellow;

  BANCO_DADOS = 'CONSULTA.FDB';

  maskCPF = '999.999.999-99;0;_';
  maskCNPJ = '99.999.999/9999-99;0;_';

  Negado_visualizar = 0;
  Negado_alterar = 1;
  Negado_incluir = 2;
  Negado_excluir = 3;

  sTrue: String = 'T';
  sFalse: String = 'F';

  // formas de pagamento
  fpg_dinheiro = 'Dinheiro';
  fpg_cartaoCre = 'Cartão Crédito';
  fpg_cartaoDe = 'Cartão Débito';
  fpg_cheque = 'Cheque';
  fpg_prazo = 'Prazo';
  fpg_misto = 'Misto';
  fpg_deposito = 'Depósito';
  fpg_transferencia = 'Transferência';

  // status cheque
  cheque_pendente = 'P';
  cheque_compensado = 'C';
  cheque_repassado = 'R';
  cheque_devolvido = 'D';

  idx_dinheiro = 0;
  idx_cartao = 1;
  idx_prazo = 2;
  idx_cheque = 3;
  idx_misto = 4;
  idx_deposito = 5;
  idx_transferencia = 6;

  _Credito = 'R';
  _Debito = 'D';

  tag_venda = 0;
  tag_orcamento = 1;
  tag_conta = 2;

  tipo_pedido    = 'P';
  tipo_estoque   = 'E';
  tipo_orcamento = 'O';
  tipo_venda     = 'V';

  _RegLicenca = '\Software\JoaoP\Comercio\';

//  Controle de Versão
  LiberaKit          = False;
  LiberaContas       = True;
  LiberaVeiculos     = True;
  LiberaFuncionarios = True;


var
  PathBancoDados, mPath, PathTMP, PathScripts, _Erro_Banco, mPathLogo: String;
  ArqIni: String;
  mNomeUsuario: String; // usuario logado
  mCodigoUsuario: Integer; // usuario logado

  UsuarioEstacao: String;
  NOMEESTACAO: String;
  NUMERO_ESTACAO: Integer;
  DEMONSTRACAO: Boolean; // seta se o fotware está como demonstração ou não
  LICENCAINVALIDA: Boolean; // indica licenciamento inválido impede abertura das telas setada no inicio do programa e ao fechar cadastro de clientes e empresas
  ESTACAO_LOCAL: Boolean; // indica se estação local ou estação servidora;
  IP_ESTACAO: string; // endereco ip da estação

  // cor do preenchimento das edits
  CorEdit: TColor;

  // controle de segurança
  Chave_Ativacao: string;

  CaixaAberto: Boolean; // indica se o caixa está aberto ou fechado.

implementation

uses WinSock, uDM, uLocalizar, FuncoesGerais, uSeguranca, uConfigs, uSelCliente,
  uSelProduto;

function SeInteiro(Param: String): Boolean;
begin
  Result := True;
  try
    if Param <> '' then
      StrToInt64(Param);
  except
    Result := False;
  end;
end;

function GeraNomeArquivoTemp(Extensao_sem_ponto: String;
  NomeSugerido: String = ''): String;
// Gera um nome para um arquivo temporario com a extensao informada. Se o nome sugerido for='', gera um nome 'temp'...
// e acrescenta a path
begin
  Result := PathTMP + NomeSugerido + '_temp' + FormatDateTime
    ('ddmmyyyyhhmmsszzz', now) + '.' + Extensao_sem_ponto;
end;

procedure Incrementa(Nome_Tabela: String; Chave_Primaria: TField);
var
  Qry: TZQuery;
begin
  if Chave_Primaria.DataSet.State <> dsInsert then
    exit; // termina a execução caso não esteja em modo de inserção
  Qry := TZQuery.Create(nil); // cria uma instância do objeto
  try
    Qry.Connection := DM.ZConnection; // componente de conexão
    Qry.SQL.Add('SELECT MAX(' + Chave_Primaria.FieldName + ') FROM ' +
        Nome_Tabela);
    Qry.Open;
    if Qry.Fields[0].IsNull then // se a tabela está vazia retornará nulo
      Chave_Primaria.AsInteger := 1 // então este será o primeiro registro
    else
      Chave_Primaria.AsInteger := Qry.Fields[0].AsInteger + 1;
  finally
    FreeAndNil(Qry); // tira o objeto da memória
  end;
end;

function PrimeiroNome(Nome: String): String;
// Extrai o primeiro nome de uma pessoa
var
  PNome: String;
begin
  PNome := '';
  if pos(' ', Nome) <> 0 then
  begin
    PNome := copy(Nome, 1, pos(' ', Nome) - 1);
    Result := PNome;
  end
  else
    Result := Nome;
end;

function Replicate(Caracter: String; Quant: Integer): String;
{ Repete o mesmo caractere várias vezes }
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Quant do
    Result := Result + Caracter;
end;

function StrZero(Zeros: string; Quant: Integer): String;
{ Insere Zeros à frente de uma string }
var
  I, Tamanho: Integer;
  aux: string;
begin
  aux := Zeros;
  Tamanho := length(Zeros);
  Zeros := '';
  for I := 1 to Quant - Tamanho do
    Zeros := Zeros + '0';
  aux := Zeros + aux;
  StrZero := aux;
end;

function AlinhaDireita(S: string; N: Integer): string;
// alinha uma string à direita
begin
  Result := Format('%' + IntToStr(N) + '.' + IntToStr(N) + 's', [S]);
end;

function CentralizaStr(S: string; len: byte): string;
// Centraliza uma string em um espaço determinado
var
  Str: String;
  L: byte;
begin
  Str := '';
  S := Alltrim(S);
  if len < length(S) then
  begin
    Result := '';
    exit;
  end;
  L := (len - length(S)) div 2;
  while L > 0 do
  begin
    Str := Str + ' ';
    dec(L);
  end;
  for L := 1 to length(S) do
  begin
    Str := Str + S[L];
  end;
  if length(Str) < len then
  begin
    L := (len - length(Str));
    while L > 0 do
    begin
      Str := Str + ' ';
      dec(L);
    end;
  end;

  Result := Str;
end;

function Alltrim(const Search: string): string;
{ Remove os espaços em branco de ambos os lados da string }
const
  BlackSpace = [#33 .. #126];
var
  Index: byte;
begin
  Index := 1;
  while (Index <= length(Search)) and not(Search[Index] in BlackSpace) do
  begin
    Index := Index + 1;
  end;
  Result := copy(Search, Index, 255);
  Index := length(Result);
  while (Index > 0) and not(Result[Index] in BlackSpace) do
  begin
    Index := Index - 1;
  end;
  Result := copy(Result, 1, Index);
end;

function HoraToMinutos(Hora: String): Double; // Retorna os minutos de uma determinada hora  (hhh:mm)
var
  sHora, sMinuto: Integer;
begin
  Result := 0;
  if Hora <> '' then
  begin
    if length(Hora) = 8 then // Caso o formato seja hh:mm:ss
      Delete(Hora, 6, 3); // Passa para o formato hh:mm

    if length(Hora) = 5 then
      Insert('0', Hora, 0); // insere 0 na hora pra ficar no formato hhh:mm

    if length(Hora) = 0 then
      Insert('000:00', Hora, 0); // insere 0 na hora pra ficar no formato hhh:mm

    while pos(' ', Hora) > 0 do
      Delete(Hora, pos(' ', Hora), 1);

    sHora := StrToInt(copy(Hora, 1, length(Hora) - 3));
    sMinuto := StrToInt(copy(Hora, length(Hora) - 1, 2));

    Result := (sHora * 60) + sMinuto;
  end;
end;

function MinutosToHora(Minutos: Double; ExibeSegundos: Boolean): String;
// Retorna as horas de um determinado minuto
var
  Hor, Min: Double;
  HoraS, MinS: String;
begin
  Hor := Abs(Trunc(Minutos) div 60);
  Min := Abs(Trunc(Minutos) mod 60);

  if length(FloatToStr(Abs(Hor))) = 1 then
    HoraS := '0' + FloatToStr(Hor) + ':'
  else
    HoraS := FloatToStr(Abs(Hor)) + ':';

  if length(FloatToStr(Abs(Min))) = 1 then
    MinS := '0' + FloatToStr(Abs(Min))
  else
    MinS := FloatToStr(Abs(Min));

  if ExibeSegundos then
    Result := HoraS + MinS + ':00'
  else
  begin
    Result := HoraS + MinS;
  end;
end;

function ExecAndWait(const FileName, Params: string;
  const WindowState: Word): Boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
  { Coloca o nome do arquivo entre aspas. Isto é necessário devido aos espaços contidos em nomes longos }
  // CmdLine := '"' + Filename + '"' + Params;
  CmdLine := FileName + ' ' + Params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do
  begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, False,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    PChar(ExtractFilePath(FileName)), SUInfo, ProcInfo);
  { Aguarda até ser finalizado }
  if Result then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

function EnDecryptString(StrValue: String; Chave: Word): String;
var
  I: Integer;
  OutValue: String;
begin
  OutValue := '';
  for I := 1 to length(StrValue) do
    OutValue := OutValue + Char(Not(ord(StrValue[I]) - Chave));
  Result := OutValue;
end;

function gfCalculaCnpjCeiCpf(Numero: String): Boolean;
Var
  I, d, b, Digito: byte;
  Soma: Integer;
  CNPJ, CPF: Boolean;
  DgPass, DgCalc: String;

  function IIf(pCond: Boolean; pTrue, pFalse: Variant): Variant;
  begin
    If pCond Then
      Result := pTrue
    else
      Result := pFalse;
  end;

  function ValidaCEI(StrCEI: String): Boolean;
  const
    PESO = '74185216374';
  var
    Numero, DV_DIG, StrSoma: String;
    Soma, I, valor1, valor2, resto, PRIDIG: Integer;
  begin
    Result := True;

    if length(Trim(StrCEI)) = 0 then
      exit;

    Numero := copy(StrCEI, length(StrCEI) - 12 + 1, 12);
    DV_DIG := copy(Numero, 12, 1);
    Soma := 0;

    for I := 1 to 11 do
      Soma := Soma + (StrToInt(copy(Numero, I, 1)) * StrToInt(copy(PESO, I, 1))
        );

    StrSoma := FormatFloat('0000', Soma);
    valor1 := StrToInt(copy(StrSoma, 4, 1));
    valor2 := StrToInt(copy(StrSoma, 3, 1));
    resto := (valor1 + valor2) Mod 10;

    if resto <> 0 then
      PRIDIG := 10 - resto;

    if PRIDIG <> StrToInt(DV_DIG) then
      Result := False;
  end;

begin
  Result := False;
  Numero := ApenasNumerosStr(Numero);
  // Caso o número não seja 11 (CPF) ou 14 (CNPJ), aborta

  CPF := length(Numero) = 11;
  CNPJ := length(Numero) = 14;

  if not(length(Numero) in [11, 12, 14]) then
    exit;

  if CPF or CNPJ then
  begin
    // Separa o número do dígito
    DgCalc := '';
    DgPass := copy(Numero, length(Numero) - 1, 2);
    Numero := copy(Numero, 1, length(Numero) - 2);
    // Calcula o digito 1 e 2
    for d := 1 to 2 do
    begin
      b := IIf(d = 1, 2, 3); // BYTE
      Soma := IIf(d = 1, 0, STRTOINTDEF(DgCalc, 0) * 2);
      for I := length(Numero) downto 1 do
      begin
        Soma := Soma + (ord(Numero[I]) - ord('0')) * b;
        Inc(b);
        if (b > 9) And CNPJ Then
          b := 2;
      end;
      Digito := 11 - Soma mod 11;
      if Digito >= 10 then
        Digito := 0;
      DgCalc := DgCalc + Chr(Digito + ord('0'));
    end;
    Result := DgCalc = DgPass;
  end
  else
    Result := ValidaCEI(Numero);
end;

function RetornaTamanhoArquivo(Arquivo: String): Integer;
// Retorna o tamanho do arquivo em bytes.
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
    try
      Result := Size;
    finally
      Free;
    end;
end;

function RemoveAcento(Str: String): String;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  x: Integer;
begin
  for x := 1 to length(Str) do
    if pos(Str[x], ComAcento) <> 0 then
      Str[x] := SemAcento[pos(Str[x], ComAcento)];
  Result := Str;
end;

function HoraValida(Hora: String): Boolean;
begin
  try
    StrToTime(Hora);
    Result := True;
  except
    Result := False;
  end;

end;

Function HexToInt(const HexStr: string): longint;
var
  iNdx: Integer;
  cTmp: Char;
begin
  Result := 0;
  for iNdx := 1 to length(HexStr) do
  begin
    cTmp := HexStr[iNdx];
    case cTmp of
      '0' .. '9':
        Result := 16 * Result + (ord(cTmp) - $30);
      'A' .. 'F':
        Result := 16 * Result + (ord(cTmp) - $37);
      'a' .. 'f':
        Result := 16 * Result + (ord(cTmp) - $57);
    else
      raise EConvertError.Create('Número hexadecimal inválido');
    end;
  end;
end;

function GetIpAddress(): String;
var
  lHostEnt: PHostEnt;
  lHostName: array [0 .. 128] of Char;
  lIPAddress: PAnsiChar;
  wVersionRequested: Word;
  wsaData: TWSAData;
begin
  try
    wVersionRequested := MAKEWORD(1, 1);
    WSAStartup(wVersionRequested, wsaData);

    // Pega o nome do computador
    WinSock.GetHostName(@lHostName, 128);
    // Pega as informações do sistema
    lHostEnt := WinSock.GetHostByName(@lHostName);
    // Pega o número do IP
    lIPAddress := WinSock.iNet_ntoa(WinSock.PInAddr(lHostEnt^.h_addr_list^)^);
    // Retorna o número do IP
    Result := String(lIPAddress);
    WSACleanup;
  except
    Result := '0.0.0.0';
  end;
end;

{ procedure MudaWallPaper(const Image: TImage; const Stretch: Boolean;
  const CorFundo: TColor= $00F0F0F0; const PainelFundo: TPanel = nil);
  //Muda o wallpaper dentro do TImage especificado
  var
  ImgTemp: String;
  begin
  try
  DMImagens.cdsImagensGerais.Open;
  if DMImagens.cdsImagensGeraisWALLPAPER_IPONTO.AsString<>'' then
  begin
  ImgTemp:= GeraNomeArquivoTemp('JPG','Wallpaper');
  DMImagens.cdsImagensGeraisWALLPAPER_IPONTO.SaveToFile(ImgTemp);
  Image.Stretch:= Stretch;
  Image.Picture.LoadFromFile(ImgTemp);
  DeleteFile(Pchar(ImgTemp));
  end
  else
  Image.Picture.Graphic:= nil;


  if PainelFundo <> nil then
  begin
  try
  PainelFundo.Color:= CorFundo;
  except
  PainelFundo.Color:= $00F0F0F0;
  end;
  end;
  except
  DMImagens.cdsImagensGerais.Close;
  end;
  DMImagens.cdsImagensGerais.Close;

  end; }

function TrimAll(S: String): String;
var
  I: Integer;
  aux: String;
begin
  aux := '';
  for I := 1 to length(S) do
    if S[I] <> ' ' then
      aux := aux + S[I];
  Result := aux;
end;

function fBoolToStr(b: Boolean): String;
begin
  if b then
    Result := sTrue
  else
    Result := sFalse;
end;

procedure GravaLogNoBanco(msg: String; Sistema: Boolean = False);
begin
  with DM do
  begin
    if not qrInsertLog.Active then
      qrInsertLog.Open;
    qrInsertLog.Insert;
    qrInsertLogidtblog.Value := 0;
    qrInsertLogusuario.Value := mNomeUsuario;
    qrInsertLogacao.Value := msg;
    qrInsertLogsistema.Value := fBoolToStr(Sistema);
    qrInsertLog.Post;
  end;
end;

Function ExecutaPrograma(Nome, Parametros: String;
  AguardarTermino: Boolean = False): Integer;
Var
  Info: TShellExecuteInfo;
  Ok: Boolean;
begin
  FillChar(Info, SizeOf(Info), Chr(0));
  Info.cbSize := SizeOf(Info);
  Info.fMask := SEE_MASK_NOCLOSEPROCESS;
  Info.lpVerb := 'open';
  Info.lpFile := PChar(Nome);
  Info.lpParameters := PChar(Parametros);
  Info.lpDirectory := PChar(ExtractFilePath(Application.ExeName));
  Info.nShow := SW_SHOW;
  Ok := Boolean(ShellExecuteEx(@Info));
  if (Ok and AguardarTermino) then
  Begin
    While WaitForSingleObject(Info.hProcess, 100) = WAIT_TIMEOUT do
      Application.ProcessMessages;
    Ok := GetExitCodeProcess(Info.hProcess, DWORD(Result));
  End;
  if not Ok then
    Result := -1;
end;

function udf_CollateBr(Str: PChar): PChar;
begin
  Result := Str;

  while Str^ <> #0 do
  begin
    case Str^ of
      'á', 'â', 'ã', 'à', 'ä', 'å', 'Á', 'Â', 'Ã', 'À', 'Ä', 'Å':
        Str^ := 'A';

      'é', 'ê', 'è', 'ë', 'É', 'Ê', 'È', 'Ë':
        Str^ := 'E';

      'í', 'î', 'ì', 'ï', 'Í', 'Î', 'Ì', 'Ï':
        Str^ := 'I';

      'ó', 'ô', 'õ', 'ò', 'ö', 'Ó', 'Ô', 'Õ', 'Ò', 'Ö':
        Str^ := 'O';

      'ú', 'û', 'ù', 'ü', 'Ú', 'Û', 'Ù', 'Ü':
        Str^ := 'U';

      'ç', 'Ç':
        Str^ := 'C';

      'ñ', 'Ñ':
        Str^ := 'N';

      'ý', 'ÿ', 'Ý', 'Ÿ':
        Str^ := 'Y';
    else
      if ord(Str^) > 127 then
        Str^ := #32;
    end;

    Inc(Str);
  end;
end;

function FormataCracha(Cracha: String; Digitos: Integer = 16): String;
begin
  if length(Cracha) = Digitos then
  begin
    Result := Cracha;
    exit;
  end;

  if length(Cracha) < Digitos then // completa com zeros
  begin
    while length(Cracha) < Digitos do
      Cracha := '0' + Cracha;
  end
  else
  begin
    Cracha := copy(Cracha, length(Cracha) - Digitos + 1, Digitos);

  end;
  Result := Cracha;
end;

function ConvertToSQL(tags, FieldName: string): string;
var
  AntPoschar, PosChar, count1, Count: Integer;
  Chr: Char;
  Str: string;

  function MyInt(StrAux: string): string;
  begin
    if StrAux <> '' then
      try
        Result := (StrAux);
      except
        Result := 'ERRO';
      end
    else
      Result := '*';
  end;

begin
  PosChar := 0;
  AntPoschar := 0;
  Str := '';
  Chr := ';';
  if tags[length(tags)] <> ';' then
    tags := tags + ';';

  for count1 := 1 to length(tags) do
  begin
    // isso aqui é porque não é possível alterar a varíavel do loop.... "count"
    Count := count1;
    // Para cada curinga eu pego a posição do antepenúltimo e do último curingas.
    if (tags[Count] in [';', '-']) then
    begin
      // Aqui é verificado se a seqüência já terminou
      if (tags[Count] = ';') then
      begin
        // Quando o curinga anterior for ';' indica um único número ...
        if (Chr = ';') then
        begin
          if (MyInt(copy(tags, PosChar + 1, Count - (PosChar + 1))) <> '*') and
            (MyInt(copy(tags, PosChar + 1, Count - (PosChar + 1))) <> 'ERRO')
            then
            Str := Str + '(cast(' + FieldName + ' as float) = ' + MyInt
              (copy(tags, PosChar + 1, Count - (PosChar + 1))) + ') or ';
        end;

        // Quando o curinga anterior for '-' indica um intervalo de números...
        if Chr = '-' then
        begin
          // Intervalo completo (com início e fim)
          if (MyInt(copy(tags, AntPoschar + 1, PosChar - (AntPoschar + 1)))
              <> '*') and (MyInt(copy(tags, PosChar + 1,
                Count - (PosChar + 1))) <> '*') and
            (MyInt(copy(tags, AntPoschar + 1, PosChar - (AntPoschar + 1)))
              <> 'ERRO') and (MyInt(copy(tags, PosChar + 1,
                Count - (PosChar + 1))) <> 'ERRO') then
            Str := Str + '(cast(' + FieldName + ' as float) between ' + MyInt
              (copy(tags, AntPoschar + 1, PosChar - (AntPoschar + 1)))
              + ' and ' + MyInt(copy(tags, PosChar + 1,
                Count - (PosChar + 1))) + ') or ';

          // Intervalo incompleto (sem final)
          if (MyInt(copy(tags, PosChar + 1, Count - (PosChar + 1))) = '*') and
            (MyInt(copy(tags, AntPoschar + 1, PosChar - (AntPoschar + 1)))
              <> '*') and (MyInt(copy(tags, AntPoschar + 1,
                PosChar - (AntPoschar + 1))) <> 'ERRO') then
            Str := Str + '(cast(' + FieldName + ' as float) >= ' + MyInt
              (copy(tags, AntPoschar + 1, PosChar - (AntPoschar + 1)))
              + ') or ';

          // Intervalo incompleto (sem início)
          if (MyInt(copy(tags, AntPoschar + 1, PosChar - (AntPoschar + 1)))
              = '*') and (MyInt(copy(tags, PosChar + 1,
                Count - (PosChar + 1))) <> '*') and
            (MyInt(copy(tags, PosChar + 1, Count - (PosChar + 1))) <> 'ERRO')
            then
            Str := Str + '(cast(' + FieldName + ' as float) <= ' + MyInt
              (copy(tags, PosChar + 1, Count - (PosChar + 1))) + ') or ';
        end;
      end;

      // Para cada curinga eu pego a posição do antepenúltimo e do último curingas.
      AntPoschar := PosChar;
      PosChar := Count;
      Chr := tags[Count];
    end;
  end;
  if Str <> '' then
    Result := copy(Str, 1, length(Str) - 4);
end;

procedure ExibeHint(msg: String; x, y: Integer);
var
  R: TRect;
  p: Integer;
  posMouse: TPoint;
begin
  with THintWindow.Create(Application) do
  begin
    try
      { Calcula o retângulo }
      R := CalcHintRect(Screen.Width, msg, nil);
      posMouse := Mouse.CursorPos;

      { Centraliza horizontalmente }
      p := R.Right - R.Left + 1;
      R.Left := posMouse.x;
      R.Right := R.Left + p;

      { Centraliza verticalmente }
      p := R.Bottom - R.Top + 1;
      R.Top := posMouse.y;
      R.Bottom := R.Top + p;

      { Mostra }
      ActivateHint(R, msg);
      Update;
      { Aguarda }
      Sleep(2000);
    finally
      Free;
    end;
  end;

end;

Procedure Campos(vForm: TForm; Habilita: Boolean);
var
  I: Integer;
begin
  for I := 0 to vForm.ComponentCount - 1 do
  begin
    if (vForm.Components[I] is TDBEdit) then (vForm.Components[I] as TDBEdit)
      .Enabled := Habilita
    else if (vForm.Components[I] is TLabel) then (vForm.Components[I] as TLabel)
      .Enabled := Habilita
    else if (vForm.Components[I] is TDBLookupComboBox) then
  (vForm.Components[I] as TDBLookupComboBox)
      .Enabled := Habilita
    else if (vForm.Components[I] is TDBRadioGroup) then
  (vForm.Components[I] as TDBRadioGroup)
      .Enabled := Habilita
    else if (vForm.Components[I] is TDBMemo) then
  (vForm.Components[I] as TDBMemo)
      .Enabled := Habilita
    else if (vForm.Components[I] is TDBDateTimeEditEh) then
  (vForm.Components[I] as TDBDateTimeEditEh)
      .Enabled := Habilita
    else if (vForm.Components[I] is TDBComboBox) then
  (vForm.Components[I] as TDBComboBox)
      .Enabled := Habilita
    else if (vForm.Components[I] is TSpeedButton) then
  (vForm.Components[I] as TSpeedButton)
      .Enabled := Habilita
    else if (vForm.Components[I] is TLabeledEdit) then
  (vForm.Components[I] as TLabeledEdit)
      .Enabled := Habilita
    else if (vForm.Components[I] is TRxDBComboBox) then
  (vForm.Components[I] as TRxDBComboBox)
      .Enabled := Habilita
    else if (vForm.Components[I] is TDateEdit) then
  (vForm.Components[I] as TDateEdit)
      .Enabled := Habilita
    else if (vForm.Components[I] is TDBDateEdit) then
  (vForm.Components[I] as TDBDateEdit)
      .Enabled := Habilita
    else if (vForm.Components[I] is TCheckBox) then
  (vForm.Components[I] as TCheckBox)
      .Enabled := Habilita;

  end;
end;

function fHoraToMinutos(Hora: String): Double; // Retorna os minutos de uma determinada hora  (hhh:mm)
var
  sHora, sMinuto: Integer;
  aux: string;
begin // --- fHoraToMinutos---
  Result := 0;
  if Hora <> '' then
  begin
    if copy(Hora, length(Hora), 1) = ':' then
      Delete(Hora, length(Hora), 1);

    aux := copy(Hora, 0, pos(':', Hora) - 1);

    if (length(aux) < 3) and (StrToInt(aux) <= 23) and (StrToInt(aux) >= 0) then
      Hora := FormatDateTime('hh:mm', StrToTime(Hora));

    if length(Hora) = 8 then // Caso o formato seja hh:mm:ss
      Delete(Hora, 6, 3); // Passa para o formato hh:mm

    while length(aux) < 3 do
    begin
      Hora := '0' + Hora;
      aux := '0' + aux;
    end;

    if length(Hora) = 0 then
      Insert('000:00', Hora, 0); // insere 0 na hora pra ficar no formato hhh:mm

    while pos(' ', Hora) > 0 do
      Delete(Hora, pos(' ', Hora), 1);

    sHora := StrToInt(copy(Hora, 1, length(Hora) - 3));
    sMinuto := StrToInt(copy(Hora, length(Hora) - 1, 2));
    // Result := Abs((StrToFloat(Copy(Hora,0,3))*60) + StrToFloat(Copy(Hora,5,2)));

    Result := (sHora * 60) + sMinuto;
  end;
end; // ---fHoraToMinutos---

function fMinutosToHora(Minutos: Double; ExibeSegundos: Boolean;
  MostraNegativo: Boolean = False): String; // Retorna as horas de um determinado minuto
var
  Hor, Min: Double;
  HoraS, MinS: String;
begin // ---fMinutosToHora--
  { if ((Minutos/0.875) = 1) then
    Begin
    Result := '00:01';
    End
    Else }
  Begin

    // ------  correçao do arredondamento por desconsiderar a parte fracionária ou segundos.
    if Abs(Frac(Minutos)) >= 0.5 then
      Minutos := Minutos + 1;
    // ----------------------------------------------------------------------------

    Hor := Abs(Trunc(Minutos) div 60);
    Min := Abs(Trunc(Minutos) mod 60);

    if length(FloatToStr(Abs(Hor))) = 1 then
      HoraS := '0' + FloatToStr(Hor) + ':'
    else
      HoraS := FloatToStr(Abs(Hor)) + ':';

    if length(FloatToStr(Abs(Min))) = 1 then
      MinS := '0' + FloatToStr(Abs(Min))
    else
      MinS := FloatToStr(Abs(Min));

    if ExibeSegundos then
      Result := HoraS + MinS + ':00'
    else
    begin
      Result := HoraS + MinS;
    end;

    if MostraNegativo then
    begin
      if Minutos < 0 then
        Result := '-' + Result;
    end;

  End;
end; // ---fMinutosToHora--

function fCentesimalToHora(ValorCentesimal: String): String;
var
  HoraS, Centesimos: Integer;
  Minutos: real;
begin
  try
    HoraS := Trunc(int(StrToFloat(ValorCentesimal)));
    Centesimos := Trunc(Frac(StrToFloat(ValorCentesimal)));
    Minutos := int((Centesimos / 10) * 60);
    Result := FormatFloat('#00', HoraS) + ':' + FormatFloat('00', Minutos);
  except
    Result := '00:00';
  end;

end;

function gfDoubleHora(valor: Double; const TudoZeroBranco: Boolean = True)
  : string;
var // ---------------------------------------            //  Retorna uma string com a hora, mesmo
  Hora, // que esta seja maior que 23:59:59.
  Minuto: Integer; // ---------------------------------------
  HoraS, Minutos: string;
  Negativo: Boolean;
begin // --- gfDoubleHora ---        //-----------------------------------------------
  Negativo := valor < 0;
  // Isola a parte inteira do número que será o dia

  valor := valor * 24; // Isola a pparte fracionária e multiplica por 24
  Hora := Abs(Trunc(valor)); // para obter a hora no formato sexagesimal na

  valor := Abs(Frac(valor) * 60); // parte inteira do resultado e multiplica a parte
  Minuto := Abs(Round(valor)); // fracionária por 60 para obter os minutos.
  if Minuto >= 60 then // -----------------------------------------------
  begin // Se o minuto der maior que 60, acrescenta 1 na hora
    Hora := Hora + 1; // e subtrai 60 nos minutos.
    Minuto := Minuto - 60; // -----------------------------------------------
  end; // ----------------------------------------------------
  HoraS := Format('%.2d', [(Hora)]); // Acrescenta o dia na forma de horas à hora e formata
  Minutos := Format('%.2d', [Minuto]); // Formata os minutos //------------------------------
  if (STRTOINTDEF(HoraS, 0) = 0) and (STRTOINTDEF(Minutos, 0) = 0) then
    if TudoZeroBranco then
      Result := ''
    else
      Result := '00:00'
    else
    begin
      if Negativo then
        Result := '-' + HoraS + ':' + Minutos
      else
        Result := HoraS + ':' + Minutos;
    end;
end; // --- gfDoubleHora ---

function gfHoraDouble(const Hora: string): Extended;
// ---------------------------------------
var
  c: string;
  Negativo: Boolean;
begin // --- gfHoraDouble ---                          // Transforma uma hora string em double,
  if (Trim(Hora) = ':') or (Hora = '') then // mesmo que ela seja maior que 23:59:59.
    Result := 0 // ---------------------------------------
  else
    try
      Negativo := False;
      c := (copy(Hora, 1, pos(':', Hora) - 1));
      if copy(c, 1, 1) = '-' then // correção de erro que ocorria quando
      begin
        c := copy(c, 2, (length(c) - 1)); // a hora passada fosse negativa   João Paulo
        Negativo := True;
      end;
      if Negativo then
        Result := (StrToInt(c) / 24 + StrToInt(copy(Hora, pos(':', Hora) + 1,
              length(Hora))) / 24 / 60) * -1
      else
        Result := StrToInt(c) / 24 + StrToInt(copy(Hora, pos(':', Hora) + 1,
            length(Hora))) / 24 / 60;
    except
      Result := 0;
    end;
end; // --- gfHoraDouble ---

function CorrigeDateTime(const valor: TDateTime; const tipo: Char): TDateTime;
begin // --- CorrigeDateTime ---
  if tipo = 'T' then
    Result := StrToDateTime(DateTimeToStr(valor))
  else
    Result := StrToTime(TimeToStr(valor))
end; // --- CorrigeDateTime ---

function gpAnsiToAscii(Str: String): String;
var
  I: Integer;
begin
  for I := 1 to length(Str) do
    case Str[I] of
      'á':
        Str[I] := 'a';
      'é':
        Str[I] := 'e';
      'í':
        Str[I] := 'i';
      'ó':
        Str[I] := 'o';
      'ú':
        Str[I] := 'u';
      'à':
        Str[I] := 'a';
      'è':
        Str[I] := 'e';
      'ì':
        Str[I] := 'i';
      'ò':
        Str[I] := 'o';
      'ù':
        Str[I] := 'u';
      'â':
        Str[I] := 'a';
      'ê':
        Str[I] := 'e';
      'î':
        Str[I] := 'i';
      'ô':
        Str[I] := 'o';
      'û':
        Str[I] := 'u';
      'ä':
        Str[I] := 'a';
      'ë':
        Str[I] := 'e';
      'ï':
        Str[I] := 'i';
      'ö':
        Str[I] := 'o';
      'ü':
        Str[I] := 'u';
      'ã':
        Str[I] := 'a';
      'õ':
        Str[I] := 'o';
      'ñ':
        Str[I] := 'n';
      'ç':
        Str[I] := 'c';
      'Á':
        Str[I] := 'A';
      'É':
        Str[I] := 'E';
      'Í':
        Str[I] := 'I';
      'Ó':
        Str[I] := 'O';
      'Ú':
        Str[I] := 'U';
      'À':
        Str[I] := 'A';
      'È':
        Str[I] := 'E';
      'Ì':
        Str[I] := 'I';
      'Ò':
        Str[I] := 'O';
      'Ù':
        Str[I] := 'U';
      'Â':
        Str[I] := 'A';
      'Ê':
        Str[I] := 'E';
      'Î':
        Str[I] := 'I';
      'Ô':
        Str[I] := 'O';
      'Û':
        Str[I] := 'U';
      'Ä':
        Str[I] := 'A';
      'Ë':
        Str[I] := 'E';
      'Ï':
        Str[I] := 'I';
      'Ö':
        Str[I] := 'O';
      'Ü':
        Str[I] := 'U';
      'Ã':
        Str[I] := 'A';
      'Õ':
        Str[I] := 'O';
      'Ñ':
        Str[I] := 'N';
      'Ç':
        Str[I] := 'C';
    end;
  Result := Str;
end;

function Completa(S: String): String;
begin
  if length(S) < 16 then
  begin
    while length(S) < 16 do
      S := S + ' ';
  end;
  Result := S;
end;

function fCentra(const vLinha: string): string;
begin { fCentra }
  Result := Format('%' + IntToStr((16 - length(Trim(vLinha))) div 2) + 's',
    [' ']) + Trim(vLinha) + Format
    ('%' + IntToStr((16 - length(Trim(vLinha))) div 2) + 's', [' ']) + ' ';
end; { fCentra }

function gfIsValidStrDate(const _STRDATE: string): Boolean;
begin // --- gfIsValidStrDate ---
  Result := False;
  try
    StrToDate(_STRDATE);
    Result := True;
  except
  end;
end; // --- gfIsValidStrDate ---

function ProcessoExiste(ExeFileName: string): Boolean;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32 { declarar Uses Tlhelp32 } ;
begin
  Result := False;

  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase
          (ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase
          (ExeFileName))) then
    begin
      Result := True;
      exit;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function GetTempDirectory: String;
var
  tempFolder: array [0 .. MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  Result := StrPas(tempFolder);
end;

{ function AtualizaVersaoBanco(var VersaoAtual:String): Boolean;
  begin
  Result:= True;
  PathNovoDB:= ExtractFilePath(Application.ExeName)+'SincDB\';
  if not DirectoryExists(PathNovoDB) then
  begin
  ForceDirectories(PathNovoDB);
  //Exit;
  end;

  try
  DM.cdsVersao.Open;
  //verifica versões anteriores para não voltar a versão do banco de dados
  Result:= Trim(DM.cdsVersaoVERSAO_BANCO.Value)<>Trim(UpperCase(VersaoBanco));
  VersaoAtual := Trim(DM.cdsVersaoVERSAO_BANCO.AsString);
  DM.cdsVersao.Close;
  except
  Result:= True;
  end;
  end; }

procedure EnumFiles(Pasta, Arquivo: String; Files: TStrings;
  bEnumFolders: Boolean = True);
var
  SR: TSearchRec;
  SubDirs: TStringList;
  ret, x: Integer;
  sPasta: String;
begin
  if Pasta[length(Pasta)] <> '\' then
    Pasta := Pasta + '\';

  try
    SubDirs := TStringList.Create;
    SubDirs.Add(Pasta);

    if bEnumFolders then
      EnumFolders(Pasta, SubDirs);

    if SubDirs.Count > 0 then
      for x := 0 to SubDirs.Count - 1 do
      begin
        sPasta := SubDirs[x];
        if sPasta[length(sPasta)] <> '\' then
          sPasta := sPasta + '\';

        ret := FindFirst(sPasta + Arquivo, faAnyFile, SR);
        if ret = 0 then
          try
            repeat
              if not(SR.Attr and faDirectory > 0) then
                Files.Add(sPasta + SR.Name);

              ret := FindNext(SR);
            until ret <> 0;

          finally
            SysUtils.FindClose(SR)
          end;
      end;
  finally
    SubDirs.Free;
  end;
end;

procedure EnumFolders(Root: String; Folders: TStrings);
var
  vRoot: string;
  procedure Enum(dir: String);
  var
    SR: TSearchRec;
    ret: Integer;
  begin
    if dir[length(dir)] <> '\' then
      dir := dir + '\';

    ret := FindFirst(dir + '*.*', faDirectory, SR);
    if ret = 0 then
      try
        repeat
          if ((SR.Attr and faDirectory) <> 0) and (SR.Name <> '.') and
            (SR.Name <> '..') then
          begin
            Folders.Add(dir + SR.Name);
            Enum(dir + SR.Name);
          end;

          ret := FindNext(SR);
        until ret <> 0;

      finally
        SysUtils.FindClose(SR)
      end;
  end;

begin
  vRoot := Root;
  if Root <> EmptyStr then
    Enum(Root);
end;

function ValidaPIS(nPIS: String): Boolean;
{ Testa se o número do pis é válido ou não }
var
  I, wsoma, Wm11, Wdv, wdigito: Integer;
begin
  Result := False;
  nPIS := ApenasNumerosStr(nPIS);
  if Trim(nPIS) <> '' Then
  begin
    if StrToFloat(nPIS) = 0 then
    begin
      Result := True;
      exit;
    end;

    Wdv := StrToInt(copy(nPIS, 11, 1));
    wsoma := 0;
    Wm11 := 2;
    for I := 1 to 10 do
    begin
      wsoma := wsoma + (Wm11 * StrToInt(copy(nPIS, 11 - I, 1)));
      if Wm11 < 9 then
      begin
        Wm11 := Wm11 + 1
      end
      else
      begin
        Wm11 := 2;
      end;
    end;
    wdigito := 11 - (wsoma MOD 11);
    if wdigito > 9 then
    begin
      wdigito := 0;
    end;
    if Wdv = wdigito then
    begin
      ValidaPIS := True;
    end
    else
    begin
      ValidaPIS := False;
    end;
  end
  else
    Result := True;
end;

function isTime(vTime: String): Boolean;
begin
  Result := True;
  try
    StrToTime(vTime);
  except
    Result := False;
  end;
end;

function Verifica_Demonstracao(ExibeMensagem: Boolean = True): Boolean;
begin
  if DEMONSTRACAO then
  begin
    Result := True;
    if ExibeMensagem then
      Application.MessageBox('Cópia de Demostração!' + #13#10 +
          'Para ter acesso a todos os recursos adquira uma Licença.',
        'Atenção', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
  end
  else
    Result := False;
end;

procedure EnterColorEdit(Sender: TObject);
begin
  if (Sender is TEdit) then (Sender as TEdit)
    .Color := CorEdit
  else if (Sender is TDBEdit) then (Sender as TDBEdit)
    .Color := CorEdit
  else if (Sender is TMaskEdit) then (Sender as TMaskEdit)
    .Color := CorEdit
  else if (Sender is TDateTimePicker) then (Sender as TDateTimePicker)
    .Color := CorEdit
  else if (Sender is TDBLookupComboBox) then (Sender as TDBLookupComboBox)
    .Color := CorEdit
  else if (Sender is TRxDBLookupCombo) then (Sender as TRxDBLookupCombo)
    .Color := CorEdit
  else if (Sender is TDBDateEdit) then (Sender as TDBDateEdit)
    .Color := CorEdit
  else if (Sender is TDBComboBox) then (Sender as TDBComboBox)
    .Color := CorEdit
  else if (Sender is TComboBox) then (Sender as TComboBox)
    .Color := CorEdit
  else if (Sender is TDateEdit) then (Sender as TDateEdit)
    .Color := CorEdit
  else if (Sender is TLabeledEdit) then (Sender as TLabeledEdit)
    .Color := CorEdit;

end;

procedure ExitColorEdit(Sender: TObject);
begin
  if (Sender is TEdit) then (Sender as TEdit)
    .Color := clWhite
  else if (Sender is TDBEdit) then (Sender as TDBEdit)
    .Color := clWhite
  else if (Sender is TMaskEdit) then (Sender as TMaskEdit)
    .Color := clWhite
  else if (Sender is TDateTimePicker) then (Sender as TDateTimePicker)
    .Color := clWhite
  else if (Sender is TDBLookupComboBox) then (Sender as TDBLookupComboBox)
    .Color := clWhite
  else if (Sender is TRxDBLookupCombo) then (Sender as TRxDBLookupCombo)
    .Color := clWhite
  else if (Sender is TDBDateEdit) then (Sender as TDBDateEdit)
    .Color := clWhite
  else if (Sender is TDBComboBox) then (Sender as TDBComboBox)
    .Color := clWhite
  else if (Sender is TComboBox) then (Sender as TComboBox)
    .Color := clWhite
  else if (Sender is TDateEdit) then (Sender as TDateEdit)
    .Color := clWhite
  else if (Sender is TLabeledEdit) then (Sender as TLabeledEdit)
    .Color := clWhite;

end;

function fAplicacaoLocal: Boolean;
var
  Ini: TIniFile;
  _DB, ip: string;

begin
  Ini := TIniFile.Create(ArqIni);
  _DB := Ini.ReadString('Configs', 'LocalBanco_Text', '');
  ip := GetIpAddress; // ip da estacao;
  if ((pos('localhost:', _DB) > 0)) or ((ip <> '0.0.0.0') and (pos(ip, _DB) > 0)
    ) then
    Result := True
  else
    Result := False;
  Ini.Free;
  ESTACAO_LOCAL := Result;
end;

function DiaUtil(DtInicio: TDateTime; DiasUteis: Integer): TDateTime;
var
  dia, uteis: Word;

begin
  // retorna a proxima data de acordo com o número de dias úteis informados.
  if DiasUteis < 1 then
    Result := DtInicio;

  uteis := 0;
  repeat
    DtInicio := DtInicio + 1;
    dia := DayOfWeek(DtInicio);
    if dia in [2, 3, 4, 5, 6] then
      Inc(uteis)

        until uteis = DiasUteis;

    Result := DtInicio;
  end;

  function RetornaPermissao(Controle: Integer): TPermissao;
  begin
    if mCodigoUsuario = 0 then
    begin
      Result.Incluir := True;
      Result.Alterar := True;
      Result.Excluir := True;
      Result.Visualizar := True;
    end
    else
    begin
      if (not DM.cdsPermissaoUsuario.Active) or
        (DM.cdsPermissaoUsuarioidtbusuario.AsInteger <> mCodigoUsuario) then
      begin
        DM.cdsPermissaoUsuario.Close;
        DM.cdsPermissaoUsuario.Params.ParamByName('pusuario').Value :=
          mCodigoUsuario;
        DM.cdsPermissaoUsuario.Open;
      end;

      if (DM.cdsPermissaoUsuario.Locate('idtbpermissao', Controle, [])) then
      begin
        Result.Incluir := DM.cdsPermissaoUsuarioINCLUIR.AsString = sTrue;
        Result.Alterar := DM.cdsPermissaoUsuarioALTERAR.AsString = sTrue;
        Result.Excluir := DM.cdsPermissaoUsuarioEXCLUIR.AsString = sTrue;
        Result.Visualizar := DM.cdsPermissaoUsuarioVISUALIZAR.AsString = sTrue;
      end
      else
      begin
        Result.Incluir := DM.cdsPermissaoUsuarioINCLUIR.AsString = sFalse;
        Result.Alterar := DM.cdsPermissaoUsuarioALTERAR.AsString = sFalse;
        Result.Excluir := DM.cdsPermissaoUsuarioEXCLUIR.AsString = sFalse;
        Result.Visualizar := DM.cdsPermissaoUsuarioVISUALIZAR.AsString = sFalse;
      end;
    end;
  end;

  procedure AcessoNegado(acao: Integer);
  begin
    case acao of
      Negado_visualizar:
        Informa('Você não tem permissão para visualizar esta tela.');
      Negado_alterar:
        Informa('Você não tem permissão para alterar este registro.');
      Negado_incluir:
        Informa('Você não tem permissão para incluir um novo registro.');
      Negado_excluir:
        Informa('Você não tem permissão para exlcuir este registro.');
    end;
  end;

  function getDadosString(DataSet: TDataSet; alteracao: Boolean = False;
    GravaTodos: Boolean = False): String;
  var
    I: Integer;
    aux: String;
  begin
    try
      aux := '';
      for I := 0 to DataSet.Fields.Count - 1 do
      begin
        try
          if GravaTodos then
            alteracao := False;
          if not alteracao then
          begin
            if (Trim(DataSet.Fields[I].AsString) <> '') and
              ((DataSet.Fields[I].Visible) or GravaTodos) then
            begin
              aux := aux + DataSet.Fields[I].DisplayLabel + '=' + DataSet.Fields
                [I].AsString;
              if I < DataSet.Fields.Count - 1 then
                aux := aux + #13;
            end;
          end
          else
          begin
            if (DataSet.Fields[I].Visible) and
              (DataSet.Fields[I].OldValue <> DataSet.Fields[I].NewValue) then
            begin
              aux := aux + DataSet.Fields[I].DisplayLabel + ': ' + VarToStr
                (DataSet.Fields[I].OldValue) + ' para ' + VarToStr
                (DataSet.Fields[I].NewValue);
              if I < DataSet.Fields.Count - 1 then
                aux := aux + #13;
            end;
          end;
        except
        end;

      end;
      Result := aux;
    except
    end;
  end;

  function GetLasID(): Int64;
  begin
    DM.qrLasID.Close;
    DM.qrLasID.Open;
    Result := DM.qrLasIDID.Value;
    DM.qrLasID.Close;
  end;

  procedure LookupClear(Sender: TDBLookupComboBox; var key: Word);
  begin
    try
      if (key = vk_delete) or (key = VK_BACK) then
      begin
        Sender.KeyValue := null;
        key := 0;
      end;
    except
    end;
  end;

  procedure RestoreColumnsLayout(grid: TDbGridEh);
  var
    NameForm: string;
  begin
    NameForm := grid.Parent.Name + '_';
    grid.RestoreColumnsLayoutIni(ArqIni, NameForm + grid.Name, [crpColIndexEh,
      crpColWidthsEh]);
  end;

  procedure SaveColumnsLayout(grid: TDbGridEh);
  var
    NameForm: string;
  begin
    NameForm := grid.Parent.Name + '_';
    grid.SaveColumnsLayoutIni(ArqIni, NameForm + grid.Name, False);
  end;

  function VerificaCaixaAberto(): String;
  begin
    try
      with DM.qrComando do
      begin
        Close;
        SQL.Text := 'select id, tipo from tbcaixa order by id desc limit 1';
        Open;

        Result := FieldByName('tipo').AsString;

        CaixaAberto := (Result <> '') and (Result <> 'F');

        Close;
      end;

    except
      CaixaAberto := True;
      Result := '';
    end;
  end;

  function fCaixaAberto(msg: Boolean): Boolean;
  begin
    Result := CaixaAberto;

    if (not Result) and (msg) then
      Informa('O Caixa está fechado' + #13 +
          'Esta operação só poderá ser realizada após a abertura do caixa.');

  end;

  procedure RetornaSaldoCaixa;
  var
    I: Integer;
  begin
    with DM do
    begin
      memSaldoCaixa.EmptyDataSet;
      memSaldoCaixa.Insert;
      for I := 0 to memSaldoCaixa.FieldCount - 1 do
        if memSaldoCaixa.Fields[I] is TCurrencyField then
          memSaldoCaixa.Fields[I].AsCurrency := 0;

      if not cdsPesCaixa.Active then
        exit;

      try

        cdsPesCaixa.DisableControls;
        cdsPesCaixa.First;
        while not cdsPesCaixa.Eof do
        begin
          if (cdsPesCaixa.FieldByName('TIPO').Value = _Credito) or
            (cdsPesCaixa.FieldByName('TIPO').Value = 'A') then
          begin
            if (cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
                .Value = fpg_dinheiro) or
              (cdsPesCaixa.FieldByName('TIPO').Value = 'A') then
              memSaldoCaixaDinheiroCred.AsCurrency :=
                memSaldoCaixaDinheiroCred.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_cartaoDe then
              memSaldoCaixaCartaoDebito_Cre.AsCurrency :=
                memSaldoCaixaCartaoDebito_Cre.AsCurrency +
                cdsPesCaixa.FieldByName('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_cartaoCre then
              memSaldoCaixaCartaoCredito_Cre.AsCurrency :=
                memSaldoCaixaCartaoCredito_Cre.AsCurrency +
                cdsPesCaixa.FieldByName('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_cheque then
              memSaldoCaixaChequeCre.AsCurrency :=
                memSaldoCaixaChequeCre.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_transferencia then
              memSaldoCaixatrans_Cre.AsCurrency :=
                memSaldoCaixatrans_Cre.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_deposito then
              memSaldoCaixadeposito_cre.AsCurrency :=
                memSaldoCaixadeposito_cre.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency;
          end
          else if (cdsPesCaixa.FieldByName('TIPO').Value <> 'F') then
          begin
            if (cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
                .Value = fpg_dinheiro) then
              memSaldoCaixaDinheiroDeb.AsCurrency :=
                memSaldoCaixaDinheiroDeb.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_cartaoDe then
              memSaldoCaixaCartaoDebito_Deb.AsCurrency :=
                memSaldoCaixaCartaoDebito_Deb.AsCurrency +
                cdsPesCaixa.FieldByName('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_cartaoCre then
              memSaldoCaixaCartaoCredito_Deb.AsCurrency :=
                memSaldoCaixaCartaoCredito_Deb.AsCurrency +
                cdsPesCaixa.FieldByName('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_cheque then
              memSaldoCaixaChequeDeb.AsCurrency :=
                memSaldoCaixaChequeDeb.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_transferencia then
              memSaldoCaixatrans_deb.AsCurrency :=
                memSaldoCaixatrans_deb.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency
            else if cdsPesCaixa.FieldByName('FORMA_PAGAMENTO')
              .Value = fpg_deposito then
              memSaldoCaixadeposito_deb.AsCurrency :=
                memSaldoCaixadeposito_deb.AsCurrency + cdsPesCaixa.FieldByName
                ('VALOR').AsCurrency;

          end;
          cdsPesCaixa.Next;
        end;
        memSaldoCaixa.Post;

      finally
        cdsPesCaixa.First;
        cdsPesCaixa.EnableControls;

      end;
    end;
  end;

  function CorrigeCurrency(Value: currency): currency;
  begin
    Result := (Trunc(Value * 100)) / 100;
  end;

  function CalculaParcela(nParcelas: Integer; valor: currency): TParcela;
  var
    vValor: currency;
  begin
    try
      vValor := valor / nParcelas;
      Result.ValorDemais := CorrigeCurrency(vValor);
      Result.ValorPrimeira := (valor - (Result.ValorDemais * nParcelas))
        + Result.ValorDemais;
    except
      Result.ValorPrimeira := 0;
      Result.ValorDemais := 0;
    end;
  end;

  function IntToStrNull(Value: Integer): String;
  begin
    if Value = 0 then
      Result := 'null'
    else
      Result := IntToStr(Value);
  end;

  function fLocalizar(Tag: Integer): Integer;
  begin
    Result := 0;
    try
      Application.CreateForm(TFormLocalizar, FormLocalizar);
      FormLocalizar.Tag := Tag;
      FormLocalizar.ShowModal;
      Result := FormLocalizar.CodigoLocalizado;
    finally
      FreeAndNil(FormLocalizar);
    end;
  end;

  function fLocalizar(Tag: Integer; var Desc: String): Integer;
  begin
    Result := 0;
    try
      Application.CreateForm(TFormLocalizar, FormLocalizar);
      FormLocalizar.Tag := Tag;
      FormLocalizar.ShowModal;
      Result := FormLocalizar.CodigoLocalizado;
      Desc := FormLocalizar.Descricao;
    finally
      FreeAndNil(FormLocalizar);
    end;
  end;

  function DescontaTaxa(valor, Taxa: currency): currency;
  begin
    Result := valor;
    if (valor > 0) and (Taxa > 0) then
    begin
      Result := CorrigeCurrency(valor - (valor * Taxa / 100));
    end;
  end;

  procedure Processa_Recebimento_CartaoCredito(Filtro: String);
  var
    qrConta: TZQuery;
    valor: currency;
  begin
    with DM do
    begin
      if not cdsConfigs.Active then
        cdsConfigs.Open;

      try
        qrProcessaCart.Close;
        qrProcessaCart.SQL.Clear;
        qrProcessaCart.SQL.Add(SqlProcessar);

        if Filtro = '' then
          qrProcessaCart.SQL.Add('and forma_pagamento = ' + QuotedStr
              (fpg_cartaoCre) + ' and data_vencimento <= current_date')
        else
          qrProcessaCart.SQL.Add(Filtro);
        qrProcessaCart.Open;

        while not qrProcessaCart.Eof do
        begin
          qrProcessaCart.Edit;
          qrProcessaCartdata_pagamento.AsDateTime := Date;
          if (qrProcessaCartTipo.AsString = _Credito) and
            (DM.cdsConfigsdescontar_taxa_operadora.AsString = sTrue) and
            (qrProcessaCartadm.AsCurrency > 0) then
            valor := DescontaTaxa(qrProcessaCartvalor.AsCurrency,
              qrProcessaCartadm.AsCurrency)
          else
            valor := qrProcessaCartvalor.AsCurrency;

          qrProcessaCartvalor_pago.AsCurrency :=
            valor + qrProcessaCartacrescimo.AsCurrency -
            qrProcessaCartdesconto.AsCurrency;
          qrProcessaCart.Post;

          qrProcessaCart.Next;
        end;

        if qrProcessaCart.UpdatesPending then
          qrProcessaCart.ApplyUpdates;
      except
        on E: exception do
        begin
          Informa('Erro ao processar recebimentos por cartão de crédito:');
          GravaLogNoBanco(E.Message, True);
        end;
      end;
      qrProcessaCart.Close;

    end;
  end;

  procedure LimpaFilter(DataSet: TDataSet);
  begin
    DataSet.Filter := '';
    DataSet.Filtered := False;
  end;

  function MySqlData(Data: TDate): string;
  begin
    Result := QuotedStr(FormatDateTime('yyyy-mm-dd', Data));
  end;

  function GetEstoqueAtual(IDProduto: Integer): Integer;
  begin
    try
      Result := 0;
      with DM.qrComando do
      begin
        Close;
        SQL.Clear;
        SQL.Add
          ('select idproduto, est_atual from tbproduto where idproduto = ' + IntToStr(IDProduto));
        Open;
        Result := Fields[1].AsInteger;
        Close;
      end;
    except
    end;
  end;

  function GetEstoqueKit(IDKit: Integer): Integer;
  var
    query: TZQuery;
    Total, Temp: Integer;
  begin
    query := TZQuery.Create(nil);
    Result := 0;
    try
      query.Connection := DM.ZConnection;
      query.SQL.Add(
        'select k.idkit, k.idproduto, k.qtde, p.est_atual from tbkit_produto k '
          + 'inner join tbproduto p on k.idproduto = p.idproduto ');
      query.SQL.Add('where k.idkit = ' + IntToStr(IDKit));
      query.Open;
      query.First;
      Total := 0;
      while not query.Eof do
      begin
        if query.FieldByName('qtde').AsInteger > query.FieldByName('est_atual')
          .AsInteger then
        begin
          Total := 0;
          Break;
        end
        else
        begin
          Temp := query.FieldByName('est_atual').AsInteger div query.FieldByName
            ('qtde').AsInteger;
          if (Temp < Total) or (Total = 0) then
            Total := Temp;
        end;
        query.Next;
      end;
      Result := Total;
    finally
      query.Close;
      query.Free;
    end;
  end;

  procedure LoadConfigLocal(FormStorage: TFormStorage);
  begin
    FormStorage.IniFileName := ArqIni;
    FormStorage.IniSection := FormStorage.Owner.Name;
    FormStorage.RestoreFormPlacement;
  end;

  function TipoItem(Tab: String): TTipoItem;
  begin
    if LowerCase(Tab) = 'tbproduto' then
      Result := tProd
    else
      Result := tKit;
  end;

  function Porcentagem(Taxa, valor: Double): Double;
  begin
    Result := (valor * Taxa) / 100;
  end;

  function getMeta(Data: TDate; Veiculo: Integer): Boolean;
  var
    vSql: String;
  begin
    vSql :=
      'select idmeta, minimo, cota, super, dias_uteis, idveiculo, data_inicial, data_final from tbmeta ' + 'where idveiculo = ' + IntToStr(Veiculo) + ' and ' + FormatDateSql(Data) + ' >= data_inicial and ' + FormatDateSql(Data) + ' <= data_final';

    if (not DM.qrMeta.Active) or (DM.qrMeta.FieldByName('idveiculo')
        .AsInteger <> Veiculo) or
      (Data < DM.qrMeta.FieldByName('data_inicial').AsDateTime) or
      (Data > DM.qrMeta.FieldByName('data_final').AsDateTime) then
      SetQuery(DM.qrMeta, vSql);
    Result := DM.qrMeta.FieldByName('idmeta').AsInteger > 0;
  end;

function ValidaLicenca(MostrarForm : Boolean; pLicenca : String) : Boolean;
var
  sparam : string;
begin
   _Licenciado := False;

   DM.cdsConfigs.Open;
   sparam := ApenasNumerosStr(DM.cdsConfigsCNPJ.AsString)+  _ChaveAtivacao + DM.cdsConfigsRAZAOSOCIAL.AsString;
   if not fValidaLicenca(pLicenca,sparam) then begin
      Application.MessageBox('Código de licenciamento inválido.','Controle de segurança',MB_OK+MB_ICONERROR);

     if MostrarForm then
     begin
       try
         Application.CreateForm(TFormConfigs, FormConfigs);
         FormConfigs.Permissao := RetornaPermissao(2);
         FormConfigs.ShowModal;
       finally
         FreeAndNil(FormConfigs);
       end;
     end;

   end
   else begin
     _Licenciado := True;

   end;

   Result := _Licenciado;
end;

function SelCliente(var Nome : String; Prefeitura : Boolean = False): Integer;
begin
  try
    Application.CreateForm(TFormSelCliente, FormSelCliente);
    FormSelCliente.Permissao := RetornaPermissao(3);
    FormSelCliente.Localizando := True;
    if Prefeitura then
      FormSelCliente.FiltroExtra := ' prefeitura = '+QuotedStr('T');
    if FormSelCliente.Permissao.Visualizar then
    begin
      if (FormSelCliente.ShowModal = mrOK) and
        (FormSelCliente.CodLocalizado > 0) then
      begin
        Result := FormSelCliente.CodLocalizado;
        Nome := FormSelCliente.cdsPesquisanome.AsString;
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelCliente);
  end;
end;

procedure MascaraTelefone(Field : TField);
begin
  if Length(Field.AsString) = 11 then
    Field.EditMask := '!\(99\)99999-9999;0;_'
  else
    Field.EditMask := '!\(99\)9999-9999;0;_';
end;

procedure setConfigLocal;
begin
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := '.';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  mPath := ExtractFilePath(Application.ExeName);
  mPathLogo := mPath + 'Logo.jpg';
  ArqIni := ExtractFilePath(Application.ExeName) + Programa + '.ini';
end;

procedure setPrecoProduto(CodProduto: Integer; Atualizar : Boolean);
begin
   with DM do begin
      if (not qrClientePreco.Active) or (qrClientePrecoidproduto.AsInteger <> CodProduto) or (Atualizar) then
      begin
        qrClientePreco.Close;
        qrClientePreco.Params.ParamByName('pidproduto').AsInteger := CodProduto;
        qrClientePreco.Open;
      end;
   end;

end;

function getPrecoCliente(IDProduto, IDCliente : Integer) : Boolean;
begin
  Result := False;
  with DM do begin
    qrValorCliente.Close;
    qrValorCliente.Params.ParamByName('pidcliente').Value := IDCliente;
    qrValorCliente.Params.ParamByName('pidproduto').Value := IDProduto;
    qrValorCliente.Open;
  end;
  Result := DM.qrValorCliente.FieldByName('idcliente').AsInteger > 0 ;
end;

function  addPercentual(Valor, Taxa : Currency) : Currency;
begin
  if (Valor > 0) and (Taxa > 0) then
  begin
    Result := Valor + (Valor * taxa / 100);
  end;
end;

function  removePercentual(Valor, Taxa : Currency) : Currency;
begin
  if (Valor > 0) and (Taxa > 0) then
  begin
    Result := Valor - (Valor * taxa / 100);
  end;
end;

procedure CalculaParcelas(DataSet : TDataSet);
var
  ValorPar: Currency;
  function getValor(Taxa : Currency) : Currency;
  begin
    if DataSet.FieldByName('operacao').AsString = 'A' then
    begin
        Result := addPercentual(DataSet.FieldByname('valor_nota').AsCurrency, Taxa);
    end
    else begin
       Result := removePercentual(DataSet.FieldByname('valor_nota').AsCurrency, Taxa);
    end;
  end;
begin
  DataSet.FieldByname('ValorPar2').AsVariant := Null;
  DataSet.FieldByname('ValorPar3').AsVariant := Null;
  DataSet.FieldByname('ValorPar4').AsVariant := Null;
  DataSet.FieldByname('ValorPar5').AsVariant := Null;
  DataSet.FieldByname('ValorPar6').AsVariant := Null;

  DataSet.FieldByname('total_par2').AsVariant := Null;
  DataSet.FieldByname('total_par3').AsVariant := Null;
  DataSet.FieldByname('total_par4').AsVariant := Null;
  DataSet.FieldByname('total_par5').AsVariant := Null;
  DataSet.FieldByname('total_par6').AsVariant := Null;

  if DataSet.FieldByname('valor_nota').AsCurrency > 0 then
  begin
    DataSet.FieldByname('ValorDinheiro').AsCurrency := getValor(DM.cdsConfigsindice_dinheiro.AsFloat);
    DataSet.FieldByname('ValorDebito').AsCurrency := getValor(DM.cdsConfigsindice_debito.AsFloat);
    DataSet.FieldByname('ValorCred').AsCurrency := getValor(DM.cdsConfigsindice_credito.AsFloat);

    DataSet.FieldByname('total_par2').Value := getValor(DM.cdsConfigsindice_2x.AsFloat);
    ValorPar := getValor(DM.cdsConfigsindice_2x.AsFloat) / 2;
    if ValorPar >= DM.cdsConfigsvalor_min_parcela.AsCurrency then
      DataSet.FieldByname('ValorPar2').Value := ValorPar;

    DataSet.FieldByname('total_par3').Value := getValor(DM.cdsConfigsindice_3x.AsFloat);
    ValorPar := getValor(DM.cdsConfigsindice_3x.AsFloat) / 3;
    if ValorPar >= DM.cdsConfigsvalor_min_parcela.AsCurrency then
      DataSet.FieldByname('ValorPar3').Value := ValorPar;

    DataSet.FieldByname('total_par4').Value := getValor(DM.cdsConfigsindice_4x.AsFloat);
    ValorPar := getValor(DM.cdsConfigsindice_4x.AsFloat) / 4;
    if ValorPar >= DM.cdsConfigsvalor_min_parcela.AsCurrency then
      DataSet.FieldByname('ValorPar4').Value := ValorPar;

    DataSet.FieldByname('total_par5').Value := getValor(DM.cdsConfigsindice_5x.AsFloat);
    ValorPar := getValor(DM.cdsConfigsindice_5x.AsFloat) / 5;
    if ValorPar >= DM.cdsConfigsvalor_min_parcela.AsCurrency then
      DataSet.FieldByname('ValorPar5').Value := ValorPar;

    DataSet.FieldByname('total_par6').Value := getValor(DM.cdsConfigsindice_6x.AsFloat);
    ValorPar := getValor(DM.cdsConfigsindice_6x.AsFloat) / 6;
    if ValorPar >= DM.cdsConfigsvalor_min_parcela.AsCurrency then
      DataSet.FieldByname('ValorPar6').Value := ValorPar;
  end;
end;

function LocalizaProduto(var Desc : String) : Integer;
begin
  try
    Result := 0;
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    FormSelPoduto.Localizando := True;
    if FormSelPoduto.Permissao.Visualizar then begin
      if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
      begin
        result := FormSelPoduto.CodLocalizado;
        desc := FormSelPoduto.cdsPesquisadescricao.AsString;
      end;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;
end;



end.
