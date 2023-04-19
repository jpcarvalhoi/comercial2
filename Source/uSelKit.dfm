inherited FormSelKit: TFormSelKit
  Caption = 'Localizar kit de produtos'
  ClientHeight = 478
  ClientWidth = 984
  OnClose = FormClose
  ExplicitWidth = 1000
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFiltros: TPanel
    Width = 984
    ExplicitWidth = 984
    object edPesquisa: TLabeledEdit
      Left = 11
      Top = 24
      Width = 377
      Height = 21
      EditLabel.Width = 147
      EditLabel.Height = 13
      EditLabel.Caption = 'Localizar produtos cadastrados'
      TabOrder = 0
      OnChange = edPesquisaChange
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyDown = edPesquisaKeyDown
    end
    object btnBuscar: TBitBtn
      Left = 394
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Buscar'
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
      TabOrder = 1
      OnClick = btnBuscarClick
    end
    object rgbusca: TRadioGroup
      Left = 528
      Top = 6
      Width = 447
      Height = 42
      Anchors = [akTop, akRight]
      Caption = 'Busca por '
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'C'#243'd. ou Desc.'
        'Descri'#231#227'o'
        'C'#243'd. Barras'
        'Inf. Adicionais')
      TabOrder = 2
      OnClick = rgbuscaClick
    end
    object ckEstoque: TCheckBox
      Left = 11
      Top = 47
      Width = 158
      Height = 17
      Caption = 'Exibir estoque atual dos Kits.'
      TabOrder = 3
      OnClick = ckEstoqueClick
    end
  end
  inherited DBGridPesquisa: TDBGrid
    Width = 984
    Height = 289
    OnDblClick = DBGridPesquisaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idkit'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codbarras'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_varejo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_custo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque_atual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'info_adicional'
        Width = 254
        Visible = True
      end>
  end
  inherited pnlPrincipal: TPanel
    Width = 984
    ExplicitWidth = 984
    inherited btnPrimeiro: TBitBtn
      Left = 609
      ExplicitLeft = 609
    end
    inherited btnAnterior: TBitBtn
      Left = 683
      ExplicitLeft = 683
    end
    inherited btnProximo: TBitBtn
      Left = 757
      ExplicitLeft = 757
    end
    inherited btnUltimo: TBitBtn
      Left = 831
      ExplicitLeft = 831
    end
    inherited btnNovo: TBitBtn
      OnClick = actIncluirExecute
    end
    inherited btnExcluir: TBitBtn
      Visible = False
    end
    inherited btnFechar: TBitBtn
      Left = 905
      ExplicitLeft = 905
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 459
    Width = 984
    ExplicitTop = 459
    ExplicitWidth = 984
  end
  inherited pnSelecionar: TPanel
    Top = 418
    Width = 984
    ExplicitTop = 418
    ExplicitWidth = 984
    inherited BitBtn2: TBitBtn
      Left = 832
      ExplicitLeft = 832
    end
    inherited BitBtn3: TBitBtn
      Left = 724
      ExplicitLeft = 724
    end
  end
  inherited ActionList: TActionList
    inherited actIncluir: TAction
      OnExecute = actIncluirExecute
    end
    inherited actAlterar: TAction
      OnExecute = actAlterarExecute
    end
  end
  inherited qrPesquisa: TZQuery
    SQL.Strings = (
      
        'select idkit, codbarras, descricao, valor_varejo, valor_custo, i' +
        'nfo_adicional from tbkit'
      'where idkit > 0')
  end
  inherited cdsPesquisa: TClientDataSet
    OnCalcFields = cdsPesquisaCalcFields
    OnFilterRecord = cdsPesquisaFilterRecord
    object cdsPesquisaidkit: TIntegerField
      DisplayLabel = 'Id.'
      FieldName = 'idkit'
      Required = True
    end
    object cdsPesquisacodbarras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'codbarras'
      Size = 40
    end
    object cdsPesquisadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 40
    end
    object cdsPesquisavalor_varejo: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor_varejo'
      currency = True
    end
    object cdsPesquisavalor_custo: TFloatField
      DisplayLabel = 'Valor Custo'
      FieldName = 'valor_custo'
      currency = True
    end
    object cdsPesquisainfo_adicional: TWideStringField
      DisplayLabel = 'Inf. Adicionais'
      FieldName = 'info_adicional'
      Size = 60
    end
    object cdsPesquisaestoque_atual: TIntegerField
      DisplayLabel = 'Est. Atual'
      FieldKind = fkInternalCalc
      FieldName = 'estoque_atual'
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    UseRegistry = False
    StoredProps.Strings = (
      'ckEstoque.Checked')
    StoredValues = <>
    Left = 432
    Top = 192
  end
end
