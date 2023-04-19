unit uConfigs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, RxCombos, Mask, DBCtrls, RxDBComb, rxToolEdit, ExtDlgs,
  System.Actions;

type
  TFormConfigs = class(TfrmClone)
    PageControl1: TPageControl;
    tsPreferencias: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    ColorComboBox: TColorComboBox;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    GroupBox4: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox5: TGroupBox;
    edChave: TLabeledEdit;
    edLicenca: TLabeledEdit;
    GroupBox6: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Imagelogo: TImage;
    GroupBox7: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    ColorComboBox1: TColorComboBox;
    ColorDialog: TColorDialog;
    BitBtn3: TBitBtn;
    GroupBox8: TGroupBox;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBCheckBox7: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ColorComboBoxChange(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edLicencaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure dsNavegacaoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigs: TFormConfigs;

implementation

uses uDM, FuncoesGlobais, uFTP, FuncoesGerais, uSeguranca;

{$R *.dfm}

procedure TFormConfigs.FormCreate(Sender: TObject);
begin
  inherited;
  TabSheet1.TabVisible := FALSE;
  edChave.Text := _ChaveAtivacao;

  if FileExists(mPathLogo) then
    Imagelogo.Picture.LoadFromFile(mPathLogo);

end;

procedure TFormConfigs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (chr(key) = 'L') and (Shift = [ssCtrl, ssAlt, ssShift]) then
    GroupBox5.Visible := True;
end;

procedure TFormConfigs.FormShow(Sender: TObject);
begin
  inherited;
  if not DM.cdsConfigs.Active then DM.cdsConfigs.Open else DM.cdsConfigs.Refresh;
  dsNavegacao.DataSet := DM.cdsConfigs;
  ColorComboBox.OnChange := nil;
  ColorComboBox.ColorValue := CorEdit;
  ColorComboBox.OnChange := ColorComboBoxChange;
  ColorComboBox1.OnChange := nil;
  if DM.cdsConfigscor_fundo.AsString <> '' then
    ColorComboBox1.ColorValue :=  StrToInt64(DM.cdsConfigscor_fundo.Value);
  ColorComboBox1.OnChange := ColorComboBoxChange;
  PageControl1.ActivePageIndex := 0;
  edLicenca.Text := _licencaBanco;
end;

procedure TFormConfigs.edLicencaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  DataSetInEdicao(DM.cdsConfigs,True);
end;

procedure TFormConfigs.ColorComboBoxChange(Sender: TObject);
begin
  inherited;
  if not (DM.cdsConfigs.State in [dsEdit,dsInsert]) then
    DM.cdsConfigs.Edit;
end;

procedure TFormConfigs.DBCheckBox5Click(Sender: TObject);
begin
  inherited;
  DBCheckBox6.Visible := DBCheckBox5.Checked;
  Label18.Visible := DBCheckBox5.Checked;
  DBEdit17.Visible := DBCheckBox5.Checked;
end;

procedure TFormConfigs.dsNavegacaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DBCheckBox5Click(DBCheckBox5);
end;

procedure TFormConfigs.actGravarExecute(Sender: TObject);
begin
  DM.cdsConfigscordedit.Value := FloatToStr(ColorComboBox.ColorValue);
  Dm.cdsConfigscor_fundo.Value := FloatToStr(ColorComboBox1.ColorValue);
  CorEdit := ColorComboBox.ColorValue;
  if ValidaLicenca(False, edLicenca.Text) then begin
    inherited;
    getLicenca(_RegLicenca,edLicenca.Text);

  end;
end;

procedure TFormConfigs.BitBtn1Click(Sender: TObject);
begin
  inherited;
  OpenPictureDialog1.Filter := 'Imagens jpeg (*.jpg)|*.jpg';
  if OpenPictureDialog1.Execute then
  begin
    Imagelogo.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    CopyFile(pChar(OpenPictureDialog1.FileName),pChar(mPathLogo),False);
  end;
end;

procedure TFormConfigs.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if ColorDialog.Execute then begin
    ColorComboBox1.ColorValue := ColorDialog.Color;
    ColorComboBox1.Refresh;
  end;
end;

end.
