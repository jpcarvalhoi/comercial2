inherited FormListaProducao: TFormListaProducao
  Caption = 'Listar Produ'#231#227'o'
  ClientHeight = 354
  ClientWidth = 1008
  Menu = MainMenu1
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  ExplicitWidth = 1024
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFiltros: TPanel
    Width = 1008
    Height = 108
    ExplicitWidth = 1008
    ExplicitHeight = 108
    object Label6: TLabel
      Left = 736
      Top = 47
      Width = 70
      Height = 13
      Caption = 'Dt. Importa'#231#227'o'
    end
    object BitBtn5: TBitBtn
      Left = 900
      Top = 77
      Width = 99
      Height = 25
      Anchors = [akRight, akBottom]
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
      OnClick = BitBtn5Click
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 6
      Width = 272
      Height = 88
      Caption = 'Data'
      TabOrder = 1
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
      end
    end
    object edCliente: TLabeledEdit
      Left = 459
      Top = 22
      Width = 225
      Height = 21
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Cliente'
      ReadOnly = True
      TabOrder = 2
      OnKeyDown = edClienteKeyDown
    end
    object edVeiculo: TLabeledEdit
      Left = 459
      Top = 65
      Width = 225
      Height = 21
      EditLabel.Width = 162
      EditLabel.Height = 13
      EditLabel.Caption = 'Ve'#237'culo (Digite c'#243'digo do ve'#237'culo)'
      TabOrder = 3
      OnKeyPress = edVeiculoKeyPress
    end
    object BitBtn4: TBitBtn
      Left = 686
      Top = 63
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
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object btnBuscar: TBitBtn
      Left = 686
      Top = 20
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
      TabOrder = 5
      OnClick = btnBuscarClick
    end
    object edtImportacao: TLabeledEdit
      Left = 736
      Top = 20
      Width = 121
      Height = 21
      EditLabel.Width = 70
      EditLabel.Height = 13
      EditLabel.Caption = 'ID. Importa'#231#227'o'
      TabOrder = 6
    end
    object dtImportacao: TDateEdit
      Left = 736
      Top = 64
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
    end
    object gbHora: TGroupBox
      Left = 297
      Top = 27
      Width = 147
      Height = 58
      TabOrder = 8
      object Label9: TLabel
        Left = 10
        Top = 15
        Width = 27
        Height = 13
        Caption = 'In'#237'cio'
      end
      object Label10: TLabel
        Left = 84
        Top = 15
        Width = 16
        Height = 13
        Caption = 'Fim'
      end
      object edHoraIni: TMaskEdit
        Left = 10
        Top = 31
        Width = 56
        Height = 21
        EditMask = '99:99;1;_'
        MaxLength = 5
        TabOrder = 0
        Text = '  :  '
      end
      object edHoraFim: TMaskEdit
        Left = 83
        Top = 31
        Width = 56
        Height = 21
        EditMask = '99:99;1;_'
        MaxLength = 5
        TabOrder = 1
        Text = '  :  '
      end
    end
    object ckHora: TCheckBox
      Left = 300
      Top = 19
      Width = 97
      Height = 17
      Caption = 'Hora da viagem'
      TabOrder = 9
      OnClick = ckHoraClick
    end
  end
  inherited DBGridPesquisa: TDBGrid
    Left = 904
    Top = 67
    Width = 93
    Height = 46
    Align = alCustom
    Visible = False
  end
  inherited pnlPrincipal: TPanel
    Width = 1008
    ExplicitWidth = 1008
    inherited btnPrimeiro: TBitBtn
      Left = 633
      ExplicitLeft = 633
    end
    inherited btnAnterior: TBitBtn
      Left = 707
      ExplicitLeft = 707
    end
    inherited btnProximo: TBitBtn
      Left = 781
      ExplicitLeft = 781
    end
    inherited btnUltimo: TBitBtn
      Left = 855
      ExplicitLeft = 855
    end
    inherited btnNovo: TBitBtn
      Action = actIncluir
    end
    inherited btnExcluir: TBitBtn
      Action = actExcluir
    end
    inherited btnFechar: TBitBtn
      Left = 929
      ExplicitLeft = 929
    end
    object btnImprimir: TBitBtn
      Left = 225
      Top = 3
      Width = 75
      Height = 55
      Caption = 'Imprimir'
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
      TabOrder = 8
      OnClick = btnImprimirClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 335
    Width = 1008
    ExplicitTop = 335
    ExplicitWidth = 1008
  end
  inherited pnSelecionar: TPanel
    Top = 281
    Width = 1008
    Height = 54
    Visible = True
    ExplicitTop = 281
    ExplicitWidth = 1008
    ExplicitHeight = 54
    object Label3: TLabel [0]
      Left = 9
      Top = 5
      Width = 63
      Height = 13
      Caption = 'Peso Liqu'#237'do'
    end
    object Label4: TLabel [1]
      Left = 393
      Top = 5
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object Label5: TLabel [2]
      Left = 522
      Top = 5
      Width = 73
      Height = 13
      Caption = 'Total Agregado'
    end
    object Label7: TLabel [3]
      Left = 136
      Top = 5
      Width = 63
      Height = 13
      Caption = 'Num Viagens'
    end
    object Label8: TLabel [4]
      Left = 263
      Top = 5
      Width = 85
      Height = 13
      Caption = 'M'#233'dia por Viagem'
    end
    inherited BitBtn2: TBitBtn
      Left = 856
      Visible = False
      ExplicitLeft = 856
    end
    inherited BitBtn3: TBitBtn
      Left = 748
      Visible = False
      ExplicitLeft = 748
    end
    object DBEdit1: TDBEdit
      Left = 9
      Top = 20
      Width = 121
      Height = 21
      DataField = 'soma_peso'
      DataSource = dsPesquisa
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 393
      Top = 20
      Width = 121
      Height = 21
      DataField = 'soma_valor_total'
      DataSource = dsPesquisa
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 522
      Top = 20
      Width = 121
      Height = 21
      DataField = 'soma_agregado'
      DataSource = dsPesquisa
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 136
      Top = 20
      Width = 121
      Height = 21
      DataField = 'soma_viagens'
      DataSource = dsPesquisa
      ReadOnly = True
      TabOrder = 5
    end
    object edMedia: TEdit
      Left = 263
      Top = 20
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
  end
  object DBGridEhListProd: TDBGridEh [5]
    Left = 0
    Top = 169
    Width = 1008
    Height = 112
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsPesquisa
    DynProps = <>
    FooterParams.Color = clWindow
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    SortLocal = True
    TabOrder = 5
    OnDblClick = actIncluirExecute
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'idproducao'
        Footers = <>
        Title.TitleButton = True
        Width = 71
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'peso'
        Footer.DisplayFormat = '0.000'
        Footer.FieldName = 'peso'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
        Width = 88
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'valor_tonelada'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'valor_agregado'
        Footers = <>
        Title.TitleButton = True
        Width = 82
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'codveiculo'
        Footers = <>
        Title.TitleButton = True
        Width = 74
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'num_viagens'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'data'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'data_casdastro'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'tara'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'peso_bruto'
        Footer.FieldName = 'tara'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'codveiculo'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'placa'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nome'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'valor_total'
        Footer.DisplayFormat = '#,##0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'idimportacao'
        Footers = <>
        Title.TitleButton = True
        Width = 77
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Tiporeg'
        Footers = <>
        Width = 62
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'dtimportacao'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'hora'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList: TActionList
    Left = 440
    Top = 192
    inherited actIncluir: TAction
      OnExecute = actIncluirExecute
    end
    inherited actExcluir: TAction
      OnExecute = actExcluirExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir (F3)'
      ShortCut = 114
      OnExecute = actImprimirExecute
    end
  end
  inherited qrPesquisa: TZQuery
    SQL.Strings = (
      'select p.*, v.codveiculo, v.placa, c.nome from tbproducao p'
      'inner join tbveiculo v on p.idveiculo = v.idveiculo'
      'inner join tbcliente c on p.idcliente = c.codcliente'
      'where p.idproducao > 0')
  end
  inherited cdsPesquisa: TClientDataSet
    AggregatesActive = True
    AfterRefresh = cdsPesquisaAfterRefresh
    OnCalcFields = cdsPesquisaCalcFields
    Left = 216
    Top = 120
    object cdsPesquisaidproducao: TIntegerField
      DisplayLabel = 'ID. Produ'#231#227'o'
      FieldName = 'idproducao'
      Required = True
    end
    object cdsPesquisaidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object cdsPesquisapeso: TFloatField
      DisplayLabel = 'Peso L'#237'quido (tn)'
      FieldName = 'peso'
    end
    object cdsPesquisavalor_tonelada: TFloatField
      DisplayLabel = 'Valor Tonelada'
      FieldName = 'valor_tonelada'
      currency = True
    end
    object cdsPesquisanum_viagens: TIntegerField
      DisplayLabel = 'N'#186' Viagens'
      FieldName = 'num_viagens'
    end
    object cdsPesquisadata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
    object cdsPesquisaidveiculo: TIntegerField
      FieldName = 'idveiculo'
    end
    object cdsPesquisadata_casdastro: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'data_casdastro'
    end
    object cdsPesquisaidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object cdsPesquisatara: TFloatField
      DisplayLabel = 'Tara'
      FieldName = 'tara'
      Required = True
    end
    object cdsPesquisapeso_bruto: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'peso_bruto'
    end
    object cdsPesquisacodveiculo: TIntegerField
      DisplayLabel = 'C'#243'd. Ve'#237'culo'
      FieldName = 'codveiculo'
      Required = True
    end
    object cdsPesquisaplaca: TWideStringField
      DisplayLabel = 'Placa '
      FieldName = 'placa'
      Size = 8
    end
    object cdsPesquisanome: TWideStringField
      DisplayLabel = 'Cliente / Mina'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object cdsPesquisavalor_total: TCurrencyField
      DisplayLabel = 'Valor Total'
      FieldKind = fkInternalCalc
      FieldName = 'valor_total'
    end
    object cdsPesquisavalor_agregado: TFloatField
      DisplayLabel = 'Valor Agregado'
      FieldName = 'valor_agregado'
      currency = True
    end
    object cdsPesquisatipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cdsPesquisaidimportacao: TIntegerField
      DisplayLabel = 'ID. Importa'#231#227'o'
      FieldName = 'idimportacao'
    end
    object cdsPesquisadtimportacao: TDateTimeField
      DisplayLabel = 'Dt. Importa'#231#227'o'
      FieldName = 'dtimportacao'
    end
    object cdsPesquisaTiporeg: TWideStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Tiporeg'
      Size = 10
      Calculated = True
    end
    object cdsPesquisavalortotal_agregado: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'valortotal_agregado'
    end
    object cdsPesquisahora: TTimeField
      FieldName = 'hora'
      DisplayFormat = 'hh:nn'
    end
    object cdsPesquisasoma_valor_total: TAggregateField
      FieldName = 'soma_valor_total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_total)'
    end
    object cdsPesquisasoma_peso: TAggregateField
      FieldName = 'soma_peso'
      Active = True
      DisplayName = ''
      DisplayFormat = '#0.000'
      Expression = 'sum(peso)'
    end
    object cdsPesquisasoma_agregado: TAggregateField
      FieldName = 'soma_agregado'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valortotal_agregado)'
    end
    object cdsPesquisasoma_viagens: TAggregateField
      FieldName = 'soma_viagens'
      Active = True
      DisplayName = ''
      Expression = 'sum(num_viagens)'
    end
  end
  inherited dsPesquisa: TDataSource
    OnDataChange = dsPesquisaDataChange
    Left = 352
    Top = 200
  end
  object ppdbprod: TppDBPipeline
    DataSource = dsPesquisa
    OpenDataSource = False
    UserName = 'dbprod'
    Left = 800
    Top = 104
    object ppdbprodppField1: TppField
      FieldAlias = 'idproducao'
      FieldName = 'idproducao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField2: TppField
      FieldAlias = 'idcliente'
      FieldName = 'idcliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField3: TppField
      FieldAlias = 'peso'
      FieldName = 'peso'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField4: TppField
      FieldAlias = 'valor_tonelada'
      FieldName = 'valor_tonelada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField5: TppField
      FieldAlias = 'num_viagens'
      FieldName = 'num_viagens'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField6: TppField
      FieldAlias = 'data'
      FieldName = 'data'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField7: TppField
      FieldAlias = 'idveiculo'
      FieldName = 'idveiculo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField8: TppField
      FieldAlias = 'data_casdastro'
      FieldName = 'data_casdastro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField9: TppField
      FieldAlias = 'idusuario'
      FieldName = 'idusuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField10: TppField
      FieldAlias = 'tara'
      FieldName = 'tara'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField11: TppField
      FieldAlias = 'peso_bruto'
      FieldName = 'peso_bruto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField12: TppField
      FieldAlias = 'codveiculo'
      FieldName = 'codveiculo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField13: TppField
      FieldAlias = 'placa'
      FieldName = 'placa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField14: TppField
      FieldAlias = 'nome'
      FieldName = 'nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField15: TppField
      FieldAlias = 'valor_total'
      FieldName = 'valor_total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField16: TppField
      FieldAlias = 'valor_agregado'
      FieldName = 'valor_agregado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField17: TppField
      FieldAlias = 'tipo'
      FieldName = 'tipo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField18: TppField
      FieldAlias = 'idimportacao'
      FieldName = 'idimportacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField19: TppField
      FieldAlias = 'dtimportacao'
      FieldName = 'dtimportacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField20: TppField
      FieldAlias = 'Tiporeg'
      FieldName = 'Tiporeg'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppdbprodppField21: TppField
      FieldAlias = 'valortotal_agregado'
      FieldName = 'valortotal_agregado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 840
    Top = 128
    Version = '15.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbprod'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 75936
        mmTop = 1058
        mmWidth = 45254
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 181864
        mmTop = 1058
        mmWidth = 13928
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 181272
        mmTop = 4763
        mmWidth = 14520
        BandType = 0
        LayerName = Foreground
      end
      object pplbDesc: TppLabel
        UserName = 'lbDesc'
        AutoSize = False
        Caption = 'lbDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 79904
        mmTop = 6350
        mmWidth = 37571
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'data'
        DataPipeline = ppdbprod
        DisplayFormat = 'dd/mm/yyyy'
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
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'peso'
        DataPipeline = ppdbprod
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3260
        mmLeft = 20373
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTextValor: TppDBText
        UserName = 'DBTextValor'
        DataField = 'valor_tonelada'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 65352
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTextvTotal: TppDBText
        UserName = 'DBTextvTotal'
        DataField = 'valor_total'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 85461
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'nome'
        DataPipeline = ppdbprod
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 108215
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'num_viagens'
        DataPipeline = ppdbprod
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3175
        mmLeft = 43392
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label302'
        OnGetText = getRodapeText
        Caption = 'Label302'
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
        LayerName = Foreground
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 2117
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'peso'
        DataPipeline = ppdbprod
        DisplayFormat = '#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3260
        mmLeft = 21960
        mmTop = 2117
        mmWidth = 16383
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'valor_total'
        DataPipeline = ppdbprod
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbprod'
        mmHeight = 3260
        mmLeft = 82418
        mmTop = 2117
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'codveiculo'
      DataPipeline = ppdbprod
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbprod'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15790320
          ParentWidth = True
          mmHeight = 4763
          mmLeft = 0
          mmTop = 794
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 6879
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Peso L'#237'quido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 19844
          mmTop = 6879
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pplbValor: TppLabel
          UserName = 'lbValor'
          Caption = 'V. Tonelada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 66146
          mmTop = 6879
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'V. Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 89165
          mmTop = 6879
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Cliente/Mina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 108215
          mmTop = 6879
          mmWidth = 27781
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'C'#243'd. Ve'#237'culo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 1323
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'codveiculo'
          DataPipeline = ppdbprod
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbprod'
          mmHeight = 3175
          mmLeft = 21696
          mmTop = 1323
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Placa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 61648
          mmTop = 1323
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'placa'
          DataPipeline = ppdbprod
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbprod'
          mmHeight = 3175
          mmLeft = 71967
          mmTop = 1323
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'N'#186' Viagens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 44514
          mmTop = 6879
          mmWidth = 14690
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Sub. Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 2910
          mmTop = 1852
          mmWidth = 13504
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalcPeso: TppDBCalc
          UserName = 'DBCalcPeso'
          DataField = 'peso'
          DataPipeline = ppdbprod
          DisplayFormat = '#0.000'
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
          mmLeft = 20373
          mmTop = 1852
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalcV: TppDBCalc
          UserName = 'DBCalcV'
          AutoSize = True
          DataField = 'valor_total'
          DataPipeline = ppdbprod
          DisplayFormat = '#,##0.00'
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
          mmLeft = 82419
          mmTop = 1852
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 1588
          mmTop = 529
          mmWidth = 141288
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalcViagens: TppDBCalc
          UserName = 'DBCalcViagens'
          AutoSize = True
          DataField = 'num_viagens'
          DataPipeline = ppdbprod
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
          mmLeft = 38440
          mmTop = 1852
          mmWidth = 27093
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          UserName = 'Label101'
          Caption = 'M'#233'dia (tn):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 108215
          mmTop = 1852
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object pplbMedia: TppLabel
          UserName = 'Label12'
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 124619
          mmTop = 1852
          mmWidth = 5556
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object MainMenu1: TMainMenu
    Left = 824
    Top = 80
    object Registros1: TMenuItem
      Caption = 'Registros'
      object ExcluirImportao1: TMenuItem
        Caption = 'Excluir Importa'#231#227'o'
        OnClick = ExcluirImportao1Click
      end
    end
  end
end
