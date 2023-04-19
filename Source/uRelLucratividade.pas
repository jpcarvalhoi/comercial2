unit uRelLucratividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, ExtCtrls, StdCtrls, Mask, rxToolEdit, ActnList,
  Buttons;

type
  TFormRelLucratividade = class(TFormClone_TelaPadrao)
    GroupBox1: TGroupBox;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Panel1: TPanel;
    edProd: TLabeledEdit;
    edCliente: TLabeledEdit;
    btnCliente: TBitBtn;
    edKit: TLabeledEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FCodProd, FCodKit, FCodCliente : Integer;
  public
    { Public declarations }
  end;

const
  tag_lucratividade = 0;
  tag_relvendaproduto       = 1;


var
  FormRelLucratividade: TFormRelLucratividade;

implementation

uses FuncoesGerais, uRelatorios, uSelProduto, FuncoesGlobais, uSelKit,
  uSelCliente;

{$R *.dfm}

procedure TFormRelLucratividade.BitBtn1Click(Sender: TObject);
var
  filtro, sql : string;
begin
  inherited;
  if DateEdit2.Date < DateEdit1.Date then
  begin
    Informa('Datas inválidas.');

  end
  else begin
     filtro := 'where cast(v.datahora as date) between '+FormatDateSql(DateEdit1.Date) +' and '+FormatDateSql(DateEdit2.Date);

      if (edProd.Text <> '') and (FCodProd > 0) then
      begin
        filtro := filtro + ' and i.idproduto = '+IntToStr(FCodProd)  ;
      end;

      if (edCliente.Text <> '') and (FCodCliente > 0) then
      begin
        filtro := filtro + ' and v.codcliente = '+IntToStr(FCodCliente)  ;
      end;

      if (edKit.Text <> '') and (FCodKit > 0) then
      begin
        filtro := filtro + ' and i.idkit = '+IntToStr(FCodKit)  ;
      end;

     if tag = tag_relvendaproduto then
     begin
       with FormRelatorios do begin
         sql := SqlVendaProdutos + filtro;
         sql := sql + ' order by p.descricao, v.datahora';

         qrVendaProdutos.Close;
         qrVendaProdutos.SQL.Clear;
         qrVendaProdutos.SQL.Add(sql);
         qrVendaProdutos.Open;

          if qrVendaProdutos.RecordCount = 0 then
            Informa('Sem dados para geração do relatório')
          else begin
            pplbPerVendaProd.Caption := 'Período do relatório: '+DateEdit1.Text + ' à '+DateEdit2.Text;
            rpVendaProdutos.Print;

          end;


       end;
     end
     else if tag = tag_lucratividade then
     begin
        with FormRelatorios do begin
          sql := StringReplace(SqlLucratividade,'/*where*/',filtro,[]);

          qrLucratividade.Close;
          qrLucratividade.SQL.Clear;
          qrLucratividade.SQL.Add(sql);
          qrLucratividade.Open;

          if qrLucratividade.RecordCount = 0 then
            Informa('Sem dados para geração do relatório')
          else begin
            rpLucratividade.Print;

          end;


        end;
     end;




  end;
end;

procedure TFormRelLucratividade.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelKit,FormSelKit);
    FormSelKit.Permissao := RetornaPermissao(6);
    FormSelKit.Localizando := True;
    if FormSelKit.Permissao.Visualizar then begin
      if (FormSelKit.ShowModal = mrOK) and (FormSelKit.CodLocalizado > 0) then
      begin
        edKit.Text := FormSelKit.cdsPesquisadescricao.AsString;
        FCodKit := FormSelKit.CodLocalizado;
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelKit);
  end;
end;

procedure TFormRelLucratividade.BitBtn3Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelCliente,FormSelCliente);
    FormSelCliente.Permissao := RetornaPermissao(3);
    FormSelCliente.Localizando := True;
    if FormSelCliente.Permissao.Visualizar then begin
      if (FormSelCliente.ShowModal = mrOK) and (FormSelCliente.CodLocalizado > 0) then
      begin
        edCliente.Text := FormSelCliente.cdsPesquisanome.AsString;
        FCodCliente := FormSelCliente.CodLocalizado;
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelCliente);
  end;
end;

procedure TFormRelLucratividade.btnClienteClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormSelPoduto,FormSelPoduto);
    FormSelPoduto.Permissao := RetornaPermissao(6);
    FormSelPoduto.Localizando := True;
    if FormSelPoduto.Permissao.Visualizar then begin
      if (FormSelPoduto.ShowModal = mrOK) and (FormSelPoduto.CodLocalizado > 0) then
      begin
        edProd.Text := FormSelPoduto.cdsPesquisadescricao.AsString;
        FCodProd := FormSelPoduto.CodLocalizado;
      end;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormSelPoduto);
  end;

end;

procedure TFormRelLucratividade.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_delete) or (key = vk_back) then
    TLabeledEdit(Sender).Clear;
end;

procedure TFormRelLucratividade.FormShow(Sender: TObject);
begin
  inherited;
  DateEdit1.Date := StrToDate(FormatDateTime('01/mm/yyyy',Date));
  DateEdit2.Date := Date;
end;

end.
