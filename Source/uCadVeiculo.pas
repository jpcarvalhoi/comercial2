unit uCadVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClone, DBActns, ActnList, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  Grids, DBGrids, Mask, DBCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFormCadVeiculo = class(TfrmClone)
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
    DBGridVeiculo: TDBGrid;
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
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label15: TLabel;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    dsFuncVeiculo: TDataSource;
    DBCheckBox1: TDBCheckBox;
    btnRatrear: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGravarExecute(Sender: TObject);
    procedure dsNavegacaoDataChange(Sender: TObject; Field: TField);
    procedure actIncluirExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
  private
    procedure AtualizaFunc(Atualizar: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadVeiculo: TFormCadVeiculo;

implementation

uses uDM, FuncoesGerais, FuncoesGlobais, uCadFornecedor;

{$R *.dfm}

procedure TFormCadVeiculo.actGravarExecute(Sender: TObject);
begin
  if DM.cdsCadVeiculocodveiculo.AsInteger <= 0 then
  begin
    Informa('Informe o código do veículo.');
    if DBEdit1.CanFocus then
      DBEdit1.SetFocus;
  end
  else if DM.cdsCadVeiculoplaca.AsString = '' then
  begin
    Informa('Informe a placa do veículo.');
    if DBEdit2.CanFocus then
      DBEdit2.SetFocus;

  end
  {else if DM.cdsCadVeiculoidfuncionario.AsInteger = 0 then
  begin
    Informa('Informe o Funcionário responsável pelo veículo.');
    if DBLookupComboBox1.CanFocus then
      DBLookupComboBox1.SetFocus;
  end }
  else
  inherited;

end;

procedure TFormCadVeiculo.actIncluirExecute(Sender: TObject);
begin
  inherited;
  if DBEdit1.CanFocus then
    DBEdit1.SetFocus;
end;

procedure TFormCadVeiculo.actLocalizarExecute(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  cod := fLocalizar(13);
  if cod > 0 then
    dm.cdsCadVeiculo.Locate('codveiculo',cod,[]);

end;

procedure TFormCadVeiculo.BitBtn1Click(Sender: TObject);
var
  cod : Integer;
begin
  inherited;
  cod := fLocalizar(3);
  if cod > 0 then
  begin
    if DataSetInEdicao(dm.cdsCadVeiculo,True) then
      dm.cdsCadVeiculoidfornecedor.Value := cod;
  end;

end;

procedure TFormCadVeiculo.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFormCadFornecedor,FormCadFornecedor);
    FormCadFornecedor.Permissao := RetornaPermissao(4);
    FormCadFornecedor.Tag := 1;
    if FormCadFornecedor.Permissao.Visualizar then begin
      FormCadFornecedor.ShowModal;
    end
    else
     AcessoNegado(Negado_visualizar);
  finally
    FreeAndNil(FormCadFornecedor);

  end;
end;

procedure TFormCadVeiculo.AtualizaFunc(Atualizar : boolean);
begin
  with DM do begin
    if (not qrFuncVeiculo.Active) or (Atualizar) or (qrFuncVeiculoidveiculo.AsInteger <> cdsCadVeiculoidveiculo.AsInteger) then
    begin
      qrFuncVeiculo.Close;
      qrFuncVeiculo.Params.ParamByName('pidveiculo').AsInteger := cdsCadVeiculoidveiculo.AsInteger;
      qrFuncVeiculo.Open;
    end;

  end;
end;

procedure TFormCadVeiculo.btnAdicionarClick(Sender: TObject);
var
  CodFun : Integer;
begin
  inherited;
  if DM.cdsCadVeiculoidveiculo.AsInteger > 0 then
  begin
    CodFun := fLocalizar(11);
    if CodFun > 0 then
    begin
      if dm.qrFuncVeiculo.Locate('idfuncionario',CodFun,[]) then
        Informa('Funcionário já adicionado.')
      else begin
        with DM do begin
          ExecutaComando('insert into tbveiculo_funcionario (idveiculo, idfuncionario) values ('+cdsCadVeiculoidveiculo.AsString+', '+IntToStr(CodFun)+')');
          AtualizaFunc(True);
        end;
      end;
    end;
  end
  else
    Informa('Antes de adicionar os funcionários salve o cadastro do veículo.');
end;

procedure TFormCadVeiculo.btnRemoverClick(Sender: TObject);
begin
  inherited;
  if Pergunta('Deseja realmente excluir o funcionário:'+#13+'"'+DM.qrFuncVeiculonome.AsString+'" ?') = id_no then exit;

  if DM.qrFuncVeiculoidfuncionario.AsInteger > 0 then
  begin
    DM.ExecutaComando('delete from tbveiculo_funcionario where idveiculo = '+DM.qrFuncVeiculoidveiculo.AsString + ' and idfuncionario = '+DM.qrFuncVeiculoidfuncionario.AsString);
    AtualizaFunc(True);
  end;
end;

procedure TFormCadVeiculo.DBCheckBox1Click(Sender: TObject);
begin
  inherited;
  btnRatrear.Enabled := DBCheckBox1.Checked;
end;

procedure TFormCadVeiculo.dsNavegacaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DBGridVeiculo.Enabled := not DataSetInEdicao(DM.cdsCadVeiculo);
  btnAdicionar.Enabled := DM.cdsCadVeiculoidveiculo.AsInteger > 0;
  btnRemover.Enabled := DM.cdsCadVeiculoidveiculo.AsInteger > 0;
  AtualizaFunc(False);
  DBCheckBox1Click(nil);
end;

procedure TformCadVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Action <> caNone then
  begin
     DM.cdsCadVeiculo.Close;
     DM.qrFuncionario.Close;
  end;
end;

procedure TFormCadVeiculo.FormShow(Sender: TObject);
begin
  inherited;
  DM.cdsCadVeiculo.Open;
  DM.qrFuncionario.Open;
  DM.qrlkFornecedor.Open;
end;

end.
