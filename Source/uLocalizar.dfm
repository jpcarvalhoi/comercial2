object FormLocalizar: TFormLocalizar
  Left = 513
  Top = 247
  BorderStyle = bsDialog
  Caption = 'Localizar XXXXXXX'
  ClientHeight = 252
  ClientWidth = 644
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 72
    Width = 644
    Height = 180
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    ExplicitTop = 86
    ExplicitHeight = 166
    object DBGridEhLocalizar: TDBGridEh
      Left = 2
      Top = 2
      Width = 640
      Height = 176
      Align = alClient
      BorderStyle = bsNone
      DataGrouping.GroupLevels = <>
      DataSource = dsLocalizar
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridEhLocalizarDblClick
      OnKeyPress = edLocalizarKeyPress
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 72
    Align = alTop
    AutoSize = True
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 0
    object edLocalizar: TEdit
      Left = 0
      Top = 2
      Width = 644
      Height = 21
      TabOrder = 0
      OnChange = edLocalizarChange
      OnKeyDown = edLocalizarKeyDown
      OnKeyPress = edLocalizarKeyPress
    end
    object rgFiltro: TRadioGroup
      Left = 6
      Top = 27
      Width = 627
      Height = 43
      Caption = 'Filtrar por: '
      Columns = 3
      Items.Strings = (
        'campo 1'
        'campo 2'
        'campo 3')
      TabOrder = 1
      OnClick = rgFiltroClick
    end
  end
  object cdsLocalizar: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    Params = <>
    ProviderName = 'dspLocalizar'
    OnFilterRecord = cdsLocalizarFilterRecord
    Left = 272
    Top = 137
  end
  object dspLocalizar: TDataSetProvider
    DataSet = sqlLocalizar
    Options = [poAllowCommandText]
    Left = 272
    Top = 89
  end
  object dsLocalizar: TDataSource
    DataSet = cdsLocalizar
    Left = 272
    Top = 185
  end
  object sqlLocalizar: TZQuery
    Connection = DM.ZConnection
    Params = <>
    Left = 272
    Top = 48
  end
end
