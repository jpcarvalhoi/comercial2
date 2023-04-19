inherited FormGrupoConta: TFormGrupoConta
  Caption = 'Cadastro de Grupo de Contas'
  ClientHeight = 360
  ClientWidth = 750
  OnShow = FormShow
  ExplicitWidth = 756
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 750
    ExplicitWidth = 750
    inherited btnPrimeiro: TBitBtn
      Left = 301
      ExplicitLeft = 301
    end
    inherited btnAnterior: TBitBtn
      Left = 375
      ExplicitLeft = 375
    end
    inherited btnProximo: TBitBtn
      Left = 449
      ExplicitLeft = 449
    end
    inherited btnUltimo: TBitBtn
      Left = 523
      ExplicitLeft = 523
    end
    inherited btnLocalizar: TBitBtn
      Left = 597
      ExplicitLeft = 597
    end
    inherited btnFechar: TBitBtn
      Left = 671
      ExplicitLeft = 671
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 341
    Width = 750
    ExplicitTop = 341
    ExplicitWidth = 750
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 61
    Width = 750
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 22
      Height = 13
      Caption = 'C'#243'd.'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 127
      Top = 4
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 5
      Top = 20
      Width = 117
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'idgrupoconta'
      DataSource = dsNavegacao
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBEdit2: TDBEdit
      Left = 127
      Top = 20
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'descricao'
      DataSource = dsNavegacao
      TabOrder = 1
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 478
      Top = 4
      Width = 185
      Height = 44
      Caption = 'Tipo'
      Columns = 2
      DataField = 'tipo'
      DataSource = dsNavegacao
      Items.Strings = (
        'Receita'
        'Despesa')
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        'R'
        'D')
    end
  end
  object DBGridEh1: TDBGridEh [3]
    Left = 0
    Top = 113
    Width = 750
    Height = 228
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = dsNavegacao
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'idgrupoconta'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'descricao'
        Footers = <>
        Width = 385
      end
      item
        EditButtons = <>
        FieldName = 'tipoCalc'
        Footers = <>
        Width = 82
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsGrupoConta
  end
end
