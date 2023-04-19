unit uCompraCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, rxToolEdit, RXDBCtrl, Mask;

type
  TFormCompCombustivel = class(TfrmClone)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGravarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdCompra : Integer;
  end;

var
  FormCompCombustivel: TFormCompCombustivel;

implementation

uses uDM, FuncoesGlobais, FuncoesGerais, uCadFornecedor;
{$R *.dfm}

procedure TFormCompCombustivel.actGravarExecute(Sender: TObject);
begin
  ActiveControl := nil;

  if ChecaRequeridos(DM.qrCompCombustivel) then
    inherited;

end;

procedure TFormCompCombustivel.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBDateEdit1.CanFocus then
    DBDateEdit1.SetFocus;
end;

procedure TFormCompCombustivel.BitBtn1Click(Sender: TObject);
var
  cod: Integer;
begin
  inherited;
  cod := fLocalizar(3);
  if cod > 0 then
  begin
    if DataSetInEdicao(DM.qrCompCombustivel, True) then
      DM.qrCompCombustivelidfornecedor.Value := cod;
  end;
end;

procedure TFormCompCombustivel.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormCadFornecedor, FormCadFornecedor);
    FormCadFornecedor.Permissao := RetornaPermissao(4);
    FormCadFornecedor.Tag := 1;
    if FormCadFornecedor.Permissao.Visualizar then begin
      FormCadFornecedor.ShowModal;
      if DM.qrlkFornecedor.Active then
        DM.qrlkFornecedor.Refresh;
    end
    else
      AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadFornecedor);
  end;
end;

procedure TFormCompCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Action <> caNone then
  begin
    DM.qrCompCombustivel.Close;
    DM.qrlkFornecedor.Close;
  end;
end;

procedure TFormCompCombustivel.FormCreate(Sender: TObject);
begin
  inherited;
  IdCompra := 0;
end;

procedure TFormCompCombustivel.FormShow(Sender: TObject);
begin
  inherited;
  DM.qrlkFornecedor.Open;

  DM.qrCompCombustivel.Close;
  DM.qrCompCombustivel.Params.ParamByName('pIdestoque_gas').Value := IdCompra;
  dm.qrCompCombustivel.Open;

  if self.Tag = 1 then
    actIncluirExecute(nil);

end;

end.
