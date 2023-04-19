unit uSelOrdemCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCloneSel, DB, DBClient, Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, DBGridEhGrouping, Mask, rxToolEdit, GridsEh, DBGridEh;

type
  TFormSelOrdemCompra = class(TFormCloneSelecao)
    DBGridEhSelOrdemCompra: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    sbtnLocalizar: TSpeedButton;
    edNota: TLabeledEdit;
    edDtNota: TDateEdit;
    edDtLancamento: TDateEdit;
    edFornecedor: TLabeledEdit;
    BitBtn4: TBitBtn;
    actLocalizar: TAction;
    cdsPesquisadatanota: TDateField;
    cdsPesquisaidfornecedor: TIntegerField;
    cdsPesquisausuario: TIntegerField;
    cdsPesquisanumnota: TIntegerField;
    cdsPesquisaidtransportadora: TIntegerField;
    cdsPesquisafornecedor: TWideStringField;
    cdsPesquisatransportadora: TWideStringField;
    cdsPesquisaidnota: TIntegerField;
    cdsPesquisanomeusuario: TWideStringField;
    btnImprimir: TBitBtn;
    procedure actLocalizarExecute(Sender: TObject);
    procedure sbtnLocalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure edNotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEhSelOrdemCompraDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    idFornecedor : Integer;
    FSql : String;
    procedure ChamaCadastro(pTag: Integer);
  public
    { Public declarations }
  end;

var
  FormSelOrdemCompra: TFormSelOrdemCompra;

implementation

uses FuncoesGerais, uSelFonecedor, FuncoesGlobais, uCadEntSai, uRelatorios;

{$R *.dfm}

procedure TFormSelOrdemCompra.ChamaCadastro(pTag : Integer);
begin
  try
    Application.CreateForm(TFormCadEntSai, FormCadEntSai);
    FormCadEntSai.Permissao := RetornaPermissao(7);
    FormCadEntSai.Tag := pTag;
    FormCadEntSai.CodNota := cdsPesquisaidnota.AsInteger;
    FormCadEntSai.Tipo := tipo_pedido;
    FormCadEntSai.ShowModal;
  finally
    FreeAndNil(FormCadEntSai);
  end;
end;

procedure TFormSelOrdemCompra.DBGridEhSelOrdemCompraDblClick(Sender: TObject);
begin
  inherited;
  actAlterarExecute(nil);
end;

procedure TFormSelOrdemCompra.edNotaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    actLocalizarExecute(nil);
end;

procedure TFormSelOrdemCompra.actAlterarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro(0);
end;

procedure TFormSelOrdemCompra.actIncluirExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro(1);
end;

procedure TFormSelOrdemCompra.actLocalizarExecute(Sender: TObject);
var
  Filtro : string;
begin
  inherited;
  if StrToIntDef(edNota.Text, 0) > 0 then
    Filtro := Filtro + ' and o.numnota = '+edNota.Text;

  if edDtNota.Date > 0 then
    Filtro := Filtro + ' and o.datanota = '+FormatDateSql(edDtNota.Date);

  if edDtLancamento.Date > 0 then
    Filtro := Filtro + ' and o.datalancamento = '+FormatDateSql(edDtNota.Date);

  if (edFornecedor.Text <> '') and (idFornecedor > 0) then
    filtro := Filtro + ' and o.idfornecedor = '+IntToStr(idFornecedor);

  cdsPesquisa.Close;
  cdsPesquisa.CommandText := FSql + Filtro;
  cdsPesquisa.Open;



end;

procedure TFormSelOrdemCompra.BitBtn4Click(Sender: TObject);
begin
  inherited;
  actLocalizarExecute(nil);
end;

procedure TFormSelOrdemCompra.btnImprimirClick(Sender: TObject);
begin
  inherited;
  with FormRelatorios do begin
    ImprimeNota(cdsPesquisaidnota.AsInteger,True,tipo_pedido);
  end;
end;

procedure TFormSelOrdemCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SaveColumnsLayout(DBGridEhSelOrdemCompra);
end;

procedure TFormSelOrdemCompra.FormCreate(Sender: TObject);
begin
  inherited;
  FSql := qrPesquisa.SQL.Text;
  RestoreColumnsLayout(DBGridEhSelOrdemCompra);
end;

procedure TFormSelOrdemCompra.sbtnLocalizarClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelFornecedor,FormSelFornecedor);
    FormSelFornecedor.Permissao := RetornaPermissao(4);
    FormSelFornecedor.Localizando := True;
    if FormSelFornecedor.Permissao.Visualizar then begin
      if (FormSelFornecedor.ShowModal = mrOK) and (FormSelFornecedor.CodLocalizado > 0) then
      begin
        idFornecedor := FormSelFornecedor.CodLocalizado;
        edFornecedor.Text := FormSelFornecedor.cdsPesquisarazao.AsString;
      end;

    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelFornecedor);
  end;
end;

end.
