inherited FormCadCategoria: TFormCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientHeight = 427
  ClientWidth = 685
  OnShow = FormShow
  ExplicitWidth = 691
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 685
    ExplicitWidth = 685
    inherited btnLocalizar: TBitBtn [0]
      Left = 268
      Visible = False
      ExplicitLeft = 268
    end
    inherited btnPrimeiro: TBitBtn [1]
      Left = 310
      ExplicitLeft = 310
    end
    inherited btnAnterior: TBitBtn [2]
      Left = 384
      ExplicitLeft = 384
    end
    inherited btnProximo: TBitBtn [3]
      Left = 458
      ExplicitLeft = 458
    end
    inherited btnUltimo: TBitBtn [4]
      Left = 532
      ExplicitLeft = 532
    end
    inherited btnNovo: TBitBtn [5]
    end
    inherited btnSalvar: TBitBtn [6]
    end
    inherited btnCancelar: TBitBtn [7]
    end
    inherited btnFechar: TBitBtn
      Left = 606
      ExplicitLeft = 606
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 408
    Width = 685
    ExplicitTop = 408
    ExplicitWidth = 685
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 61
    Width = 685
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      685
      60)
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 22
      Height = 13
      Caption = 'C'#243'd.'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 84
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 24
      Width = 62
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'idcategoria'
      DataSource = dsNavegacao
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 84
      Top = 24
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      DataField = 'descricao'
      DataSource = dsNavegacao
      TabOrder = 1
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = SelectProximo
    end
    object edFiltro: TLabeledEdit
      Left = 505
      Top = 35
      Width = 145
      Height = 21
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Filtrar'
      TabOrder = 2
      OnChange = edFiltroChange
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyPress = edFiltroKeyPress
    end
    object btnFiltrar: TBitBtn
      Left = 654
      Top = 33
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      DoubleBuffered = True
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9DFDFDEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD8D8D77B7A77737270B7B7B5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE4E4E33435520F1D881320803A3760ACACABFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6E6D66131E8B0035F30860FF092FB05A566FF8F8F8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C59999999191914C4B4322
        2564001FDC0042EF0049F8384189EBEBEAFFFFFFFFFFFFFFFFFFE0E0DFF1F1F1
        FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF34343445454547474754545354534D121C
        82001AD30020E14C5696F7F7F7FFFFFFEDEDED63616534304A59575DCECECEFF
        FFFFFFFFFFFAFAFA4545453131313737374E4E4E43434385858492918B4C4D75
        505388A7A6A8FFFFFFFBFBFB5E5D600A1EA00031C9112288625F6CE1E1E0FFFF
        FFC9C9C92E2E2E3333332B2B2B474747555555646464BBBBBBAEADA77F7F79D7
        D7D7F2F2F2858584383742001CC6014CFC0657F62C327AB4B3B2FFFFFF858585
        3333334D4D4D4141412A2A2A6262627D7D7D7575756868685959599393939595
        9547474756554C0F1A840025E40038F4293EA1B1B0AFECECEC46464639393940
        40407373734D4D4D3030305D5D5D6464644747474040404545454E4E4E474747
        70706E68676919228B1626B8686C8DDBDAD9BFBFBF3737373E3E3E4545454C4C
        4C7272725050502121212323232A2A2A3636363A3A3A474747505050646464C7
        C7C59F9E9674726C757572F1F1F1B7B7B73D3D3D4444444C4C4C535353595959
        6A6A6A5959593F3F3F2424244545453232323838386161617575757F7F7F7E7E
        7E4B4B4B4B4B4BDADADAC5C5C54343434A4A4A52525259595961616163636376
        76764F4F4F3A3A3A4747472B2B2B2E2E2E4141416E6E6E6D6D6D434343323232
        888888FCFCFCF1F1F15A5A5A5151515757575F5F5F6565656C6C6C5959592C2C
        2C4E4E4E2929293737372C2C2C2626262C2C2C3434344343436E6E6EEBEBEBFF
        FFFFFFFFFFA6A6A65959595E5E5E6565656B6B6B6A6A6A2626264E4E4E2F2F2F
        2F2F2F4646464747474E4E4E6363638080808C8C8CEBEBEBFFFFFFFFFFFFFFFF
        FFCFCFCF5151516464646B6B6B7E7E7E8787876E6E6E3B3B3B24242448484847
        47474848485E5E5E6E6E6E818181ECECECFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
        656565585858727272A6A6A6FFFFFFA9A9A92B2B2B4747475A5A5A4545455B5B
        5B6969697E7E7EEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7B0
        B0B0C4C4C4FFFFFFFFFFFF7373733D3D3D5B5B5B5050505959596666668F8F8F
        ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB1B1B15353534646467C7C7CCCCCCCE9E9E9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCACACABABABAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnFiltrarClick
    end
  end
  object dbgridCategoria: TDBGridEh [3]
    Left = 0
    Top = 121
    Width = 685
    Height = 287
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = dsNavegacao
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'idcategoria'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'descricao'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsCategoria
  end
end
