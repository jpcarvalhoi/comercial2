unit uFiltroContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask,
  rxToolEdit, rxCurrEdit, ActnList, DB;

type
  TFormFiltroContas = class(TFormClone_TelaPadrao)
    Label1: TLabel;
    edVenda: TEdit;
    Label2: TLabel;
    edDescricao: TEdit;
    GroupBox1: TGroupBox;
    cbValor: TComboBox;
    CurrencyEditIni: TCurrencyEdit;
    CurrencyEditFim: TCurrencyEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnConfirmar: TBitBtn;
    GroupBox2: TGroupBox;
    cbUsuario: TComboBox;
    DBLookupComboBoxUser: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBoxGrupo: TDBLookupComboBox;
    dsUsuario: TDataSource;
    dsGrupo: TDataSource;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    cbPagamento: TComboBox;
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBLookupComboBoxUserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    filtro : String;
  end;

var
  FormFiltroContas: TFormFiltroContas;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormFiltroContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  edVenda.Clear;
  edDescricao.Clear;
  CurrencyEditIni.Value := 0;
  CurrencyEditFim.Value := 0;
  DBLookupComboBoxUser.KeyValue := null;
  DBLookupComboBoxGrupo.KeyValue := Null;
  cbValor.ItemIndex := 0;
  cbPagamento.ItemIndex := 0;
end;

procedure TFormFiltroContas.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  filtro := '';

  if edVenda.Text <> '' then
    filtro := filtro + ' and c.idvenda = '+edVenda.Text;

  if edDescricao.Text <> '' then
    filtro := filtro + ' and c.descricao like '+QuotedStr('%'+edDescricao.Text+'%');

  case cbValor.ItemIndex of
    1 : filtro := filtro + ' and c.valor = '+FloatToStrSql(CurrencyEditIni.Value);
    2 : filtro := filtro + ' and c.valor > '+FloatToStrSql(CurrencyEditIni.Value);
    3 : filtro := filtro + ' and c.valor < '+FloatToStrSql(CurrencyEditIni.Value);
    4 : filtro := filtro + ' and c.valor between '+FloatToStrSql(CurrencyEditIni.Value) + ' and '+
      FloatToStrSql(CurrencyEditFim.Value);
  end;

  if DBLookupComboBoxUser.Text <> '' then
  begin
    case cbUsuario.ItemIndex of
      0 : filtro := filtro + ' and c.usuario_pagamento = '+IntToStr(DBLookupComboBoxUser.KeyValue);
      1 : filtro := filtro + ' and c.usuario_cadastro = '+IntToStr(DBLookupComboBoxUser.KeyValue);
    end;
  end;

  if DBLookupComboBoxGrupo.Text <> '' then
  begin
    filtro := filtro + ' and c.idgrupoconta = '+IntToStr(DBLookupComboBoxGrupo.KeyValue);
  end;

  if cbPagamento.ItemIndex > 0 then
    filtro := filtro + ' and c.forma_pagamento = '+QuotedStr(cbPagamento.Text);

  ModalResult := mrOk;
end;

procedure TFormFiltroContas.DBLookupComboBoxUserKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  LookupClear(TDBLookupComboBox(Sender),Key);
end;

procedure TFormFiltroContas.FormShow(Sender: TObject);
begin
  inherited;
  if not DM.cdsUsuario.Active then
   DM.cdsUsuario.Open;
  if not dm.cdsGrupoConta.Active then
    DM.cdsGrupoConta.Open;
end;

end.
