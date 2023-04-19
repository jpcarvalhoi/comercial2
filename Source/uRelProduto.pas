unit uRelProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, rxToolEdit, DBCtrls, DB;

type
  TFormRelProdutos = class(TForm)
    Panel1: TPanel;
    btnVisualizar: TBitBtn;
    Label1: TLabel;
    dblkCategoria: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DateEdit2: TDateEdit;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    cbCampo: TComboBox;
    cbConta: TComboBox;
    edTotal: TEdit;
    btnMinimo: TBitBtn;
    dsCategoria: TDataSource;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    edCliente: TEdit;
    btnPrefeitura: TBitBtn;
    gbProduto: TGroupBox;
    edProduto: TEdit;
    BitBtn1: TBitBtn;
    lbLote: TLabeledEdit;
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dblkCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbCampoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnPrefeituraClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FCodCliente, FCodProduto : Integer;
  public
    { Public declarations }
  end;

const
  tag_producao = 1;
  tag_produtocliente = 2;
  tag_clientevenda = 3;

var
  FormRelProdutos: TFormRelProdutos;

implementation

uses uDesconto, uDM, FuncoesGerais, uRelatorios, FuncoesGlobais;

{$R *.dfm}

procedure TFormRelProdutos.btnPrefeituraClick(Sender: TObject);
var
  Nome : String;
begin
  FCodCliente := SelCliente(Nome,True);
  if FCodCliente > 0 then
  begin
    edCliente.Text := Nome;

  end
  else
    edCliente.Clear;

end;

procedure TFormRelProdutos.btnVisualizarClick(Sender: TObject);
var
  sql, campo, op : string;
  SqlClienteProduto : String;
begin
  if tag = tag_clientevenda then
  begin
    with FormRelatorios do begin
      SqlClienteProduto := qrClienteVenda.SQL.Text;
      FormRelatorios.ppLabel153.Caption := '';
      if dblkCategoria.Text <> '' then
      begin
        sql := sql + ' and p.idcategoria = '+IntToStr(dblkCategoria.KeyValue);
        FormRelatorios.ppLabel153.Caption := 'Categoria: '+dblkCategoria.Text;
      end;

      FormRelatorios.ppLabel148.Caption := '';
      if (DateEdit1.Date > 0) and (DateEdit2.Date >= DateEdit1.Date) then
      begin
        sql := sql + ' and n.datalancamento between '+FormatDateSql(DateEdit1.Date)+' and '+FormatDateSql(DateEdit2.Date);
        FormRelatorios.ppLabel148.Caption := 'Período '+DateEdit1.Text + ' à '+DateEdit2.Text;
      end;

      if edCliente.Text <> '' then
        sql := sql + ' and n.idcliente = '+IntToStr(FCodCliente);

      if edProduto.Text <> '' then
        sql := sql + ' and ni.idproduto = '+IntToStr(FCodProduto);

      qrClienteVenda.Close;
      qrClienteVenda.SQL.Text := StringReplace(qrClienteVenda.SQL.Text,'/*where*/',sql,[rfIgnoreCase]);
      qrClienteVenda.Open;

      if qrClienteVenda.RecordCount = 0 then
        Informa('Sem dados para geração do relatório.')
      else begin
        qrClienteVenda.SortedFields := 'prefeitura;descricao;cliente';
        qrClienteVenda.First;

         rpClienteVenda.Print;
      end;

      qrClienteVenda.Close;
      qrClienteVenda.SQL.Text := SqlClienteProduto;
    end;
  end
  else if tag = tag_produtocliente then
  begin
    with FormRelatorios do begin

      SqlClienteProduto := qrClienteProduto.SQL.Text;

      if dblkCategoria.Text <> '' then
        sql := sql + ' and p.idcategoria = '+IntToStr(dblkCategoria.KeyValue);

      if (DateEdit1.Date > 0) and (DateEdit2.Date >= DateEdit1.Date) then
        sql := sql + ' and p.dt_cadastro between '+FormatDateSql(DateEdit1.Date)+' and '+FormatDateSql(DateEdit2.Date);

      if (edCliente.Text <> '') and (FCodCliente > 0) then
        sql := sql + ' and  c.idcliente = '+IntToStr(FCodCliente);

      qrClienteProduto.Close;
      qrClienteProduto.SQL.Clear;
      qrClienteProduto.SQL.Add(SqlClienteProduto);
      qrClienteProduto.SQL.Add(sql);
      qrClienteProduto.SQL.Add('order by cl.nome, p.descricao');
      qrClienteProduto.Open;
      qrClienteProduto.First;

      rpClienteProduto.Print;

      qrClienteProduto.Close;
      qrClienteProduto.SQL.Text := SqlClienteProduto;

    end;
  end
  else if Tag= tag_producao then
  begin
     if dblkCategoria.Text <> '' then
        sql := sql + ' and p.idcategoria = '+IntToStr(dblkCategoria.KeyValue);

     if (FCodCliente > 0) and (edCliente.Text <> '') then
       sql := sql + ' and n.idcliente = '+IntToStr(FCodCliente);

     if lbLote.Text <> '' then
       sql := sql + ' and n.lote = '+QuotedStr(lbLote.Text);

     if (DateEdit1.Date > 0) and (DateEdit2.Date >= DateEdit1.Date) then
     begin
        sql := sql + ' and cast(n.datalancamento as date) between '+FormatDateSql(DateEdit1.Date)+' and '+FormatDateSql(DateEdit2.Date);
        FormRelatorios.pplbPerProducao.Caption := 'Período '+DateEdit1.Text+' à '+DateEdit2.Text;
     end
     else
       FormRelatorios.pplbPerProducao.Caption := '';

     if lbLote.Text <> '' then
     begin
       FormRelatorios.pplbPerProducao.Caption := FormRelatorios.pplbPerProducao.Caption + '  Lote: '+lbLote.Text;
     end;


     with FormRelatorios do
     begin
       pplbProducao.Caption := 'Produto Total/Prefeituras';
       pplbPrefeitura.Caption := edCliente.Text;

       qrProducao.Close;
       qrProducao.SQL.Clear;
       qrProducao.SQL.Add(StringReplace(SqlProducao,'/*where*/',sql,[rfIgnoreCase,rfReplaceAll]));
       qrProducao.Open;

       if qrProducao.RecordCount > 0 then
         rpProducao.Print
       else
         Informa('Sem dados para geração do relatório.');
     end;
  end
  else begin

    if Sender = btnMinimo  then
    begin
      sql := ' and p.est_minimo <= p.est_atual';
    end
    else begin
      if dblkCategoria.Text <> '' then
        sql := sql + ' and p.idcategoria = '+IntToStr(dblkCategoria.KeyValue);

      if (DateEdit1.Date > 0) and (DateEdit2.Date >= DateEdit1.Date) then
        sql := sql + ' and p.dt_cadastro between '+FormatDateSql(DateEdit1.Date)+' and '+FormatDateSql(DateEdit2.Date);

      if (cbCampo.Text <> '') and (StrToIntDef(edTotal.Text,0) > 0) and (cbConta.Text <> '') then
      begin
        case cbCampo.ItemIndex of
          0 : campo := 'p.est_atual';
          1 : campo := 'p.est_minimo';
        end;

        case cbConta.ItemIndex of
          0 : campo := campo + ' <= ';
          1 : campo := campo + ' >= ';
          2 : campo := campo + ' = ';
          3 : campo := campo + ' <> ';
        end;

        campo := campo + edTotal.Text;

        sql := sql + ' and '+campo

      end;
    end;

    with FormRelatorios do begin
      qrProduto.Close;
      qrProduto.SQL.Clear;
      qrProduto.SQL.Add(SqlProdutos);
      qrProduto.SQL.Add(sql);
      qrProduto.SQL.Add('order by p.descricao');
      qrProduto.Open;

      if qrProduto.RecordCount <= 0 then
        Informa('Sem dados para geração do relatório.')
      else
        rpProduto.Print;

    end;
  end;

end;

procedure TFormRelProdutos.BitBtn1Click(Sender: TObject);
var
  desc : String;
begin
  FCodProduto := LocalizaProduto(desc);
  if FCodProduto > 0 then
  begin
    edProduto.Text := desc;
  end;
end;

procedure TFormRelProdutos.BitBtn3Click(Sender: TObject);
begin
  dblkCategoria.KeyValue := null;
  DateEdit1.Clear;
  DateEdit2.Clear;
  cbCampo.ItemIndex := -1;
  cbConta.ItemIndex := -1;
  edTotal.Clear;
  edProduto.Clear;
  edCliente.Clear;
end;

procedure TFormRelProdutos.cbCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) or (Key = VK_BACK) then
    TComboBox(Sender).ItemIndex := -1;
end;

procedure TFormRelProdutos.dblkCategoriaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) or (Key = VK_BACK) then
    dblkCategoria.KeyValue := null;
end;

procedure TFormRelProdutos.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DELETE) or (Key = VK_BACK) then
  begin
    if Sender = edCliente then
    begin
      FCodCliente := 0;
      edCliente.Clear;
    end
    else if Sender = edProduto then
    begin
      FCodProduto := 0;
      edProduto.Text := '';
    end;
  end;
end;

procedure TFormRelProdutos.FormShow(Sender: TObject);
begin
  FCodCliente := 0;
  lbLote.Visible := False;
  if not DM.cdsCategoria.Active then DM.cdsCategoria.Open ;
  if tag = tag_producao then
  begin
    GroupBox2.Visible := False;
    btnMinimo.Visible := False;
    GroupBox1.Caption := 'Data de Lançamento';
    GroupBox3.Visible := True;
    GroupBox3.Top := GroupBox2.Top;
    lbLote.Visible := True;
    lbLote.Top := GroupBox3.Top + GroupBox3.Height + 25;
  end
  else if (tag = tag_produtocliente) or (tag = tag_clientevenda) then
  begin
     GroupBox2.Visible := False;
     btnMinimo.Visible := False;
     GroupBox3.Visible := True;
     GroupBox3.Top := GroupBox2.Top;
  end;
  gbProduto.Visible := self.Tag = tag_clientevenda;
end;

end.
