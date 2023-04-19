unit uAlteraitem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uClone_TelaPadrao, StdCtrls, Buttons, DB, Mask, DBCtrls,
  ExtCtrls, ActnList, rxToolEdit, rxCurrEdit, sSkinProvider;

type
  TFormAlteraItem = class(TFormClone_TelaPadrao)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsitem: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    edQuantidade: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    edDesconto: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    BitBtn1: TBitBtn;
    btnConfirmar: TBitBtn;
    actConfirmar: TAction;
    edPercentual: TCurrencyEdit;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    sSkinProvider1: TsSkinProvider;
    procedure actConfirmarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sSkinProvider1SkinItem(Item: TComponent;
      var CanBeAdded: Boolean; var SkinSection: string);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlteraItem: TFormAlteraItem;

implementation

uses uVenda, FuncoesGlobais, FuncoesGerais;

{$R *.dfm}

procedure TFormAlteraItem.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  btnConfirmar.SetFocus;
  ModalResult := mrOk;
end;

procedure TFormAlteraItem.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

procedure TFormAlteraItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if ModalResult = mrOk then
  begin
    if StrToIntDef(edQuantidade.Text,0) = 0 then
    begin
      Informa('A quantidade informada deve ser maior ou igual a 1.');
      Action := caNone;
    end
    else if dsitem.DataSet.FieldByName('preco').AsCurrency < 0 then
    begin
      Informa('Preço inválido.');
      Action := caNone;
    end;

  end;

end;

procedure TFormAlteraItem.FormShow(Sender: TObject);
begin
  inherited;
  edDesconto.SetFocus;
end;

procedure TFormAlteraItem.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not (dsitem.DataSet.State in [dsEdit,dsInsert]) then
    dsitem.DataSet.Edit;

  if edPercentual.Value > 0 then
  begin
     if dsitem.DataSet.FieldByName('preco').AsCurrency > 0 then
       dsitem.DataSet.FieldByName('desconto').AsCurrency := dsitem.DataSet.FieldByName('preco').AsCurrency * edPercentual.Value / 100;
  end
  else
    Informa('Informe o percentual de desconto.');


end;

procedure TFormAlteraItem.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
  inherited;
  if Item.Tag = 1 then
    CanBeAdded := False;
end;

end.
