inherited FormSelProducao: TFormSelProducao
  Caption = 'Selecionar Produ'#231#227'o'
  ClientHeight = 351
  ClientWidth = 1023
  Menu = MainMenu1
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  ExplicitWidth = 1039
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFiltros: TPanel
    Top = 62
    Width = 1023
    Height = 100
    TabOrder = 1
    ExplicitTop = 62
    ExplicitWidth = 1023
    ExplicitHeight = 100
    object GroupBox1: TGroupBox
      Left = 9
      Top = 6
      Width = 272
      Height = 88
      Caption = 'Data'
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 17
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label2: TLabel
        Left = 140
        Top = 18
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object dtIni: TDateEdit
        Left = 9
        Top = 33
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object dtFim: TDateEdit
        Left = 140
        Top = 33
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object ckData: TCheckBox
        Left = 9
        Top = 68
        Width = 121
        Height = 17
        Caption = 'N'#227'o filtrar por data'
        TabOrder = 2
        OnClick = ckDataClick
      end
    end
    object btnBuscar: TBitBtn
      Left = 516
      Top = 20
      Width = 30
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
      Visible = False
      OnClick = btnBuscarClick
    end
    object edCliente: TLabeledEdit
      Left = 289
      Top = 22
      Width = 225
      Height = 21
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Cliente'
      TabOrder = 2
      Visible = False
    end
    object edVeiculo: TLabeledEdit
      Left = 289
      Top = 65
      Width = 225
      Height = 21
      EditLabel.Width = 162
      EditLabel.Height = 13
      EditLabel.Caption = 'Ve'#237'culo (Digite c'#243'digo do ve'#237'culo)'
      TabOrder = 4
      OnKeyPress = edVeiculoKeyPress
    end
    object BitBtn4: TBitBtn
      Left = 516
      Top = 63
      Width = 30
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
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 915
      Top = 69
      Width = 99
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Localizar'
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
      TabOrder = 5
      OnClick = BitBtn5Click
    end
  end
  inherited DBGridPesquisa: TDBGrid
    Left = 584
    Top = 81
    Width = 177
    Height = 34
    Align = alNone
    TabOrder = 2
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'idproducao'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'peso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_tonelada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_viagens'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'placa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funcionario'
        Width = 159
        Visible = True
      end>
  end
  inherited pnlPrincipal: TPanel
    Width = 1023
    Height = 62
    TabOrder = 0
    ExplicitWidth = 1023
    ExplicitHeight = 62
    inherited btnPrimeiro: TBitBtn
      Left = 648
      Top = 4
      TabOrder = 4
      ExplicitLeft = 648
      ExplicitTop = 4
    end
    inherited btnAnterior: TBitBtn
      Left = 722
      Top = 4
      TabOrder = 5
      ExplicitLeft = 722
      ExplicitTop = 4
    end
    inherited btnProximo: TBitBtn
      Left = 796
      Top = 4
      TabOrder = 6
      ExplicitLeft = 796
      ExplicitTop = 4
    end
    inherited btnUltimo: TBitBtn
      Left = 870
      Top = 4
      TabOrder = 7
      ExplicitLeft = 870
      ExplicitTop = 4
    end
    inherited btnNovo: TBitBtn
      Top = 4
      TabOrder = 1
      OnClick = btnNovoClick
      ExplicitTop = 4
    end
    inherited btnExcluir: TBitBtn
      Left = 306
      TabOrder = 0
      Visible = False
      ExplicitLeft = 306
    end
    inherited btnFechar: TBitBtn
      Left = 944
      Top = 4
      TabOrder = 8
      ExplicitLeft = 944
      ExplicitTop = 4
    end
    inherited BitBtn1: TBitBtn
      Top = 4
      Caption = 'Detalhar (F2)'
      TabOrder = 2
      ExplicitTop = 4
    end
    object btnImprimir: TBitBtn
      Left = 151
      Top = 4
      Width = 75
      Height = 55
      Caption = 'Imprimir (F3)'
      DoubleBuffered = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7F7F7D7D7D7D1D1D1D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2
        D2D2D0D0D0DADADAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC8C8C8A8A8A8A7A7A7A8A8A8A8A8A8A8A8A8A7A7A7A5A5
        A5A3A3A3A2A2A2A0A0A09E9E9E9D9D9D9B9B9B99999997979795959595959593
        93939797978E8E8EFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF1F1F1D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFCFCFCF7F7F7F2F2F2EEEEEEEAEAEAE5E5E5E0E0E0DCDCDCDA
        DADAD1D1D1AEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFAFAFAD9D9D9B7B7B7959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDFDFDF9F9F9F5F5F5F0F0F0EBEBEBE7E7E7E3E3E3E0E0E0DBDBDBD6D6D6D9
        D9D9A9A9A98A8A8AC1C1C1E4E4E4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5
        AAAAAA8484848E8E8EA8A8A8A7A7A7E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFAFAFAF6F6F6F2F2F2EDEDEDE8E8E8E5E5E5E1E1E1DCDCDCD7
        D7D7ABABABAAAAAA9292927B7B7B878787C3C3C3FCFCFCFFFFFFFFFFFF9B9B9B
        A9A9A9BCBCBCB3B3B3A1A1A1959595ABABABFDFDFDFAFAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAFAFAF7F7F7F3F3F3EFEFEFEBEBEBE6E6E6E2E2E2DEDEDEDEDEDEC4
        C4C48B8B8BA3A3A3A1A1A1B8B8B8B1B1B17C7C7CCECECEFFFFFFE5E5E5A1A1A1
        BEBEBEBFBFBF7979790000000000002D2D2DD0D0D0D6D6D6D3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D1D1D1CECECECBCBCBC8C8C8C4C4C4C0C0C0C6C6C683
        8383000000000000404040BBBBBBBBBBBBB2B2B2919191FFFFFFB2B2B2BBBBBB
        BEBEBEC6C6C67D7D7D0000000000000000001D1D1D2121212020202020202020
        202020202020202020202020201F1F1F1F1F1F1F1F1F1F1F1F1E1E1E2020200D
        0D0D000000000000454545C6C6C6BCBCBCC3C3C3808080F3F3F39B9B9BCACACA
        C3C3C3CACACA9595953333333333333232322C2C2C2B2B2B2C2C2C2C2C2C2C2C
        2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2E
        2E2E333333333333707070CBCBCBC2C2C2CBCBCB909090D5D5D5A0A0A0D1D1D1
        C9C9C9C9C9C9CBCBCBD0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
        D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
        D0D0D0D0D0D0D0D0CDCDCDC9C9C9C9C9C9D0D0D0A6A6A6BBBBBBAEAEAED5D5D5
        D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
        D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
        D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D5D5D5B6B6B6B2B2B2B1B1B1DDDDDD
        D7D7D7D7D7D7D6D6D6D6D6D6D6D6D6D7D7D7D9D9D9DADADADBDBDBDCDCDCDDDD
        DDDDDDDDDEDEDEDEDEDEDEDEDEDEDEDEDDDDDDDDDDDDDCDCDCDBDBDBD9D9D9D8
        D8D8D7D7D7D6D6D6D6D6D6D6D6D6D7D7D7DCDCDCBEBEBEB1B1B1B0B0B0E4E4E4
        DDDDDDDEDEDEE1E1E1E5E5E5E7E7E7E9E9E9EAEAEAEBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAEA
        EAEAE8E8E8E6E6E6E3E3E3E0E0E0DDDDDDE3E3E3BCBCBCB7B7B7A3A3A3EEEEEE
        ECECECF0F0F0F2F2F2F2F2F2F2F2F2F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F2F2F2F2F2F2F1F1F1EEEEEEF1F1F1AFAFAFCECECEA1A1A1F3F3F3
        F9F9F9FFF9FFFFF8FFFAF8FAF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F8F8F8FFFFFF999999EFEFEFBEBEBEE0E0E0
        FEFEFE9DD89D64C964E0EDE0FDFCFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFDFDFDF9F9F98F8F8FFFFFFFF3F3F3B1B0B1
        FFFFFF66C96635C535B6DCB6FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFD2D2D2BBBBBBFFFFFFFFFFFFAAAAAA
        E9E9E9F3F9F3E7F1E7FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA969696FAFAFAFFFFFFFFFFFFFBFBFB
        CACACAB5B3B5D3D1D3F6F5F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFCFCFCFCFCFCFCFCFCFBFBFBFB
        FBFBFBFBFBFBFBFBDBDBDBAEAEAEABABABEBEBEBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE7E7E7B1B1B1DADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFBFBF6F6F6F2F2F2EEEEEEE9E9E9E5E5E5E0E0E0DCDCDCD7D7D7D3D3D3CF
        CFCFC6C6C68A8A8AD1D1D1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFDC6C6C6FFFFFFF8F8F8F4F4F4F5F5F5F5F5F5F5F5
        F5F4F4F4EFEFEFEBEBEBE6E6E6E1E1E1DDDDDDD8D8D8D4D4D4CECECECECECED1
        D1D1BDBDBDB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFB9B9B9B5B5B56A6A6A8787878383838181818080
        807F7F7F7D7D7D7B7B7B7878787676767474747272727070706F6F6F545454B8
        B8B8ADADADEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1CACACABEBEBEFFFFFFF5F5F5F0F0F0ECEC
        ECE8E8E8E4E4E4E0E0E0DCDCDCD8D8D8D4D4D4D0D0D0CCCCCCCDCDCD8C8C8CBC
        BCBCDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1FFFFFFF9F9F9F5F5F5F1F1
        F1EDEDEDE9E9E9E5E5E5E1E1E1DDDDDDD9D9D9D5D5D5D1D1D1D6D6D68E8E8EFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC2C2C2FFFFFFFDFDFDF9F9F9F5F5
        F5F1F1F1EDEDEDE9E9E9E5E5E5E1E1E1DDDDDDD9D9D9D5D5D5DADADA8E8E8EF8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBFBFBFFFFFFFFFFFFFFDFDFDF9F9
        F9F5F5F5F1F1F1EDEDEDE9E9E9E5E5E5E1E1E1DDDDDDD9D9D9DEDEDE8D8D8DF8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBEBEBEFFFFFFFFFFFFFFFFFFFDFD
        FDF9F9F9F5F5F5F1F1F1EDEDEDE9E9E9E5E5E5E1E1E1DDDDDDE2E2E28C8C8CF8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBCBCBCFFFFFFFFFFFFFFFFFFFFFF
        FFFDFDFDF9F9F9F5F5F5F1F1F1EDEDEDE9E9E9E5E5E5E1E1E1E6E6E68B8B8BF8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBABABAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFDFDF9F9F9F5F5F5F1F1F1EDEDEDE9E9E9E5E5E5EAEAEA8A8A8AF8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEB8B8B8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFDFDF9F9F9F5F5F5F1F1F1EDEDEDE9E9E9EEEEEE888888F8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEB8B8B8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF8F8F8F4F4F4F9F9F9878787F8
        F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABABD3D3D3D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1D1CFCFCFCCCCCCC9C9C9C6C6C6CBCBCB969696FE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnImprimirClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 332
    Width = 1023
    ExplicitTop = 332
    ExplicitWidth = 1023
  end
  inherited pnSelecionar: TPanel
    Width = 1023
    Height = 68
    Visible = True
    ExplicitWidth = 1023
    ExplicitHeight = 68
    object Label3: TLabel [0]
      Left = 9
      Top = 5
      Width = 72
      Height = 13
      Caption = 'Total Tonelada'
    end
    object Label4: TLabel [1]
      Left = 151
      Top = 5
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object Label8: TLabel [2]
      Left = 286
      Top = 5
      Width = 100
      Height = 13
      Caption = 'Total Total Agregado'
    end
    inherited BitBtn2: TBitBtn
      Left = 871
      Top = 39
      TabOrder = 4
      Visible = False
      ExplicitLeft = 871
      ExplicitTop = 39
    end
    inherited BitBtn3: TBitBtn
      Left = 912
      Top = 8
      TabOrder = 3
      Visible = False
      ExplicitLeft = 912
      ExplicitTop = 8
    end
    object DBEdit1: TDBEdit
      Left = 151
      Top = 21
      Width = 129
      Height = 21
      DataField = 'TotalGeral'
      DataSource = dsPesquisa
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 9
      Top = 21
      Width = 130
      Height = 21
      DataField = 'TotalTonelada'
      DataSource = dsPesquisa
      ReadOnly = True
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 432
      Top = 4
      Width = 327
      Height = 58
      Caption = 'Produtividade'
      TabOrder = 0
      object Label5: TLabel
        Left = 6
        Top = 17
        Width = 35
        Height = 13
        Caption = 'M'#237'nimo'
      end
      object Label6: TLabel
        Left = 111
        Top = 17
        Width = 22
        Height = 13
        Caption = 'Cota'
      end
      object Label7: TLabel
        Left = 216
        Top = 17
        Width = 28
        Height = 13
        Caption = 'Super'
      end
      object DBEdit3: TDBEdit
        Left = 6
        Top = 33
        Width = 99
        Height = 21
        DataField = 'tminimo'
        DataSource = dsPesquisa
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 111
        Top = 33
        Width = 99
        Height = 21
        DataField = 'tcota'
        DataSource = dsPesquisa
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 216
        Top = 33
        Width = 99
        Height = 21
        DataField = 'tsuper'
        DataSource = dsPesquisa
        ReadOnly = True
        TabOrder = 2
      end
    end
    object DBEdit6: TDBEdit
      Left = 286
      Top = 21
      Width = 129
      Height = 21
      DataField = 'TotalAgregado'
      DataSource = dsPesquisa
      ReadOnly = True
      TabOrder = 5
    end
  end
  object DBGridEhProducao: TDBGridEh [5]
    Left = 0
    Top = 162
    Width = 1023
    Height = 102
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = dsPesquisa
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = actAlterarExecute
    OnGetCellParams = DBGridEhProducaoGetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'peso'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'num_viagens'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'media_viagem'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'valor_total'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'valor_totalagregado'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'data'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'codveiculo'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'placa'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'minimo'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'meta'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'super'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'status'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 208
    inherited actIncluir: TAction
      OnExecute = actIncluirExecute
    end
    inherited actAlterar: TAction
      OnExecute = actAlterarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir (F3)'
      ShortCut = 114
      OnExecute = actImprimirExecute
    end
  end
  inherited qrPesquisa: TZQuery
    SQL.Strings = (
      
        'select sum(p.peso) as peso, sum(p.valor_tonelada * p.peso) as va' +
        'lor_total, sum(num_viagens) as num_viagens, p.data, p.idveiculo,'
      
        'c.nome as cliente, v.placa, v.codveiculo, sum(p.valor_agregado *' +
        ' p.peso) as valor_totalagregado'
      'from tbproducao p'
      'left join tbcliente c on p.idcliente = c.codcliente'
      'left join tbveiculo v on p.idveiculo = v.idveiculo')
    Left = 600
    Top = 176
    object qrPesquisapeso: TFloatField
      FieldName = 'peso'
    end
    object qrPesquisadata: TDateField
      FieldName = 'data'
    end
    object qrPesquisaidveiculo: TIntegerField
      FieldName = 'idveiculo'
    end
    object qrPesquisacliente: TWideStringField
      FieldName = 'cliente'
      Size = 60
    end
    object qrPesquisaplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object qrPesquisacodveiculo: TIntegerField
      FieldName = 'codveiculo'
    end
    object qrPesquisavalor_total: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
    end
    object qrPesquisanum_viagens: TLargeintField
      FieldName = 'num_viagens'
      ReadOnly = True
    end
    object qrPesquisavalor_totalagregado: TFloatField
      FieldName = 'valor_totalagregado'
      ReadOnly = True
    end
  end
  inherited dspPesquisa: TDataSetProvider
    Left = 616
    Top = 200
  end
  inherited cdsPesquisa: TClientDataSet
    AggregatesActive = True
    BeforeRefresh = cdsPesquisaBeforeRefresh
    AfterRefresh = cdsPesquisaAfterRefresh
    OnCalcFields = cdsPesquisaCalcFields
    Left = 640
    Top = 224
    object cdsPesquisapeso: TFloatField
      DisplayLabel = 'Peso (Ton.)'
      FieldName = 'peso'
      DisplayFormat = '#0.000'
    end
    object cdsPesquisadata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
    object cdsPesquisaidveiculo: TIntegerField
      FieldName = 'idveiculo'
    end
    object cdsPesquisaplaca: TWideStringField
      DisplayLabel = 'Placa'
      FieldName = 'placa'
      Size = 8
    end
    object cdsPesquisacliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Size = 60
    end
    object cdsPesquisaminimo: TFloatField
      DisplayLabel = 'M'#237'nimo'
      FieldKind = fkInternalCalc
      FieldName = 'minimo'
      currency = True
    end
    object cdsPesquisameta: TFloatField
      DisplayLabel = 'Meta'
      FieldKind = fkInternalCalc
      FieldName = 'meta'
      currency = True
    end
    object cdsPesquisasuper: TFloatField
      DisplayLabel = 'Super'
      FieldKind = fkInternalCalc
      FieldName = 'super'
      currency = True
    end
    object cdsPesquisastatus: TStringField
      DisplayLabel = 'Status'
      FieldKind = fkInternalCalc
      FieldName = 'status'
      Size = 30
    end
    object cdsPesquisatminimo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'tminimo'
    end
    object cdsPesquisatcota: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'tcota'
    end
    object cdsPesquisatsuper: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'tsuper'
    end
    object cdsPesquisacodveiculo: TIntegerField
      DisplayLabel = 'C'#243'd. Ve'#237'culo'
      FieldName = 'codveiculo'
    end
    object cdsPesquisavalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      ReadOnly = True
      currency = True
    end
    object cdsPesquisanum_viagens: TLargeintField
      DisplayLabel = 'N'#186' Viagens'
      FieldName = 'num_viagens'
      ReadOnly = True
    end
    object cdsPesquisamedia_viagem: TFloatField
      DisplayLabel = 'M'#233'dia Viagem'
      FieldKind = fkCalculated
      FieldName = 'media_viagem'
      DisplayFormat = '#0.000'
      Calculated = True
    end
    object cdsPesquisavalor_totalagregado: TFloatField
      DisplayLabel = 'Total Agregado'
      FieldName = 'valor_totalagregado'
      ReadOnly = True
      currency = True
    end
    object cdsPesquisaTotalGeral: TAggregateField
      FieldName = 'TotalGeral'
      Active = True
      currency = True
      Expression = 'sum(valor_total)'
    end
    object cdsPesquisaTotalTonelada: TAggregateField
      FieldName = 'TotalTonelada'
      Active = True
      Expression = 'sum(peso)'
    end
    object cdsPesquisaTotalAgregado: TAggregateField
      FieldName = 'TotalAgregado'
      Active = True
      currency = True
      Expression = 'sum(valor_totalagregado)'
    end
  end
  inherited dsPesquisa: TDataSource
    OnDataChange = dsPesquisaDataChange
    Left = 376
    Top = 208
  end
  object MainMenu1: TMainMenu
    Left = 576
    Top = 64
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cotas1: TMenuItem
        Caption = 'Cotas'
        OnClick = Cotas1Click
      end
    end
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 120
    object cdsAuxidveiculo: TIntegerField
      FieldName = 'idveiculo'
    end
    object cdsAuxdata: TDateField
      FieldName = 'data'
    end
    object cdsAuxminimo: TCurrencyField
      FieldName = 'minimo'
    end
    object cdsAuxcota: TCurrencyField
      FieldName = 'cota'
    end
    object cdsAuxsuper: TCurrencyField
      FieldName = 'super'
    end
    object cdsAuxplaca: TWideStringField
      DisplayLabel = 'Placa'
      FieldName = 'placa'
      Size = 8
    end
    object cdsAuxcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Size = 60
    end
    object cdsAuxcodveiculo: TIntegerField
      FieldName = 'codveiculo'
    end
  end
  object ppdbprod: TppDBPipeline
    DataSource = dsPesquisa
    OpenDataSource = False
    UserName = 'dbprod'
    Left = 616
    Top = 88
    object ppdbprodppField1: TppField
      FieldAlias = 'peso'
      FieldName = 'peso'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField2: TppField
      FieldAlias = 'data'
      FieldName = 'data'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField3: TppField
      FieldAlias = 'idveiculo'
      FieldName = 'idveiculo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField4: TppField
      FieldAlias = 'placa'
      FieldName = 'placa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField5: TppField
      FieldAlias = 'cliente'
      FieldName = 'cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField6: TppField
      FieldAlias = 'minimo'
      FieldName = 'minimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField7: TppField
      FieldAlias = 'meta'
      FieldName = 'meta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField8: TppField
      FieldAlias = 'super'
      FieldName = 'super'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField9: TppField
      FieldAlias = 'status'
      FieldName = 'status'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField10: TppField
      FieldAlias = 'tminimo'
      FieldName = 'tminimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField11: TppField
      FieldAlias = 'tcota'
      FieldName = 'tcota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField12: TppField
      FieldAlias = 'tsuper'
      FieldName = 'tsuper'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField13: TppField
      FieldAlias = 'codveiculo'
      FieldName = 'codveiculo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField14: TppField
      FieldAlias = 'valor_total'
      FieldName = 'valor_total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField15: TppField
      FieldAlias = 'num_viagens'
      FieldName = 'num_viagens'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField16: TppField
      FieldAlias = 'media_viagem'
      FieldName = 'media_viagem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField17: TppField
      FieldAlias = 'valor_totalagregado'
      FieldName = 'valor_totalagregado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object rpProducao: TppReport
    AutoStop = False
    DataPipeline = ppdbprod
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 648
    Top = 120
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbprod'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Metas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 92604
        mmTop = 794
        mmWidth = 11906
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 180711
        mmTop = 3704
        mmWidth = 14552
        BandType = 0
      end
      object pplbDesc: TppLabel
        UserName = 'lbDesc'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Relat'#243'rio TSJT'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 73554
        mmTop = 5821
        mmWidth = 50006
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Color = 16119287
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'data'
        DataPipeline = ppdbprod
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'peso'
        DataPipeline = ppdbprod
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBTextVTotal: TppDBText
        UserName = 'DBTextVTotal'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'valor_total'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 84667
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'minimo'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 106098
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'meta'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 124619
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'super'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 143934
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'status'
        DataPipeline = ppdbprod
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 0
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'num_viagens'
        DataPipeline = ppdbprod
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 41804
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'media_viagem'
        DataPipeline = ppdbprod
        DisplayFormat = '#0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 61119
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label302'
        HyperlinkColor = clBlue
        OnGetText = getRodapeText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label302'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 2646
        mmWidth = 11642
        BandType = 8
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197300
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Geral:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 2117
        mmWidth = 15610
        BandType = 7
      end
      object ppDBCalcPeso: TppDBCalc
        UserName = 'DBCalcPeso'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'peso'
        DataPipeline = ppdbprod
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3260
        mmLeft = 20182
        mmTop = 1852
        mmWidth = 16383
        BandType = 7
      end
      object ppDBCalcTotal2: TppDBCalc
        UserName = 'DBCalcTotal2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'valor_total'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3260
        mmLeft = 81567
        mmTop = 1852
        mmWidth = 23283
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 7
      end
      object ppDBCalcViagens: TppDBCalc
        UserName = 'DBCalcViagens'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'num_viagens'
        DataPipeline = ppdbprod
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3260
        mmLeft = 36852
        mmTop = 1852
        mmWidth = 27093
        BandType = 7
      end
      object pplbMedia: TppLabel
        UserName = 'lbMedia'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lbMedia'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 64823
        mmTop = 1588
        mmWidth = 9790
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idveiculo'
      DataPipeline = ppdbprod
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbprod'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11377
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15790320
          Gradient.EndColor = clWhite
          Gradient.StartColor = clWhite
          Gradient.Style = gsNone
          ParentWidth = True
          mmHeight = 5292
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ve'#237'culo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 1323
          mmTop = 1058
          mmWidth = 10922
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Placa:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 41540
          mmTop = 1058
          mmWidth = 8382
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Data'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 6350
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Peso'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 24871
          mmTop = 6350
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'V. Total'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 88371
          mmTop = 6350
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'M'#237'nimo'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 109802
          mmTop = 6350
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Meta'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 129911
          mmTop = 6350
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Super'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 148432
          mmTop = 6350
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Status'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 6350
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          ParentWidth = True
          Position = lpBottom
          Weight = 1.000000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 8996
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'N'#186' Viagens'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 42863
          mmTop = 6350
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'M'#233'dia Viagem'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 60061
          mmTop = 6350
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'codveiculo'
          DataPipeline = ppdbprod
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbprod'
          mmHeight = 3175
          mmLeft = 13494
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'placa'
          DataPipeline = ppdbprod
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbprod'
          mmHeight = 3175
          mmLeft = 51065
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBCalcPeso0: TppDBCalc
          UserName = 'DBCalcPeso1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'peso'
          DataPipeline = ppdbprod
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppdbprod'
          mmHeight = 3260
          mmLeft = 20182
          mmTop = 1588
          mmWidth = 16383
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalcViagens0: TppDBCalc
          UserName = 'DBCalcViagens1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'num_viagens'
          DataPipeline = ppdbprod
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppdbprod'
          mmHeight = 3260
          mmLeft = 36852
          mmTop = 1588
          mmWidth = 27093
          BandType = 5
          GroupNo = 0
        end
        object pplbMedia0: TppLabel
          UserName = 'lbMedia1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'lbMedia'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 64823
          mmTop = 1323
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalcTotal1: TppDBCalc
          UserName = 'DBCalcTotal1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'valor_total'
          DataPipeline = ppdbprod
          DisplayFormat = '#,##0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppdbprod'
          mmHeight = 3260
          mmLeft = 81567
          mmTop = 1588
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3704
          mmTop = 529
          mmWidth = 121709
          BandType = 5
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Totais:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 4763
          mmTop = 1588
          mmWidth = 9059
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
