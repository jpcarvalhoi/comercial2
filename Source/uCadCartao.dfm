inherited FormCadCartao: TFormCadCartao
  Caption = 'Cadastro de Cart'#245'es'
  ClientHeight = 450
  ClientWidth = 502
  OnShow = FormShow
  ExplicitWidth = 508
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 502
    ExplicitWidth = 502
    inherited btnPrimeiro: TBitBtn
      Left = 53
      Visible = False
      ExplicitLeft = 53
    end
    inherited btnAnterior: TBitBtn
      Left = 127
      Visible = False
      ExplicitLeft = 127
    end
    inherited btnProximo: TBitBtn
      Left = 201
      Visible = False
      ExplicitLeft = 201
    end
    inherited btnUltimo: TBitBtn
      Left = 275
      Visible = False
      ExplicitLeft = 275
    end
    inherited btnLocalizar: TBitBtn
      Left = 349
      ExplicitLeft = 349
    end
    inherited btnFechar: TBitBtn
      Left = 423
      ExplicitLeft = 423
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 431
    Width = 502
    ExplicitTop = 431
    ExplicitWidth = 502
  end
  object DBGridEhPermissoes: TDBGrid [2]
    Left = 0
    Top = 121
    Width = 502
    Height = 310
    Align = alClient
    DataSource = dsNavegacao
    FixedColor = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idcartao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 321
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adm'
        Visible = True
      end>
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 61
    Width = 502
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 9
      Top = 16
      Width = 56
      Height = 13
      Caption = 'C'#243'd. Cart'#227'o'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 72
      Top = 16
      Width = 99
      Height = 13
      Caption = 'Bandeira - Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 414
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Tx. Admin.'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 9
      Top = 32
      Width = 56
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'idcartao'
      DataSource = dsNavegacao
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 32
      Width = 334
      Height = 21
      CharCase = ecUpperCase
      DataField = 'descricao'
      DataSource = dsNavegacao
      TabOrder = 1
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit3: TDBEdit
      Left = 414
      Top = 32
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'adm'
      DataSource = dsNavegacao
      TabOrder = 2
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsCartao
    Left = 416
    Top = 184
  end
  inherited ActionList1: TActionList
    Left = 340
    Top = 140
  end
  inherited dsPesquisa: TDataSource
    Left = 408
    Top = 128
  end
end
