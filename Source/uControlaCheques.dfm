inherited FormControlaCheque: TFormControlaCheque
  Caption = 'Manuten'#231#227'o de Cheques'
  ClientHeight = 395
  ClientWidth = 971
  OnClose = FormClose
  OnDestroy = FormDestroy
  ExplicitWidth = 987
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFiltros: TPanel
    Top = 64
    Width = 971
    Height = 108
    ExplicitTop = 64
    ExplicitWidth = 971
    ExplicitHeight = 108
    object Label1: TLabel
      Left = 733
      Top = 9
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object edCliente: TLabeledEdit
      Left = 101
      Top = 24
      Width = 317
      Height = 21
      EditLabel.Width = 157
      EditLabel.Height = 13
      EditLabel.Caption = 'Selecionar Cliente ou Fornecedor'
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = edClienteKeyDown
      OnKeyPress = edClienteKeyPress
    end
    object btnBuscar: TBitBtn
      Left = 419
      Top = 22
      Width = 38
      Height = 25
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
    object RadioGroup1: TRadioGroup
      Left = 11
      Top = 9
      Width = 84
      Height = 59
      Caption = 'Buscar por'
      ItemIndex = 0
      Items.Strings = (
        'Cliente'
        'Fornecedor')
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object edDocumento: TLabeledEdit
      Left = 466
      Top = 24
      Width = 121
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Documento'
      TabOrder = 3
      OnKeyPress = edClienteKeyPress
    end
    object edNumcheque: TLabeledEdit
      Left = 600
      Top = 24
      Width = 121
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' Cheque'
      TabOrder = 4
      OnKeyPress = edClienteKeyPress
    end
    object cbStatus: TComboBox
      Left = 733
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 5
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Compensados'
        'Pendentes'
        'Devolvidos'
        'Repassados')
    end
    object BitBtn4: TBitBtn
      Left = 830
      Top = 77
      Width = 132
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar Cheques'
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
      TabOrder = 6
      OnClick = BitBtn4Click
    end
    object GroupBox1: TGroupBox
      Left = 101
      Top = 51
      Width = 460
      Height = 46
      Caption = 'Datas'
      TabOrder = 7
      object Label2: TLabel
        Left = 154
        Top = 24
        Width = 12
        Height = 13
        Caption = 'de'
      end
      object Label3: TLabel
        Left = 300
        Top = 24
        Width = 15
        Height = 13
        Caption = 'at'#233
      end
      object DateEdit1: TDateEdit
        Left = 170
        Top = 19
        Width = 121
        Height = 21
        Enabled = False
        NumGlyphs = 2
        TabOrder = 0
      end
      object cbData: TComboBox
        Left = 3
        Top = 19
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'N'#227'o filtrar por data'
        OnChange = cbDataChange
        Items.Strings = (
          'N'#227'o filtrar por data'
          'Data de Vencimento'
          'Data de Lan'#231'amento')
      end
      object DateEdit2: TDateEdit
        Left = 326
        Top = 19
        Width = 121
        Height = 21
        Enabled = False
        NumGlyphs = 2
        TabOrder = 2
      end
    end
  end
  inherited DBGridPesquisa: TDBGrid
    Left = 769
    Top = 273
    Width = 193
    Height = 95
    Align = alCustom
    DataSource = nil
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'numcheque'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_lancamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'documento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'razao'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Doc. Terceiro'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_terceiro'
        Width = 200
        Visible = True
      end>
  end
  inherited pnlPrincipal: TPanel
    Width = 971
    Height = 64
    ExplicitWidth = 971
    ExplicitHeight = 64
    inherited btnPrimeiro: TBitBtn
      Left = 596
      Top = 6
      Visible = False
      ExplicitLeft = 596
      ExplicitTop = 6
    end
    inherited btnAnterior: TBitBtn
      Left = 670
      Top = 6
      Visible = False
      ExplicitLeft = 670
      ExplicitTop = 6
    end
    inherited btnProximo: TBitBtn
      Left = 744
      Top = 6
      Visible = False
      ExplicitLeft = 744
      ExplicitTop = 6
    end
    inherited btnUltimo: TBitBtn
      Left = 818
      Top = 6
      Visible = False
      ExplicitLeft = 818
      ExplicitTop = 6
    end
    inherited btnNovo: TBitBtn
      Left = 421
      Visible = False
      ExplicitLeft = 421
    end
    inherited btnExcluir: TBitBtn
      Left = 317
      Top = 4
      Visible = False
      ExplicitLeft = 317
      ExplicitTop = 4
    end
    inherited btnFechar: TBitBtn
      Left = 892
      Top = 6
      ExplicitLeft = 892
      ExplicitTop = 6
    end
    inherited BitBtn1: TBitBtn
      Left = 11
      Top = 4
      ExplicitLeft = 11
      ExplicitTop = 4
    end
    object BitBtn5: TBitBtn
      Left = 85
      Top = 4
      Width = 75
      Height = 55
      Caption = 'Repassar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtn5Click
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 376
    Width = 971
    ExplicitTop = 376
    ExplicitWidth = 971
  end
  inherited pnSelecionar: TPanel
    Top = 320
    Width = 971
    Height = 56
    ExplicitTop = 320
    ExplicitWidth = 971
    ExplicitHeight = 56
    inherited BitBtn2: TBitBtn
      Left = 819
      Visible = False
      ExplicitLeft = 819
    end
    inherited BitBtn3: TBitBtn
      Left = 711
      Visible = False
      ExplicitLeft = 711
    end
    object LabeledEditTotal: TLabeledEdit
      Left = 12
      Top = 26
      Width = 121
      Height = 21
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Total Selecionado'
      TabOrder = 2
      Visible = False
    end
    object BitBtn6: TBitBtn
      Left = 142
      Top = 16
      Width = 137
      Height = 25
      Caption = 'Repassar selecionados'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn6Click
    end
  end
  object DBGridEhControleCheque: TDBGridEh [5]
    Left = 0
    Top = 172
    Width = 971
    Height = 148
    Align = alClient
    BorderStyle = bsNone
    DataGrouping.GroupLevels = <>
    DataSource = dsPesquisa
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ImeMode = imDisable
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGridEhControleChequeCellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MarcadoCalc'
        Footers = <>
        Title.Caption = 'Marcar'
        Visible = False
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'idtbcheque'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'StatusCalc'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'numcheque'
        Footers = <>
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'banco'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'agencia'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'conta'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Valor'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'data_vencimento'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'data_lancamento'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'nome'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'documento'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'telefone'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'celular'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'razao'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'cnpj'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'tel'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'tel2'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'documento_terceiro'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'nome_terceiro'
        Footers = <>
        Width = 250
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited qrPesquisa: TZQuery
    SQL.Strings = (
      'select distinct c.*, '
      'cl.nome, cl.documento, cl.telefone, cl.celular ,'
      'f.razao, f.cnpj, f.tel, f.tel2'
      'from tbcheque c'
      'left join tbcliente cl on c.idcliente = cl.codcliente'
      'left join tbfornecedor f on c.idfornecedor = f.idfornecedor'
      'left join tbconta_cheque cc on c.idtbcheque = cc.idcheque'
      'where c.idtbcheque > 0')
    Left = 672
    Top = 112
  end
  inherited dspPesquisa: TDataSetProvider
    Left = 688
    Top = 136
  end
  inherited cdsPesquisa: TClientDataSet
    OnCalcFields = cdsPesquisaCalcFields
    Left = 712
    Top = 160
    object cdsPesquisaMarcado: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Marcado'
    end
    object cdsPesquisaidtbcheque: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'idtbcheque'
      Required = True
    end
    object cdsPesquisanumcheque: TWideStringField
      DisplayLabel = 'N'#186' Cheque'
      FieldName = 'numcheque'
      Size = 30
    end
    object cdsPesquisabanco: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
    end
    object cdsPesquisaagencia: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'agencia'
      Size = 15
    end
    object cdsPesquisaconta: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta'
      Size = 15
    end
    object cdsPesquisadocumento_terceiro: TWideStringField
      DisplayLabel = 'Doc. Terceiro'
      FieldName = 'documento_terceiro'
      Size = 14
    end
    object cdsPesquisavalor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object cdsPesquisadata_vencimento: TDateField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'data_vencimento'
    end
    object cdsPesquisadata_lancamento: TDateField
      DisplayLabel = 'Dt. Lan'#231'amento'
      FieldName = 'data_lancamento'
    end
    object cdsPesquisaidcliente: TIntegerField
      FieldName = 'idcliente'
      Visible = False
    end
    object cdsPesquisanome_terceiro: TWideStringField
      DisplayLabel = 'Nome Terceiro'
      FieldName = 'nome_terceiro'
      Size = 60
    end
    object cdsPesquisaidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Visible = False
    end
    object cdsPesquisatipo_chque: TWideStringField
      FieldName = 'tipo_chque'
      Visible = False
      Size = 1
    end
    object cdsPesquisastatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Size = 1
    end
    object cdsPesquisanome: TWideStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object cdsPesquisadocumento: TWideStringField
      DisplayLabel = 'Doc. Cliente'
      FieldName = 'documento'
      Size = 14
    end
    object cdsPesquisatelefone: TWideStringField
      DisplayLabel = 'Tel Cliente'
      FieldName = 'telefone'
      Size = 15
    end
    object cdsPesquisacelular: TWideStringField
      DisplayLabel = 'Cel Cliente'
      FieldName = 'celular'
      Size = 15
    end
    object cdsPesquisarazao: TWideStringField
      DisplayLabel = 'Raz'#227'o Fornecedor'
      FieldName = 'razao'
      Size = 60
    end
    object cdsPesquisacnpj: TWideStringField
      DisplayLabel = 'CNPJ Fornecedor'
      FieldName = 'cnpj'
      Size = 14
    end
    object cdsPesquisatel: TWideStringField
      DisplayLabel = 'Tel Fornecedor'
      FieldName = 'tel'
      Size = 15
    end
    object cdsPesquisatel2: TWideStringField
      DisplayLabel = 'Tel 2 Fornecedor'
      FieldName = 'tel2'
      Size = 15
    end
    object cdsPesquisaStatusCalc: TStringField
      DisplayLabel = 'Status'
      FieldKind = fkCalculated
      FieldName = 'StatusCalc'
      Size = 30
      Calculated = True
    end
    object cdsPesquisaMarcadoCalc: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'MarcadoCalc'
      Calculated = True
    end
  end
  inherited dsPesquisa: TDataSource
    OnDataChange = dsPesquisaDataChange
    Left = 616
    Top = 112
  end
end
