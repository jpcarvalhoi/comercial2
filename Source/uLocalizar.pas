unit uLocalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, ExtCtrls, FMTBcd, DB, Provider,
  DBClient, SqlExpr, DBGrids, DBGridEhGrouping, GridsEh,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormLocalizar = class(TForm)
    cdsLocalizar: TClientDataSet;
    dspLocalizar: TDataSetProvider;
    dsLocalizar: TDataSource;
    Panel2: TPanel;
    Panel1: TPanel;
    edLocalizar: TEdit;
    DBGridEhLocalizar: TDBGridEh;
    sqlLocalizar: TZQuery;
    rgFiltro: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure edLocalizarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsLocalizarFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DBGridLocalizarDblClick(Sender: TObject);
    procedure edLocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEhLocalizarDblClick(Sender: TObject);
    procedure rgFiltroClick(Sender: TObject);
  private
    procedure setIndex;
    { Private declarations }
  public
    { Public declarations }
    CodigoLocalizado:Integer;
    Descricao : String;
  end;

var
  FormLocalizar: TFormLocalizar;
  ValorFiltro, IndexFiltro :string;

implementation

uses uDM, FuncoesGlobais;

{$R *.dfm}

procedure TFormLocalizar.FormShow(Sender: TObject);
var
  i : Integer;
begin
  CodigoLocalizado := 0;
//utiliza a propriedade tag para montar o sql
  case self.tag of

    1:begin //busca de usuarios
      self.Caption := 'Localizar Usuários';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idtbusuario as codigo, nome as DESCRICAO from tbusuario';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Nome';

    end;
    2 : begin
      self.Caption := 'Localizar Categoria de Produtos';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idcategoria as codigo, descricao from tbcategoria';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Descrição';
    end;
    3 : begin
      self.Caption := 'Localizar Fornecedores';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idfornecedor as codigo, razao as descricao from tbfornecedor';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Razão Social';
    end;
    4 : begin
      self.Caption := 'Localizar Catões de Crédito e Débito';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idcartao as codigo, descricao from tbcartao';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Descrição';
    end;
    5 : begin
      self.Caption := 'Localizar Kit de Produtos';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idkit, codbarras as codigo, descricao from tbkit';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('idkit').Visible := False;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Cód. Barras';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Descrição';
    end;

    6 : begin
      self.Caption := 'Localizar Fornecedores';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idfornecedor as codigo, razao as descricao from tbfornecedor';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Razão Social';

    end;

    10 : begin
      self.Caption := 'Localizar Grupo de Contas';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idgrupoconta as codigo, descricao, '+
        'if(tipo = '+QuotedStr('C')+','+QuotedStr('Receita')+', '+QuotedStr('Despesa')+') as Tipo from tbgrupoconta ';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Descrição';


    end;

    11 : begin
      self.Caption := 'Localizar Funcionários';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idfuncionario as codigo, nome as descricao from tbfuncionario';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Nome';


    end;

    12, 13, 14 : begin
      self.Caption := 'Localizar Veículos';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select distinct v.codveiculo as codigo, v.placa as descricao, v.idveiculo, v.modelo, v.marca, f.razao from tbveiculo v '+
                                  'left join tbfornecedor f on v.idfornecedor = f.idfornecedor';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Placa';
      cdsLocalizar.FieldByName('idveiculo').Visible := False;
      cdsLocalizar.FieldByName('modelo').DisplayLabel := 'Modelo';
      cdsLocalizar.FieldByName('Marca').DisplayLabel := 'Marca';
      cdsLocalizar.FieldByName('razao').DisplayLabel := 'Proprietário';

    end;

    15 : begin
      self.Caption := 'Localizar Transportadora';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idtransportadora as codigo, razaosocial as descricao from tbtransportadora';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Razão';


    end;

    16 : begin
      self.Caption := 'Localizar Subgrupo';
      cdsLocalizar.Close;
      cdsLocalizar.CommandText := 'select idsubgrupo as codigo, descricao, tipo from tbsubgrupoconta';
      cdsLocalizar.Open;
      cdsLocalizar.FieldByName('codigo').DisplayLabel := 'Código';
      cdsLocalizar.FieldByName('DESCRICAO').DisplayLabel := 'Descrição';
      cdsLocalizar.FieldByName('tipo').DisplayLabel := 'Tipo';
    end;

  end;

  edLocalizar.Clear;
  edLocalizar.SelectAll;
  edLocalizar.SetFocus;

  rgFiltro.Items.Clear;
  for i := 0 to cdsLocalizar.FieldCount - 1 do
  begin
    if cdsLocalizar.Fields[i].Visible then
      rgFiltro.Items.Add(cdsLocalizar.Fields[i].DisplayLabel);
  end;
  rgFiltro.Columns := rgFiltro.Items.Count;
  if DBGridEhLocalizar.Columns.Count = 2 then
    rgFiltro.Visible := False;

end;

procedure TFormLocalizar.setIndex;
var
  Coluna : String;
  i : Integer;
begin
  coluna := rgFiltro.Items.Strings[rgFiltro.ItemIndex];
  for i := 0 to cdsLocalizar.FieldCount - 1 do
  begin
    if cdsLocalizar.Fields[i].DisplayLabel = Coluna then
      IndexFiltro := cdsLocalizar.Fields[i].FieldName;
  end;

  for i := 0 to DBGridEhLocalizar.Columns.Count - 1 do
    if DBGridEhLocalizar.Columns[i].FieldName = IndexFiltro then
      DBGridEhLocalizar.Columns[i].Font.Style := [fsBold]
    else
      DBGridEhLocalizar.Columns[i].Font.Style := [];

  cdsLocalizar.IndexFieldNames := IndexFiltro;
  cdsLocalizar.Filtered := False;
  cdsLocalizar.Filtered := True;
end;

procedure TFormLocalizar.rgFiltroClick(Sender: TObject);
begin
  setIndex;
  edLocalizar.SetFocus;
end;

procedure TFormLocalizar.edLocalizarChange(Sender: TObject);
begin
  ValorFiltro := edLocalizar.Text;
  if (Length(edLocalizar.Text) = 1) and (rgFiltro.ItemIndex < 0) then
  begin
    if edLocalizar.Text[1] in ['0' .. '9'] then
    begin
      cdsLocalizar.IndexFieldNames := 'CODIGO';
      IndexFiltro := 'CODIGO';
    end
    else
    begin
      cdsLocalizar.IndexFieldNames := 'DESCRICAO';
      IndexFiltro := 'DESCRICAO';
    end;
  end;
  cdsLocalizar.Filtered := False;
  cdsLocalizar.Filtered := True;
end;

procedure TFormLocalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    case self.Tag of
      1, 2, 3, 4, 6, 10, 11, 15, 16:begin
        CodigoLocalizado := cdsLocalizar.FieldByName('CODIGO').AsInteger;
        Descricao := cdsLocalizar.FieldByName('DESCRICAO').AsString;
      end;
      5 : begin
        CodigoLocalizado := cdsLocalizar.FieldByName('idkit').AsInteger;
        Descricao := cdsLocalizar.FieldByName('DESCRICAO').AsString;
      end;
      12 : begin
        CodigoLocalizado := cdsLocalizar.FieldByName('idveiculo').AsInteger;
        Descricao := cdsLocalizar.FieldByName('descricao').AsString;
      end;
      13 : begin
        CodigoLocalizado := cdsLocalizar.FieldByName('codigo').AsInteger;
        Descricao := cdsLocalizar.FieldByName('descricao').AsString;
      end;
      14 : begin
        CodigoLocalizado := cdsLocalizar.FieldByName('idveiculo').AsInteger;
        Descricao := cdsLocalizar.FieldByName('codigo').AsString;
      end;
    end;
  except
    on E:Exception do Begin
      GravaLogNoBanco(E.Message,True);
    end;
  end;
end;

procedure TFormLocalizar.cdsLocalizarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if (ValorFiltro<>'') and (IndexFiltro <> '') then
  begin
     Accept:= Pos(UpperCase(RemoveAcento(ValorFiltro)),UpperCase(RemoveAcento(cdsLocalizar.FieldByName(IndexFiltro).AsString)))>0;
  end else begin
  	Accept:= True;
  end;
end;

procedure TFormLocalizar.DBGridLocalizarDblClick(Sender: TObject);
begin
 close;
end;

procedure TFormLocalizar.edLocalizarKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
  close;
  key := #0;
 end;
end;

procedure TFormLocalizar.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
begin
  self.Tag := -1;
  close;
end;
end;

procedure TFormLocalizar.edLocalizarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
     VK_DOWN: begin
                cdsLocalizar.Next;
                Key := 0;
              end;
       VK_UP: begin
                cdsLocalizar.Prior;
                Key := 0;
              end;
      VK_END:cdsLocalizar.Last;
     VK_HOME:cdsLocalizar.First;

    VK_PRIOR: begin
               cdsLocalizar.MoveBy(-10);
               Key := 0;
              end;
     VK_NEXT: begin
               cdsLocalizar.MoveBy(10);
                Key := 0;
              end;
  end;
end;

procedure TFormLocalizar.DBGridEhLocalizarDblClick(Sender: TObject);
begin
  Close;
end;

end.
