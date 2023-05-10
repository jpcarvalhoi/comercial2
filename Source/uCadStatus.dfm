inherited FormCadStatus: TFormCadStatus
  Caption = 'Cadastro de Status'
  ClientHeight = 188
  ClientWidth = 459
  OnShow = FormShow
  ExplicitWidth = 465
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 8
    Top = 69
    Width = 56
    Height = 14
    Caption = 'C'#243'd. Status'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 115
    Width = 49
    Height = 14
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  inherited pnlPrincipal: TPanel
    Width = 459
    ExplicitWidth = 459
    inherited btnPrimeiro: TBitBtn
      Left = 10
      Visible = False
      ExplicitLeft = 10
    end
    inherited btnAnterior: TBitBtn
      Left = 84
      Visible = False
      ExplicitLeft = 84
    end
    inherited btnProximo: TBitBtn
      Left = 158
      Visible = False
      ExplicitLeft = 158
    end
    inherited btnUltimo: TBitBtn
      Left = 232
      Visible = False
      ExplicitLeft = 232
    end
    inherited btnLocalizar: TBitBtn
      Left = 305
      ExplicitLeft = 305
    end
    inherited btnFechar: TBitBtn
      Left = 380
      ExplicitLeft = 380
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 169
    Width = 459
    ExplicitTop = 169
    ExplicitWidth = 459
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 85
    Width = 70
    Height = 22
    CharCase = ecUpperCase
    DataField = 'idstatus'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [5]
    Left = 8
    Top = 131
    Width = 320
    Height = 22
    CharCase = ecUpperCase
    DataField = 'descricao'
    DataSource = dsNavegacao
    TabOrder = 3
    OnEnter = EditEnter
    OnExit = EditExit
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsStatus
    Left = 248
    Top = 80
  end
  inherited ActionList1: TActionList
    Left = 396
    Top = 116
  end
  inherited dsPesquisa: TDataSource
    Left = 200
    Top = 80
  end
end
