inherited FormSelFornecedor: TFormSelFornecedor
  Caption = 'Localizar Fornecedores'
  ClientHeight = 448
  ClientWidth = 925
  OnClose = FormClose
  ExplicitWidth = 941
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFiltros: TPanel
    Width = 925
    ExplicitWidth = 925
    object edPesquisa: TLabeledEdit
      Left = 11
      Top = 24
      Width = 377
      Height = 21
      EditLabel.Width = 142
      EditLabel.Height = 13
      EditLabel.Caption = 'Localizar clientes cadastrados'
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditExit
      OnKeyDown = edPesquisaKeyDown
    end
    object btnBuscar: TBitBtn
      Left = 389
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
      Left = 481
      Top = 13
      Width = 291
      Height = 38
      Caption = 'Busca por '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Nome/Raz'#227'o'
        'CPF/CNPJ'
        'Tel./Cel.')
      TabOrder = 2
      OnClick = rgbuscaClick
    end
  end
  inherited DBGridPesquisa: TDBGrid
    Width = 925
    Height = 259
    OnDblClick = DBGridPesquisaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idfornecedor'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'razao'
        Width = 338
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
        FieldName = 'email'
        Width = 213
        Visible = True
      end>
  end
  inherited pnlPrincipal: TPanel
    Width = 925
    ExplicitWidth = 925
    inherited btnPrimeiro: TBitBtn
      Left = 550
      ExplicitLeft = 550
    end
    inherited btnAnterior: TBitBtn
      Left = 624
      ExplicitLeft = 624
    end
    inherited btnProximo: TBitBtn
      Left = 698
      ExplicitLeft = 698
    end
    inherited btnUltimo: TBitBtn
      Left = 772
      ExplicitLeft = 772
    end
    inherited btnNovo: TBitBtn
      Action = actIncluir
    end
    inherited btnExcluir: TBitBtn
      Visible = False
    end
    inherited btnFechar: TBitBtn
      Left = 846
      ExplicitLeft = 846
    end
    object BitBtn4: TBitBtn
      Left = 402
      Top = 3
      Width = 75
      Height = 55
      Caption = 'Imprimir Ficha'
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
      TabOrder = 8
      OnClick = BitBtn4Click
    end
    object btnImprimir: TBitBtn
      Left = 476
      Top = 3
      Width = 75
      Height = 55
      Caption = 'Imprimir Lista'
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
      TabOrder = 9
      OnClick = btnImprimirClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 429
    Width = 925
    ExplicitTop = 429
    ExplicitWidth = 925
  end
  inherited pnSelecionar: TPanel
    Top = 388
    Width = 925
    ExplicitTop = 388
    ExplicitWidth = 925
    DesignSize = (
      925
      41)
    inherited BitBtn2: TBitBtn
      Left = 773
      ExplicitLeft = 773
    end
    inherited BitBtn3: TBitBtn
      Left = 660
      ExplicitLeft = 660
    end
  end
  inherited ActionList: TActionList
    inherited actIncluir: TAction
      OnExecute = actIncluirExecute
    end
  end
  inherited qrPesquisa: TZQuery
    SQL.Strings = (
      
        'select idfornecedor, razao, tel, tel2, email, cnpj from tbfornec' +
        'edor')
  end
  inherited cdsPesquisa: TClientDataSet
    object cdsPesquisaidfornecedor: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idfornecedor'
      Required = True
    end
    object cdsPesquisarazao: TWideStringField
      DisplayLabel = 'Nome/Raz'#227'o'
      FieldName = 'razao'
      Size = 60
    end
    object cdsPesquisatel: TWideStringField
      DisplayLabel = 'Tel. 1'
      FieldName = 'tel'
      OnGetText = cdsPesquisatelGetText
      OnSetText = cdsPesquisatelSetText
      Size = 15
    end
    object cdsPesquisatel2: TWideStringField
      DisplayLabel = 'Tel. 2'
      FieldName = 'tel2'
      OnGetText = cdsPesquisatelGetText
      OnSetText = cdsPesquisatelSetText
      Size = 15
    end
    object cdsPesquisaemail: TWideStringField
      DisplayLabel = 'e-mail'
      FieldName = 'email'
      Size = 100
    end
    object cdsPesquisacnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 14
    end
  end
  object rpFicha: TppReport
    AutoStop = False
    DataPipeline = ppDBFicha
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 512
    Top = 312
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFicha'
    object ppTitleBand2: TppTitleBand
      BeforePrint = ppTitleBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avTop
        MaintainAspectRatio = True
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 22490
        mmLeft = 1058
        mmTop = 0
        mmWidth = 39688
        BandType = 1
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'razaosocial'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 1323
        mmWidth = 139171
        BandType = 1
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        OnGetText = ppDBText89GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'endereco'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 5556
        mmWidth = 139171
        BandType = 1
      end
      object ppDBText37: TppDBText
        UserName = 'DBText901'
        HyperlinkColor = clBlue
        OnGetText = ppDBText90GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bairro'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 9790
        mmWidth = 139171
        BandType = 1
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        OnGetText = ppDBText91GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'telefone'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 13758
        mmWidth = 139171
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
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
        mmLeft = 183621
        mmTop = 1058
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
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
        mmLeft = 183092
        mmTop = 5027
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ficha Cadastral do Fornecedor'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 67469
        mmTop = 1852
        mmWidth = 62484
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 110861
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
        mmTop = 2910
        mmWidth = 197300
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'd.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 9525
        mmWidth = 6308
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'idfornecedor'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 10319
        mmTop = 9525
        mmWidth = 15706
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 30163
        mmTop = 9525
        mmWidth = 8848
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'razao'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 40481
        mmTop = 9525
        mmWidth = 7027
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Documento:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 120915
        mmTop = 9525
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        OnGetText = ppDBText10GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cnpj'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 138907
        mmTop = 9525
        mmWidth = 5207
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fantasia:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 15081
        mmWidth = 12446
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'fantasia'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 16404
        mmTop = 15081
        mmWidth = 9948
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IE:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 79904
        mmTop = 15081
        mmWidth = 3683
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'inscricao_estadual'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 84931
        mmTop = 15081
        mmWidth = 23495
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IM:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 121444
        mmTop = 15081
        mmWidth = 4191
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'inscricao_municipal'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 127000
        mmTop = 15081
        mmWidth = 24807
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endere'#231'o:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 28046
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'endereco'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 17992
        mmTop = 28046
        mmWidth = 11769
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 131498
        mmTop = 28046
        mmWidth = 9313
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bairro'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 141817
        mmTop = 28046
        mmWidth = 7197
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 32808
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cidade'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 14023
        mmTop = 32808
        mmWidth = 8340
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cep:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 107156
        mmTop = 28046
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cep'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 114565
        mmTop = 28046
        mmWidth = 4572
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'referencia'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 89694
        mmTop = 32808
        mmWidth = 12573
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Refer'#234'ncia:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 72761
        mmTop = 32808
        mmWidth = 15346
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Informa'#231#245'es gerais'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 3969
        mmWidth = 25993
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 15790320
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentWidth = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 21167
        mmWidth = 197300
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endere'#231'o:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 22225
        mmWidth = 13885
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endere'#231'o:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 47361
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'endereco_fat'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 18521
        mmTop = 47361
        mmWidth = 16510
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 133615
        mmTop = 47361
        mmWidth = 9313
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bairro_fat'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 143934
        mmTop = 47361
        mmWidth = 11938
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 52123
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cidade_fat'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 14288
        mmTop = 52123
        mmWidth = 13081
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cep:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 109273
        mmTop = 47361
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cep_fat'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 116681
        mmTop = 47361
        mmWidth = 9313
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'referencia_fat'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 91811
        mmTop = 52123
        mmWidth = 17314
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Refer'#234'ncia:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 74877
        mmTop = 52123
        mmWidth = 15346
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 15790320
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentWidth = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 40481
        mmWidth = 197300
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endere'#231'o de Faturamento:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 41540
        mmWidth = 35941
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 15790320
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentWidth = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 59267
        mmWidth = 197300
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contato:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4233
        mmTop = 60325
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telefone:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 67204
        mmWidth = 12361
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        OnGetText = ppDBText27GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 16669
        mmTop = 67204
        mmWidth = 3006
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telefone 2:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 41275
        mmTop = 67204
        mmWidth = 14732
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        OnGetText = ppDBText27GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel2'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 57679
        mmTop = 67204
        mmWidth = 4572
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'E-mail:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 86519
        mmTop = 67204
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'email'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 96573
        mmTop = 67204
        mmWidth = 6816
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telefone:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 78846
        mmTop = 72761
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        OnGetText = ppDBText27GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel1_contato'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 93663
        mmTop = 72761
        mmWidth = 15452
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Celular:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 118004
        mmTop = 72761
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        OnGetText = ppDBText27GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel2_contato'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 130704
        mmTop = 72761
        mmWidth = 15452
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'E-mail:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 154782
        mmTop = 72761
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'email_contato'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 165365
        mmTop = 72761
        mmWidth = 17695
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'nome_contato'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 28575
        mmTop = 72761
        mmWidth = 17992
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Conato Compras:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 72761
        mmWidth = 23791
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Conato Financeiro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 78052
        mmWidth = 25866
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'nome_contato2'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 78052
        mmWidth = 19558
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telefone:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 78846
        mmTop = 78052
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        OnGetText = ppDBText27GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel1_contato2'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 93663
        mmTop = 78052
        mmWidth = 17018
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Celular:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 118004
        mmTop = 78052
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        OnGetText = ppDBText27GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel2_contato2'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 130704
        mmTop = 78052
        mmWidth = 17018
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'E-mail:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 154782
        mmTop = 78052
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'email_contato2'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 165365
        mmTop = 78052
        mmWidth = 19262
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dt. Cadastro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 157163
        mmTop = 15081
        mmWidth = 17780
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'dtcadastro'
        DataPipeline = ppDBFicha
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3260
        mmLeft = 176742
        mmTop = 15081
        mmWidth = 13250
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'obs'
        DataPipeline = ppDBFicha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 15875
        mmLeft = 4233
        mmTop = 92604
        mmWidth = 186267
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Obs:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 85990
        mmWidth = 6477
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line101'
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
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        OnGetText = ppLabel9GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label9'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3704
        mmTop = 2381
        mmWidth = 8467
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idfornecedor'
      DataPipeline = ppDBFicha
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBFicha'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object rpFornecedor: TppReport
    AutoStop = False
    DataPipeline = ppDBFornecedor
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 5000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 5000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 464
    Top = 248
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFornecedor'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppImage2: TppImage
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avTop
        MaintainAspectRatio = True
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 22490
        mmLeft = 1058
        mmTop = 0
        mmWidth = 39688
        BandType = 1
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'razaosocial'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 1323
        mmWidth = 139171
        BandType = 1
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        HyperlinkColor = clBlue
        OnGetText = ppDBText89GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'endereco'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 5556
        mmWidth = 139171
        BandType = 1
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        HyperlinkColor = clBlue
        OnGetText = ppDBText90GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bairro'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 9790
        mmWidth = 139171
        BandType = 1
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        HyperlinkColor = clBlue
        OnGetText = ppDBText91GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'telefone'
        DataPipeline = ppDBConfigs
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConfigs'
        mmHeight = 3704
        mmLeft = 41010
        mmTop = 13758
        mmWidth = 139171
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'd.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3302
        mmLeft = 1323
        mmTop = 11642
        mmWidth = 6308
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3302
        mmLeft = 15081
        mmTop = 11642
        mmWidth = 7874
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Documento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3302
        mmLeft = 78581
        mmTop = 11642
        mmWidth = 15579
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telefone'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3302
        mmLeft = 155046
        mmTop = 11642
        mmWidth = 11515
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Celular'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3302
        mmLeft = 179652
        mmTop = 11642
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'E-mail'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3302
        mmLeft = 109538
        mmTop = 11642
        mmWidth = 8509
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15875
        mmWidth = 200000
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fornecedores'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 85990
        mmTop = 1852
        mmWidth = 28067
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
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
        mmLeft = 184150
        mmTop = 1058
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
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
        mmLeft = 183621
        mmTop = 5027
        mmWidth = 14552
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 10319
        mmWidth = 200000
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'idfornecedor'
        DataPipeline = ppDBFornecedor
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 0
        mmWidth = 15706
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'razao'
        DataPipeline = ppDBFornecedor
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 3260
        mmLeft = 15081
        mmTop = 0
        mmWidth = 7027
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        OnGetText = ppDBText3GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cnpj'
        DataPipeline = ppDBFornecedor
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 3260
        mmLeft = 78581
        mmTop = 0
        mmWidth = 5207
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        OnGetText = ppDBText6GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel'
        DataPipeline = ppDBFornecedor
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 3260
        mmLeft = 155046
        mmTop = 0
        mmWidth = 3006
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        OnGetText = ppDBText6GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tel2'
        DataPipeline = ppDBFornecedor
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 3260
        mmLeft = 179652
        mmTop = 0
        mmWidth = 4572
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'email'
        DataPipeline = ppDBFornecedor
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 3260
        mmLeft = 109538
        mmTop = 0
        mmWidth = 6816
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel31: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        OnGetText = GetRodape
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label301'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 2381
        mmWidth = 11642
        BandType = 8
      end
      object ppLine10: TppLine
        UserName = 'Line10'
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
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBFicha: TppDBPipeline
    DataSource = dsFicha
    OpenDataSource = False
    UserName = 'DBFicha'
    Left = 632
    Top = 208
    object ppDBFichappField1: TppField
      FieldAlias = 'idfornecedor'
      FieldName = 'idfornecedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField2: TppField
      FieldAlias = 'razao'
      FieldName = 'razao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField3: TppField
      FieldAlias = 'cnpj'
      FieldName = 'cnpj'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField4: TppField
      FieldAlias = 'endereco'
      FieldName = 'endereco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField5: TppField
      FieldAlias = 'bairro'
      FieldName = 'bairro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField6: TppField
      FieldAlias = 'cidade'
      FieldName = 'cidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField7: TppField
      FieldAlias = 'cep'
      FieldName = 'cep'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField8: TppField
      FieldAlias = 'uf'
      FieldName = 'uf'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField9: TppField
      FieldAlias = 'contato'
      FieldName = 'contato'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField10: TppField
      FieldAlias = 'tel'
      FieldName = 'tel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField11: TppField
      FieldAlias = 'tel2'
      FieldName = 'tel2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField12: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField13: TppField
      FieldAlias = 'site'
      FieldName = 'site'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField14: TppField
      FieldAlias = 'inscricao_estadual'
      FieldName = 'inscricao_estadual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField15: TppField
      FieldAlias = 'dtcadastro'
      FieldName = 'dtcadastro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField16: TppField
      FieldAlias = 'dtalteracao'
      FieldName = 'dtalteracao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField17: TppField
      FieldAlias = 'fantasia'
      FieldName = 'fantasia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField18: TppField
      FieldAlias = 'nome_contato'
      FieldName = 'nome_contato'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField19: TppField
      FieldAlias = 'tel1_contato'
      FieldName = 'tel1_contato'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField20: TppField
      FieldAlias = 'tel2_contato'
      FieldName = 'tel2_contato'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField21: TppField
      FieldAlias = 'email_contato'
      FieldName = 'email_contato'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField22: TppField
      FieldAlias = 'situacao'
      FieldName = 'situacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField23: TppField
      FieldAlias = 'status_abo'
      FieldName = 'status_abo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField24: TppField
      FieldAlias = 'motivo'
      FieldName = 'motivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField25: TppField
      FieldAlias = 'inscricao_municipal'
      FieldName = 'inscricao_municipal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField26: TppField
      FieldAlias = 'certificados'
      FieldName = 'certificados'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField27: TppField
      FieldAlias = 'endereco_fat'
      FieldName = 'endereco_fat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField28: TppField
      FieldAlias = 'cidade_fat'
      FieldName = 'cidade_fat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField29: TppField
      FieldAlias = 'uf_fat'
      FieldName = 'uf_fat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField30: TppField
      FieldAlias = 'bairro_fat'
      FieldName = 'bairro_fat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField31: TppField
      FieldAlias = 'cep_fat'
      FieldName = 'cep_fat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField32: TppField
      FieldAlias = 'referencia_fat'
      FieldName = 'referencia_fat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField33: TppField
      FieldAlias = 'tipo_frete'
      FieldName = 'tipo_frete'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField34: TppField
      FieldAlias = 'prazo_pagamento'
      FieldName = 'prazo_pagamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField35: TppField
      FieldAlias = 'prazo_medio_entrega'
      FieldName = 'prazo_medio_entrega'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField36: TppField
      FieldAlias = 'plano_contas'
      FieldName = 'plano_contas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField37: TppField
      FieldAlias = 'transportadora'
      FieldName = 'transportadora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField38: TppField
      FieldAlias = 'tipo_pagamento'
      FieldName = 'tipo_pagamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField39: TppField
      FieldAlias = 'limite_credito'
      FieldName = 'limite_credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField40: TppField
      FieldAlias = 'dtultima_visita'
      FieldName = 'dtultima_visita'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField41: TppField
      FieldAlias = 'dtultima_campanha'
      FieldName = 'dtultima_campanha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField42: TppField
      FieldAlias = 'dtproximo_contato'
      FieldName = 'dtproximo_contato'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField43: TppField
      FieldAlias = 'dtultima_compra'
      FieldName = 'dtultima_compra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField44: TppField
      FieldAlias = 'referencia'
      FieldName = 'referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField45: TppField
      FieldAlias = 'nome_contato2'
      FieldName = 'nome_contato2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField46: TppField
      FieldAlias = 'tel1_contato2'
      FieldName = 'tel1_contato2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField47: TppField
      FieldAlias = 'tel2_contato2'
      FieldName = 'tel2_contato2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField48: TppField
      FieldAlias = 'email_contato2'
      FieldName = 'email_contato2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField49: TppField
      FieldAlias = 'banco1'
      FieldName = 'banco1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField50: TppField
      FieldAlias = 'agencia1'
      FieldName = 'agencia1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField51: TppField
      FieldAlias = 'conta1'
      FieldName = 'conta1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField52: TppField
      FieldAlias = 'banco2'
      FieldName = 'banco2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField53: TppField
      FieldAlias = 'agencia2'
      FieldName = 'agencia2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField54: TppField
      FieldAlias = 'conta2'
      FieldName = 'conta2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField55: TppField
      FieldAlias = 'banco3'
      FieldName = 'banco3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField56: TppField
      FieldAlias = 'conta3'
      FieldName = 'conta3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField57: TppField
      FieldAlias = 'agencia3'
      FieldName = 'agencia3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField58: TppField
      FieldAlias = 'obs'
      FieldName = 'obs'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField59: TppField
      FieldAlias = 'dtproxima_visita'
      FieldName = 'dtproxima_visita'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBFichappField60: TppField
      FieldAlias = 'dtultimo_contato'
      FieldName = 'dtultimo_contato'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
  end
  object ppDBFornecedor: TppDBPipeline
    DataSource = dsPesquisa
    OpenDataSource = False
    UserName = 'DBFornecedor'
    Left = 496
    Top = 200
    object ppDBFornecedorppField1: TppField
      FieldAlias = 'idfornecedor'
      FieldName = 'idfornecedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBFornecedorppField2: TppField
      FieldAlias = 'razao'
      FieldName = 'razao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBFornecedorppField3: TppField
      FieldAlias = 'tel'
      FieldName = 'tel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBFornecedorppField4: TppField
      FieldAlias = 'tel2'
      FieldName = 'tel2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBFornecedorppField5: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object qrFichaFornecedor: TZQuery
    Connection = DM.ZConnection
    SQL.Strings = (
      'select * from tbfornecedor where idfornecedor > 0')
    Params = <>
    Left = 592
    Top = 256
  end
  object dsFicha: TDataSource
    DataSet = qrFichaFornecedor
    Left = 696
    Top = 288
  end
  object ppDBConfigs: TppDBPipeline
    DataSource = DM.dsConfigs
    OpenDataSource = False
    UserName = 'DBConfigs'
    Left = 352
    Top = 256
    object ppDBConfigsppField1: TppField
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField2: TppField
      FieldAlias = 'razaosocial'
      FieldName = 'razaosocial'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField3: TppField
      FieldAlias = 'cnpj'
      FieldName = 'cnpj'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField4: TppField
      FieldAlias = 'endereco'
      FieldName = 'endereco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField5: TppField
      FieldAlias = 'bairro'
      FieldName = 'bairro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField6: TppField
      FieldAlias = 'cidade'
      FieldName = 'cidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField7: TppField
      FieldAlias = 'cep'
      FieldName = 'cep'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField8: TppField
      FieldAlias = 'uf'
      FieldName = 'uf'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField9: TppField
      FieldAlias = 'telefone'
      FieldName = 'telefone'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField10: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField11: TppField
      FieldAlias = 'complemento'
      FieldName = 'complemento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField12: TppField
      FieldAlias = 'numero'
      FieldName = 'numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField13: TppField
      FieldAlias = 'fax'
      FieldName = 'fax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField14: TppField
      FieldAlias = 'cordedit'
      FieldName = 'cordedit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField15: TppField
      FieldAlias = 'host'
      FieldName = 'host'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField16: TppField
      FieldAlias = 'user_ftp'
      FieldName = 'user_ftp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField17: TppField
      FieldAlias = 'senha_ftp'
      FieldName = 'senha_ftp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField18: TppField
      FieldAlias = 'porta_ftp'
      FieldName = 'porta_ftp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField19: TppField
      FieldAlias = 'atualiza_compra_fornecedor'
      FieldName = 'atualiza_compra_fornecedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField20: TppField
      FieldAlias = 'atualizar_valor_compra_produto'
      FieldName = 'atualizar_valor_compra_produto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField21: TppField
      FieldAlias = 'processar_cartao_credito'
      FieldName = 'processar_cartao_credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField22: TppField
      FieldAlias = 'descontar_taxa_operadora'
      FieldName = 'descontar_taxa_operadora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField23: TppField
      FieldAlias = 'data_sistema'
      FieldName = 'data_sistema'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField24: TppField
      FieldAlias = 'site'
      FieldName = 'site'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField25: TppField
      FieldAlias = 'imprime_recibo'
      FieldName = 'imprime_recibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField26: TppField
      FieldAlias = 'imprime_sem_visualizar'
      FieldName = 'imprime_sem_visualizar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField27: TppField
      FieldAlias = 'num_copias'
      FieldName = 'num_copias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBConfigsppField28: TppField
      FieldAlias = 'cor_fundo'
      FieldName = 'cor_fundo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
end
