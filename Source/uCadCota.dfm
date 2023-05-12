inherited FormCadCota: TFormCadCota
  Caption = 'Cadastro de Cotas'
  ClientHeight = 524
  ClientWidth = 686
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 692
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 686
    ExplicitWidth = 686
    inherited btnPrimeiro: TBitBtn
      Left = 237
      Visible = False
      ExplicitLeft = 237
    end
    inherited btnAnterior: TBitBtn
      Left = 311
      Visible = False
      ExplicitLeft = 311
    end
    inherited btnProximo: TBitBtn
      Left = 385
      Visible = False
      ExplicitLeft = 385
    end
    inherited btnUltimo: TBitBtn
      Left = 459
      Visible = False
      ExplicitLeft = 459
    end
    inherited btnLocalizar: TBitBtn
      Left = 533
      Visible = False
      ExplicitLeft = 533
    end
    inherited btnFechar: TBitBtn
      Left = 607
      ExplicitLeft = 607
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 505
    Width = 686
    ExplicitTop = 505
    ExplicitWidth = 686
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 61
    Width = 686
    Height = 156
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 3
      Width = 14
      Height = 13
      Caption = 'ID.'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 339
      Top = 5
      Width = 44
      Height = 13
      Caption = 'Dt. Inicial'
    end
    object Label3: TLabel
      Left = 476
      Top = 5
      Width = 39
      Height = 13
      Caption = 'Dt. Final'
    end
    object Label4: TLabel
      Left = 4
      Top = 45
      Width = 35
      Height = 13
      Caption = 'M'#237'nimo'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 148
      Top = 45
      Width = 22
      Height = 13
      Caption = 'Cota'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 291
      Top = 45
      Width = 28
      Height = 13
      Caption = 'Super'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 609
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Dias '#218'teis'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 59
      Top = 3
      Width = 37
      Height = 13
      Caption = 'Ve'#237'culo'
    end
    object DBEdit1: TDBEdit
      Left = 4
      Top = 19
      Width = 49
      Height = 21
      DataField = 'idmeta'
      DataSource = dsNavegacao
      Enabled = False
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBEdit4: TDBEdit
      Left = 4
      Top = 61
      Width = 134
      Height = 21
      DataField = 'minimo'
      DataSource = dsNavegacao
      TabOrder = 5
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBEdit5: TDBEdit
      Left = 148
      Top = 61
      Width = 134
      Height = 21
      DataField = 'cota'
      DataSource = dsNavegacao
      TabOrder = 6
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBEdit6: TDBEdit
      Left = 291
      Top = 61
      Width = 134
      Height = 21
      DataField = 'super'
      DataSource = dsNavegacao
      TabOrder = 7
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBEdit7: TDBEdit
      Left = 609
      Top = 19
      Width = 75
      Height = 21
      DataField = 'dias_uteis'
      DataSource = dsNavegacao
      TabOrder = 4
      OnEnter = DBEdit7Enter
      OnExit = EditExit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 59
      Top = 19
      Width = 226
      Height = 21
      DropDownCount = 8
      DataField = 'idveiculo'
      DataSource = dsNavegacao
      LookupField = 'idveiculo'
      LookupDisplay = 'codveiculo;placa;funcionario'
      LookupSource = dsVeiculo
      TabOrder = 1
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBDateEdit1: TDBDateEdit
      Left = 339
      Top = 19
      Width = 121
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      DataField = 'data_inicial'
      DataSource = dsNavegacao
      NumGlyphs = 2
      TabOrder = 2
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object DBDateEdit2: TDBDateEdit
      Left = 476
      Top = 19
      Width = 121
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      DataField = 'data_final'
      DataSource = dsNavegacao
      NumGlyphs = 2
      TabOrder = 3
      OnEnter = EditEnter
      OnExit = EditExit
    end
    object Panel2: TPanel
      Left = 0
      Top = 104
      Width = 686
      Height = 52
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 8
      object Label9: TLabel
        Left = 8
        Top = 3
        Width = 33
        Height = 13
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 47
        Top = 7
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label11: TLabel
        Left = 182
        Top = 7
        Width = 37
        Height = 13
        Caption = 'Ve'#237'culo'
      end
      object dtIni: TDateEdit
        Left = 47
        Top = 24
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object btnBuscar: TBitBtn
        Left = 476
        Top = 14
        Width = 75
        Height = 25
        Caption = 'Localizar'
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
        TabOrder = 0
        OnClick = btnBuscarClick
      end
      object rxdbVeiculo: TRxDBLookupCombo
        Left = 182
        Top = 24
        Width = 258
        Height = 21
        DropDownCount = 8
        LookupField = 'idveiculo'
        LookupDisplay = 'placa;funcionario'
        LookupSource = dsVeiculo
        TabOrder = 2
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyDown = rxdbVeiculoKeyDown
      end
    end
    object BitBtn4: TBitBtn
      Left = 285
      Top = 16
      Width = 30
      Height = 25
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
      TabOrder = 9
      OnClick = BitBtn4Click
    end
  end
  object DBGridEh1: TDBGridEh [3]
    Left = 0
    Top = 217
    Width = 686
    Height = 288
    Align = alClient
    DataSource = dsPesMeta
    DynProps = <>
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    TabOrder = 2
    OnEnter = DBGridEh1Enter
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'placa'
        Footers = <>
        Width = 62
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nome'
        Footers = <>
        Width = 187
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'data_inicial'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'data_final'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'minimo'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'cota'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'super'
        Footers = <>
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'dias_uteis'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsCadMeta
  end
  inherited ActionList1: TActionList
    Left = 316
    Top = 380
  end
  inherited dsPesquisa: TDataSource
    Left = 176
    Top = 344
  end
  object dsVeiculo: TDataSource
    DataSet = DM.cdsCadVeiculo
    Left = 320
    Top = 64
  end
  object qrPesMeta: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      'select m.*, v.placa, f.nome from tbmeta m'
      'inner join tbveiculo v on m.idveiculo = v.idveiculo'
      'left join tbfuncionario f on v.idfuncionario = f.idfuncionario'
      'where m.idmeta > 0')
    Params = <>
    Left = 200
    Top = 312
    object qrPesMetaidmeta: TIntegerField
      FieldName = 'idmeta'
      Required = True
    end
    object qrPesMetaidveiculo: TIntegerField
      FieldName = 'idveiculo'
      Required = True
    end
    object qrPesMetadata_inicial: TDateField
      DisplayLabel = 'Dt. Inicial'
      FieldName = 'data_inicial'
      Required = True
    end
    object qrPesMetadata_final: TDateField
      DisplayLabel = 'Dt. Final'
      FieldName = 'data_final'
      Required = True
    end
    object qrPesMetaminimo: TFloatField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'minimo'
      Required = True
      currency = True
    end
    object qrPesMetacota: TFloatField
      DisplayLabel = 'Cota'
      FieldName = 'cota'
      Required = True
      currency = True
    end
    object qrPesMetasuper: TFloatField
      DisplayLabel = 'Super'
      FieldName = 'super'
      Required = True
      currency = True
    end
    object qrPesMetadias_uteis: TSmallintField
      DisplayLabel = 'Dias '#218'teis'
      FieldName = 'dias_uteis'
      Required = True
    end
    object qrPesMetaplaca: TWideStringField
      DisplayLabel = 'Placa'
      FieldName = 'placa'
      Size = 8
    end
    object qrPesMetanome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
  end
  object dsPesMeta: TDataSource
    DataSet = qrPesMeta
    OnDataChange = dsPesMetaDataChange
    Left = 264
    Top = 344
  end
end
