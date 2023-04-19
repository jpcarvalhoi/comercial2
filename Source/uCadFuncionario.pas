unit uCadFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls;

type
  TFormCadFuncionario = class(TfrmClone)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    Label32: TLabel;
    DBEdit31: TDBEdit;
    GroupBox6: TGroupBox;
    Label33: TLabel;
    DBEdit32: TDBEdit;
    Label34: TLabel;
    DBEdit33: TDBEdit;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    Label36: TLabel;
    DBEdit35: TDBEdit;
    Label37: TLabel;
    DBEdit36: TDBEdit;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Label41: TLabel;
    DBEdit40: TDBEdit;
    Label42: TLabel;
    DBEdit41: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    CodFuncionario : Integer;
  end;

var
  FormCadFuncionario: TFormCadFuncionario;

implementation

uses uDM, FuncoesGlobais;

{$R *.dfm}

procedure TFormCadFuncionario.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBEdit2.CanFocus then
    DBEdit2.SetFocus;
end;

procedure TFormCadFuncionario.actLocalizarExecute(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  cod := fLocalizar(11);
  if cod > 0 then
  begin
    DM.cdsFuncionario.Close;
    DM.cdsFuncionario.Params[0].Value := cod;
    DM.cdsFuncionario.Open;
  end;

end;

procedure TFormCadFuncionario.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_DELETE) or (key = vk_back) then
  begin
    DM.cdsFuncionario.Edit;
    DM.cdsFuncionarioidsetor.AsVariant := null;
  end;

end;

procedure TFormCadFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Action <> caNone then
    DM.cdsSetor.Close;
end;

procedure TFormCadFuncionario.FormShow(Sender: TObject);
begin
  inherited;
  if not DM.cdsFuncionario.Active then
    DM.cdsFuncionario.Open;
  DM.cdsSetor.Open;
end;

end.
