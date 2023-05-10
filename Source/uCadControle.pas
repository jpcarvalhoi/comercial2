unit uCadControle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UClone, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, RxToolEdit, RxDBCtrl;

type
  TfrmCadControle = class(TfrmClone)
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    Label9: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label11: TLabel;
    btnCliente: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadControle: TfrmCadControle;

implementation

uses
  uDM, FuncoesGerais, FuncoesGlobais;

{$R *.dfm}

procedure TfrmCadControle.btnClienteClick(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  if DataSetInEdicao(DM.cdsControle) then
  begin
    cod := fLocalizar(18);
    if cod > 0 then
    begin
      DM.cdsControleidproduto.AsInteger := cod;
    end;
  end;

end;

procedure TfrmCadControle.FormShow(Sender: TObject);
begin
  inherited;
  DM.cdsControle.Open;
  OpenOrRefresh(DM.dslkcliente.DataSet);
  OpenOrRefresh(dm.cdsLKProduto);
  OpenOrRefresh(dm.dslkfornecedor.DataSet);
  OpenOrRefresh(dm.cdsStatus);

end;

end.
