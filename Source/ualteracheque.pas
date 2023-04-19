unit ualteracheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, RxDBComb;

type
  TFormAlteraCheque = class(TfrmClone)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    procedure actExcluirExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCheque : Integer;
  end;

var
  FormAlteraCheque: TFormAlteraCheque;

implementation

uses uDM;

{$R *.dfm}

procedure TFormAlteraCheque.actExcluirExecute(Sender: TObject);
begin
  //inherited;

end;

procedure TFormAlteraCheque.actIncluirExecute(Sender: TObject);
begin
  //inherited;

end;

procedure TFormAlteraCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dm.qrlkCliente.close;
  dm.qrlkFornecedor.close;
  DM.cdsEditCheque.Close;
end;

procedure TFormAlteraCheque.FormCreate(Sender: TObject);
begin
  inherited;
  idCheque := 0;
end;

procedure TFormAlteraCheque.FormShow(Sender: TObject);
begin
  inherited;
  dm.qrlkCliente.Open;
  dm.qrlkFornecedor.Open;
  DM.cdsEditCheque.Close;
  DM.cdsEditCheque.Params.ParamByName('pidtbcheque').Value := idCheque;
  DM.cdsEditCheque.Open;
end;

end.
