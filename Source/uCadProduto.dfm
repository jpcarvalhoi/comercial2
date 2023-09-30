inherited FormCadProduto: TFormCadProduto
  Left = 486
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 493
  ClientWidth = 823
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 829
  ExplicitHeight = 522
  PixelsPerInch = 96
  TextHeight = 13
  object Label34: TLabel [0]
    Left = 187
    Top = 141
    Width = 93
    Height = 13
    Caption = 'Estoque - Empenho'
  end
  inherited pnlPrincipal: TPanel
    Width = 823
    ExplicitWidth = 823
    inherited btnLocalizar: TBitBtn [0]
      Left = 356
      TabOrder = 5
      Visible = False
      ExplicitLeft = 356
    end
    inherited btnPrimeiro: TBitBtn [1]
      Left = 448
      TabOrder = 6
      Visible = False
      ExplicitLeft = 448
    end
    inherited btnAnterior: TBitBtn [2]
      Left = 522
      TabOrder = 7
      Visible = False
      ExplicitLeft = 522
    end
    inherited btnProximo: TBitBtn [3]
      Left = 596
      TabOrder = 8
      Visible = False
      ExplicitLeft = 596
    end
    inherited btnUltimo: TBitBtn [4]
      Left = 670
      TabOrder = 9
      Visible = False
      ExplicitLeft = 670
    end
    inherited btnNovo: TBitBtn [5]
    end
    inherited btnSalvar: TBitBtn [6]
    end
    inherited btnCancelar: TBitBtn [7]
    end
    inherited btnFechar: TBitBtn
      Left = 744
      TabOrder = 10
      ExplicitLeft = 744
    end
    object btnReplicar: TBitBtn
      Left = 299
      Top = 3
      Width = 75
      Height = 55
      Caption = 'Replicar'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000D6090000D60900000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
        F6FFEEECFFEEECFFEFECFFEFECFFEFECFFEFECFFF0ECFFF0ECFFF0EDFFF0EDFF
        F0EDFFF0EDFFF0EDFFF0EDFFF0EDFFF0EDFFFAF9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
        D1FEAC9FFEAEA0FEB0A1FEB2A2FEB3A2FEB5A3FEB6A3FEB7A4FEB8A4FEB9A4FE
        B9A5FEBAA5FEBAA5FEBAA5FEB9A5FEB9A4FFE6DFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8
        D2FEAFA1FEB1A1FEB3A2FEB5A3FEB7A4FEB8A4FEBAA5FEBBA5FEBCA5FEBCA6FE
        BDA6FEBDA6FEBEA6FEBDA6FEBDA6FEBCA6FFE7DFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFCFFEEECFFEEECFFEEECFFEFECFFEFECFFEFECFFF0ECFDEEEAF4E6E3FACD
        C4FEB3A2FEB5A3FEB7A4FEB9A4FEBAA5FEBCA6FEBDA6FEBEA7FEC0A7FEC0A7FE
        C1A8FEC1A8FEC1A8FEC1A8FEC1A8FEC0A7FFE8E0FFFFFFFFFFFFFFFFFFFFFFFF
        FFF0EEFEAB9FFEADA0FEAFA1FEB1A1FEB3A2FEB4A3FEB5A3F0AF9EC5998DE2A6
        97FEB5A3FEB8A4EDB09DE9AF9BE9B19BE9B19CE9B39DE9B49DE9B59EE9B69EE9
        B69EE9B79EE9B79EEFBBA1FEC4A9FEC4A9FFEAE0FFFFFFFFFFFFFFFFFFFFFFFF
        FFF0EEFEAFA0FEB1A1FEB3A2FEB4A3FEB6A3FEB8A4FEB9A5EFB29FC1998CE0A8
        98FEB8A4FEBBA5EBB19CE7B09BE7B29CE7B49CE7B49DE7B69EE7B79EE7B89EE7
        B89FE7B89FE7B99FEEBDA2FEC8ABFEC8AAFFEBE1FFFFFFFFFFFFFFFFFFFFFFFF
        FFF1EEFEB1A1FEB4A2FEB6A3FEB8A4FEBAA5FEBBA5FEBDA6EEB59FBE998BDEAA
        98FEBCA5FEBEA6F4B9A2F1BAA2F1BCA2F1BDA3F1BFA3F1C0A4F1C1A5F1C2A5F1
        C3A5F1C4A5F1C4A5F5C6A7FECCACFECBACFFECE1FFFFFFFFFFFFFFFFFFFFFFFF
        FFF1EFFEB5A3FEB7A4F4B3A0EAAE9BEAB09CEAB29DEAB39DDCAB98AE9185D6A6
        95FEBEA6FEC1A8E8B49DE3B29BE3B59CE3B79CE3B89DE3B99EE3BA9EE3BB9EE3
        BC9FE3BC9FE3BC9FEAC2A3FED0AEFECFADFFEEE2FFFFFFFFFFFFFFFFFFFFFFFF
        FFF2EFFEB8A4FEBAA5F8B8A3F3B7A1F3B9A1F3BBA2F3BCA3E2B39CB09487D7A9
        96FEC1A8FEC4A9E6B59DE1B49BE1B69CE1B89DE1B99DE1BA9EE1BC9FE1BD9FE1
        BD9FE1BE9FE1BEA0E9C4A3FED3AFFED3AFFFEFE2FFFFFFFFFFFFFFFFFFFFFFFF
        FFF2EFFEBAA5FEBDA6F8BBA4F1BAA2F1BCA2F1BCA2F1BEA3E0B49CAC9485D4AA
        96FEC3A9FEC6AAE4B79DDFB59BDFB79CDFB99DDFBA9EDFBC9EDFBD9EDFBE9EDF
        BE9FDFBF9FDFBF9FE8C6A4FED7B1FED6B0FFF0E3FFFFFFFFFFFFFFFFFFFFFFFF
        FFF3EFFEBDA6FEC0A7E8B49DD6A994D6AB95D6AD95D6AD96C8A6909B897DCBA5
        92FEC6AAFEC9ABFECCACFECEADFED1AEFED3AFFED5B0FED7B1FED9B1FEDAB2FE
        DBB2FEDBB3FEDCB3FEDBB3FEDBB2FEDAB2FFF2E3FFFFFFFFFFFFFFFFFFFFFFFF
        FFF3EFFEC0A7FEC2A8EFBBA1E1B49BE1B59BE1B79CE1B99DD1AE979D8C7FCCA7
        93FEC8ABFECBACE1B99DDAB69ADAB79BDABA9CDABB9CDABD9DDABF9EDABF9EDA
        C19FDAC19FDAC19FE5CAA5FEDFB4FEDDB3FFF3E4FFFFFFFFFFFFFFFFFFFFFFFF
        FFF4EFFEC2A8FEC5A9F6C2A7EFBFA4EFC2A5EFC4A5EFC6A6DCB99DA19082CCA9
        94FBC7A9FECDADCFAE94C5A88FC5AA90C5AC91C5AD92C5AE92C5B093C5B193C5
        B293C5B294C5B294D6C19EFEE2B5FEE1B5FFF4E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFF4F0FEC5A9FEC8AAF5C4A7EDC1A4EDC4A5EDC5A6EDC7A7D9BB9E9C8E80C8A8
        93F7C7A8FBCCACDDBA9DD6B799D6B99AD6BA9CE6CBA6F2DDB383B1A898BBAB98
        BBAB98BCAB98BCAB94BAABFEE5B7FEE4B6FFF5E5FFFFFFFFFFFFFFFFFFFFFFFF
        FEF4EFFEC6A9FECAABE1B89DC8A890C8AA91C8AC92C8AD93B9A38C8B8277BDA1
        8DF2C5A7F7CCAAFBD2AEFED8B1FEDBB2FEDEB3FEE1B5EFDEB450CAE223D1FF22
        D0FF1DCDFF17CAFF6ABABEFEE8B8FEE7B7FFF6E6FFFFFFFFFFFFFFFFFFFFFFFF
        FDF3EEFBC6A9FECBABEAC0A3D8B69AD8B89BD8BA9CD8BD9CC6B0948E867ABCA2
        8EEBC1A5F2CAA9D3B598CFB397D1B999D1BB9AE3CDA6EFDFB558D0E22FD8FF2D
        D7FF28D4FF22D0FF6CBCBFFEECBAFEEAB9FFF7E6FFFFFFFFFFFFFFFFFFFFFFFF
        FDF3EEF6C5A8FBCBABF4C8A7EAC5A5EAC8A6EACBA6EDCFA9E5CCA783867EB6A2
        8FE3BDA1EBC6A6BCA38CB39F87B6A38AB7A78BD5C29EEFE2B65FD5E23BDFFF39
        DDFF33DAFF2AD5FF6EBFC0FEEFBBFEEDBAFFF8E6FFFFFFFFFFFFFFFFFFFFFFFF
        FBF2EDF1C3A5F6CAAAF0C8A7E9C6A4E9C9A6E9CCA7EBD0A9E4CEA8627E819D9D
        96D9B69CE3C1A3C7AD92C4AD92C8B395CBB897E1CDA6EFE3B767DAE348E6FF43
        E4FF3CDFFF32D9FF70C1C0FEF2BCFEEFBBFFF9E7FFFFFFFFFFFFFFFFFFFFFFFF
        FAF1EBEAC0A3F1C8A8DFBD9FCFB396D1B798D1BA9AD7C19EE4CFA8667F819799
        92CAAC96D0B297C7AC90E7CBA6F2D6AEF7DEB2FBE4B6EFE4B76EDEE353EDFF4D
        E9FF42E3FF37DCFF71C3C0FEF5BDFEF1BCFFF9E7FFFFFFFFFFFFFFFFFFFFFFFF
        F8EFEAE2BBA0EAC4A5DABA9DC9B094CDB596CFB999D5C19DFDE6B66896989593
        899F8F7B9D8D7B998C7DB9AB98BCA98FC1B091D9C8A2EFE3B583B7AB98C3AF98
        C6B098C8B198C9B194C5B0FEF6BEFEF2BCFFFAE7FFFFFFFFFFFFFFFFFFFFFFFF
        F5ECE7D6B49BE2BFA1D3B59AC4AC91C7B294CBB797D3C09CFEE9B86EC6C864A6
        ACD1BA9AF0DFBDF9EED5FAF4E5E3CBA7EBD5ACF2DEB1F7E5B5FBECB9FEF3BDFE
        F7BEFEFABFFEFCC0FEFABFFEF6BEFEF2BCFFFAE7FFFFFFFFFFFFFFFFFFFFFFFF
        F1E8E4C7AA93D4B69BC6AA91CAB194D9C19FDDC8A2E5D0A8FEEAB872C9C953EC
        FE69A6ABD0B999F0DFBDF4E9D0D9C2A1E3CDA8EBD7ADF2E0B2F7E8B7FBEEBAFE
        F5BDFEF7BEFEF8BFFEF7BEFEF4BDFEF1BCFFF9E7FFFFFFFFFFFFFFFFFFFFFFFF
        E6DEDB917F718674658676659D8C78BBA88DC0AE91C9B997FBE8B78ABAAB98C3
        AE98C4AF87978AD0B898EAD9B9CAB599D9C4A2E3D0A8EBD9ADF2E1B3F7E9B7FB
        EFBAFEF3BDFEF4BDFEF3BDFEF1BCFEEFBBFFF9E7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCCB497EEDBB8F8ECD1FDF7E8E9D5B9EAD3ABF1DCAFF6E4B4FBEBB9FEF2
        BBFEF6BEFDF8BECCC6A0CDB797B4A38ECAB799D9C5A2E3D1A9EBDAAEF2E2B3F7
        E9B7FBEDB9FEF0BBFEF0BBFEEEBBFEECBAFFF8E6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCBB396EEDBB8F8ECD1E0CDB1E2CCA7EAD5ACF1DEB1F6E6B5FBEE
        BAFEF4BCFEF7BEFEF8BFF3EBB6E8DCAFEFE1B2F3E7C9F7F2EAFAF5ECFBF7EDFD
        F9EFFDF9EFFEFBF0FFFBF1FFFBF1FFFBF1FFFDFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC9B295EEDBB8D4C1A6D6C1A0E2CDA7EAD7ADF1E0B2F6E8
        B6FBEEBAFEF3BCFEF5BDFEF4BDFEF2BCFEF0BBFEF4D6FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC8B194BAA992C7B498D6C2A1E2CFA7EAD8AEF1E0
        B2F6E8B6FBEDB9FEF1BBFEF0BBFEEFBBFEEDBAFEF3D6FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC4B6DFD4C7E8DECFEFE6D5F3EBD9F7EF
        DCF9F1DEFBF5E0FDF6E2FEF7E3FFF8E3FFF7E3FFFAEEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 4
      OnClick = btnReplicarClick
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 474
    Width = 823
    ExplicitTop = 474
    ExplicitWidth = 823
  end
  object PageControl1: TPageControl [3]
    Left = 8
    Top = 67
    Width = 815
    Height = 401
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados do Produto'
      object Label1: TLabel
        Left = 3
        Top = 5
        Width = 22
        Height = 13
        Caption = 'C'#243'd.'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 84
        Top = 5
        Width = 51
        Height = 13
        Caption = 'C'#243'd. Garra'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 234
        Top = 5
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 725
        Top = 50
        Width = 76
        Height = 13
        Caption = 'Unidade/Venda'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 3
        Top = 51
        Width = 67
        Height = 13
        Caption = 'Info. Adicional'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 5
        Top = 241
        Width = 40
        Height = 13
        Caption = 'V. Custo'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 146
        Top = 241
        Width = 28
        Height = 13
        Caption = 'Pre'#231'o'
        FocusControl = DBEdit7
      end
      object Label11: TLabel
        Left = 537
        Top = 192
        Width = 59
        Height = 13
        Caption = 'Dt. Cadastro'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 370
        Top = 51
        Width = 45
        Height = 13
        Caption = 'Categoria'
      end
      object Label8: TLabel
        Left = 725
        Top = 98
        Width = 79
        Height = 13
        Caption = 'Unidade Compra'
        FocusControl = DBEdit8
      end
      object Label16: TLabel
        Left = 180
        Top = 98
        Width = 52
        Height = 13
        Caption = 'Refer'#234'ncia'
        FocusControl = DBEdit12
      end
      object Label17: TLabel
        Left = 358
        Top = 98
        Width = 16
        Height = 13
        Caption = 'Cor'
        FocusControl = DBEdit13
      end
      object Label18: TLabel
        Left = 533
        Top = 98
        Width = 30
        Height = 13
        Caption = 'Marca'
        FocusControl = DBEdit14
      end
      object Label19: TLabel
        Left = 537
        Top = 144
        Width = 21
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBEdit15
      end
      object Label20: TLabel
        Left = 3
        Top = 144
        Width = 60
        Height = 13
        Caption = 'Acabamento'
        FocusControl = DBEdit16
      end
      object Label21: TLabel
        Left = 181
        Top = 144
        Width = 74
        Height = 13
        Caption = 'Grupo Materiais'
        FocusControl = DBEdit17
      end
      object Label22: TLabel
        Left = 359
        Top = 144
        Width = 35
        Height = 13
        Caption = 'Medida'
        FocusControl = DBEdit18
      end
      object Label23: TLabel
        Left = 359
        Top = 192
        Width = 24
        Height = 13
        Caption = 'Peso'
        FocusControl = DBEdit19
      end
      object Label24: TLabel
        Left = 3
        Top = 192
        Width = 77
        Height = 13
        Caption = 'Plano Despesas'
        FocusControl = DBEdit20
      end
      object Label25: TLabel
        Left = 725
        Top = 144
        Width = 62
        Height = 13
        Caption = 'Qtde Compra'
        FocusControl = DBEdit21
      end
      object Label26: TLabel
        Left = 181
        Top = 192
        Width = 52
        Height = 13
        Caption = 'Imobilizado'
        FocusControl = DBEdit22
      end
      object Label56: TLabel
        Left = 3
        Top = 98
        Width = 45
        Height = 13
        Caption = 'Tamanho'
        FocusControl = DBEdit64
      end
      object Label59: TLabel
        Left = 626
        Top = 5
        Width = 26
        Height = 13
        Caption = 'Edital'
        FocusControl = DBEdit66
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 22
        Width = 75
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'idproduto'
        DataSource = dsNavegacao
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 84
        Top = 22
        Width = 144
        Height = 21
        CharCase = ecUpperCase
        DataField = 'codbarras'
        DataSource = dsNavegacao
        TabOrder = 1
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit3: TDBEdit
        Left = 234
        Top = 22
        Width = 383
        Height = 21
        CharCase = ecUpperCase
        DataField = 'descricao'
        DataSource = dsNavegacao
        TabOrder = 2
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit4: TDBEdit
        Left = 725
        Top = 67
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        DataField = 'unidade'
        DataSource = dsNavegacao
        TabOrder = 3
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit5: TDBEdit
        Left = 3
        Top = 67
        Width = 361
        Height = 21
        CharCase = ecUpperCase
        DataField = 'info_adicional'
        DataSource = dsNavegacao
        TabOrder = 7
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit6: TDBEdit
        Left = 5
        Top = 257
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'valor_custo'
        DataSource = dsNavegacao
        Enabled = False
        ReadOnly = True
        TabOrder = 22
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit7: TDBEdit
        Left = 146
        Top = 257
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'valor_varejo'
        DataSource = dsNavegacao
        Enabled = False
        ReadOnly = True
        TabOrder = 23
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit11: TDBEdit
        Left = 537
        Top = 208
        Width = 98
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'dt_cadastro'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 20
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 370
        Top = 67
        Width = 277
        Height = 21
        DataField = 'idcategoria'
        DataSource = dsNavegacao
        KeyField = 'idcategoria'
        ListField = 'descricao'
        ListSource = dsCategoria
        TabOrder = 8
        OnKeyDown = DBLookupComboBox1KeyDown
      end
      object BitBtn1: TBitBtn
        Left = 652
        Top = 64
        Width = 30
        Height = 25
        Hint = 'Localizar'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 683
        Top = 64
        Width = 30
        Height = 25
        Hint = 'Novo registro'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD18A62C4652FC76730CA6A30CD6C31DC9265FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1632EF4BD86EE
          9C4FEE9641F19C47D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC1622EF4BD87E8934FE98F41F29E49CF6E32FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0622EF4BD87E6
          8F4EE88B41F29E48CE6D31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC0612DF4BC86E68E4DE7893FF19C46CD6C31FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC4805FB3582AB65A2BB95C2BBC5E2CBE602DF3BC86E4
          8B4BE5863DEF9843CB6A30CD6C31CE6D31CF6E32D06E32D6804CAF5529F0B98A
          E69353E38740E38236E38232E99349E07E3AE38139ED943FEF9943F19C46F29E
          48F29E49F19D47CD6C31AE5428F0B98ADD834CD87339DA763ADB783ADC7736DB
          7433DE7835E38139E5863DE78940E88C41EA8F42EE9641CA6A30AD5328F0B98B
          DF8C5ADA7E4BDC814CDE844EE0874FDD7D42DE7E40E28644E69154E79254E894
          55EA9856EFA157C76730AC5228EFB98BF0B98BF1BA8AF1BB8BF1BC8BF2BD8BE0
          8750DE7E3FEB9D57F4C08DF5C18DF5C18DF5C18DF5C18DC4652FBF7D5DAD5228
          AF5428B15629B3582AB65A2AF1BC8BDE844EDC7A3DE68E44BE602DC0612DC062
          2EC1622EC1632ED79977FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3582AF1BB8BDC
          814DDA763BE58B42BC5E2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB15629F1BA8BDB7F4BD8733AE38942B95C2BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5428F0BA8BDF
          8C5BDD834DE69453B65A2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFAD5228F0BA8BF0BA8BF0BA8BF0BA8BB3582AFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7D5DAC5228AD
          5328AE5428AF5529C4805FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        TabStop = False
        OnClick = BitBtn2Click
      end
      object DBCheckBox1: TDBCheckBox
        Left = 420
        Top = 259
        Width = 165
        Height = 17
        Caption = 'Controlar produto em Estoque.'
        DataField = 'controla_estoque'
        DataSource = dsNavegacao
        TabOrder = 25
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object edCustoMedio: TLabeledEdit
        Left = 286
        Top = 257
        Width = 121
        Height = 21
        TabStop = False
        EditLabel.Width = 59
        EditLabel.Height = 13
        EditLabel.Caption = 'Custo M'#233'dio'
        Enabled = False
        ReadOnly = True
        TabOrder = 24
      end
      object DBEdit8: TDBEdit
        Left = 725
        Top = 114
        Width = 73
        Height = 21
        DataField = 'unidade_compra'
        DataSource = dsNavegacao
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 180
        Top = 114
        Width = 164
        Height = 21
        DataField = 'referencia'
        DataSource = dsNavegacao
        TabOrder = 11
      end
      object DBEdit13: TDBEdit
        Left = 358
        Top = 114
        Width = 164
        Height = 21
        DataField = 'cor'
        DataSource = dsNavegacao
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 533
        Top = 114
        Width = 164
        Height = 21
        DataField = 'marca'
        DataSource = dsNavegacao
        TabOrder = 13
      end
      object DBEdit15: TDBEdit
        Left = 537
        Top = 160
        Width = 164
        Height = 21
        DataField = 'tipo'
        DataSource = dsNavegacao
        TabOrder = 17
      end
      object DBEdit16: TDBEdit
        Left = 3
        Top = 160
        Width = 164
        Height = 21
        DataField = 'acabamento'
        DataSource = dsNavegacao
        TabOrder = 14
      end
      object DBEdit17: TDBEdit
        Left = 181
        Top = 160
        Width = 164
        Height = 21
        DataField = 'grupo_materiais'
        DataSource = dsNavegacao
        TabOrder = 15
      end
      object DBEdit18: TDBEdit
        Left = 359
        Top = 160
        Width = 161
        Height = 21
        DataField = 'medida'
        DataSource = dsNavegacao
        TabOrder = 16
      end
      object DBEdit19: TDBEdit
        Left = 359
        Top = 208
        Width = 161
        Height = 21
        DataField = 'peso'
        DataSource = dsNavegacao
        TabOrder = 21
      end
      object DBEdit20: TDBEdit
        Left = 3
        Top = 208
        Width = 164
        Height = 21
        DataField = 'plano_despesas'
        DataSource = dsNavegacao
        TabOrder = 18
      end
      object DBEdit21: TDBEdit
        Left = 725
        Top = 160
        Width = 73
        Height = 21
        DataField = 'qtde_compra'
        DataSource = dsNavegacao
        TabOrder = 9
      end
      object DBEdit22: TDBEdit
        Left = 181
        Top = 208
        Width = 164
        Height = 21
        DataField = 'imobilizado'
        DataSource = dsNavegacao
        TabOrder = 19
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 291
        Width = 310
        Height = 71
        Caption = 'Estoque'
        TabOrder = 26
        object Label10: TLabel
          Left = 15
          Top = 23
          Width = 82
          Height = 13
          Caption = 'Qtde em Estoque'
          FocusControl = DBEdit10
        end
        object Label9: TLabel
          Left = 160
          Top = 23
          Width = 77
          Height = 13
          Caption = 'Estoque M'#237'nimo'
          FocusControl = DBEdit9
        end
        object DBEdit10: TDBEdit
          Left = 15
          Top = 39
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'est_atual'
          DataSource = dsNavegacao
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit9: TDBEdit
          Left = 160
          Top = 39
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'est_minimo'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
      object DBEdit64: TDBEdit
        Left = 3
        Top = 114
        Width = 164
        Height = 21
        DataField = 'tamanho'
        DataSource = dsNavegacao
        TabOrder = 10
      end
      object DBEdit66: TDBEdit
        Left = 626
        Top = 22
        Width = 172
        Height = 21
        CharCase = ecUpperCase
        DataField = 'edital'
        DataSource = dsNavegacao
        TabOrder = 27
        Visible = False
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pre'#231'o de Venda'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label38: TLabel
        Left = 18
        Top = 90
        Width = 70
        Height = 13
        Caption = 'Juros Cart'#227'o %'
        FocusControl = DBEdit33
      end
      object Label39: TLabel
        Left = 18
        Top = 130
        Width = 105
        Height = 13
        Caption = 'Comiss'#227'o Vendedor %'
        FocusControl = DBEdit34
      end
      object Label40: TLabel
        Left = 18
        Top = 170
        Width = 92
        Height = 13
        Caption = 'Comiss'#227'o Interna %'
        FocusControl = DBEdit35
      end
      object Label41: TLabel
        Left = 18
        Top = 210
        Width = 99
        Height = 13
        Caption = 'Comiss'#227'o Especial %'
        FocusControl = DBEdit36
      end
      object Label42: TLabel
        Left = 18
        Top = 250
        Width = 85
        Height = 13
        Caption = 'Comiss'#227'o Outra %'
        FocusControl = DBEdit37
      end
      object Label43: TLabel
        Left = 285
        Top = 50
        Width = 28
        Height = 13
        Caption = 'ISS %'
        FocusControl = DBEdit38
      end
      object Label44: TLabel
        Left = 285
        Top = 90
        Width = 37
        Height = 13
        Caption = 'ICMS %'
        FocusControl = DBEdit39
      end
      object Label45: TLabel
        Left = 285
        Top = 314
        Width = 24
        Height = 13
        Caption = 'IPI %'
        FocusControl = DBEdit40
        Visible = False
      end
      object Label46: TLabel
        Left = 285
        Top = 131
        Width = 28
        Height = 13
        Caption = 'ISV %'
        FocusControl = DBEdit41
      end
      object Label47: TLabel
        Left = 285
        Top = 171
        Width = 48
        Height = 13
        Caption = 'Imposto %'
        FocusControl = DBEdit42
      end
      object Label48: TLabel
        Left = 285
        Top = 211
        Width = 48
        Height = 13
        Caption = 'Imposto %'
        FocusControl = DBEdit43
      end
      object Label49: TLabel
        Left = 18
        Top = 276
        Width = 24
        Height = 13
        Caption = 'Frete'
        FocusControl = DBEdit44
      end
      object Label50: TLabel
        Left = 18
        Top = 330
        Width = 88
        Height = 13
        Caption = 'Despesas ADM  %'
        FocusControl = DBEdit45
      end
      object Label51: TLabel
        Left = 18
        Top = 50
        Width = 94
        Height = 13
        Caption = 'Margem de Lucro %'
        FocusControl = DBEdit46
      end
      object Label52: TLabel
        Left = 16
        Top = 5
        Width = 40
        Height = 13
        Caption = 'V. Custo'
        FocusControl = DBEdit61
      end
      object Label53: TLabel
        Left = 164
        Top = 5
        Width = 77
        Height = 13
        Caption = 'Pre'#231'o na Venda'
        FocusControl = DBEdit62
      end
      object Label54: TLabel
        Left = 20
        Top = 292
        Width = 38
        Height = 13
        Caption = 'Frete  %'
      end
      object Label55: TLabel
        Left = 388
        Top = 3
        Width = 78
        Height = 13
        Caption = 'Pre'#231'o Calculado'
        FocusControl = DBEdit63
      end
      object DBEdit33: TDBEdit
        Left = 18
        Top = 106
        Width = 134
        Height = 22
        DataField = 'juros_cartao'
        DataSource = dsNavegacao
        TabOrder = 8
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit34: TDBEdit
        Left = 18
        Top = 146
        Width = 134
        Height = 22
        DataField = 'comissao_vendedor'
        DataSource = dsNavegacao
        TabOrder = 12
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit35: TDBEdit
        Left = 18
        Top = 186
        Width = 134
        Height = 22
        DataField = 'comissao_iterna'
        DataSource = dsNavegacao
        TabOrder = 16
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit36: TDBEdit
        Left = 18
        Top = 226
        Width = 134
        Height = 22
        DataField = 'comissao_especial'
        DataSource = dsNavegacao
        TabOrder = 20
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit37: TDBEdit
        Left = 18
        Top = 266
        Width = 134
        Height = 22
        DataField = 'comissao_outra'
        DataSource = dsNavegacao
        TabOrder = 24
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit38: TDBEdit
        Left = 285
        Top = 66
        Width = 134
        Height = 22
        DataField = 'iss'
        DataSource = dsNavegacao
        TabOrder = 6
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit39: TDBEdit
        Left = 285
        Top = 106
        Width = 134
        Height = 22
        DataField = 'icms'
        DataSource = dsNavegacao
        TabOrder = 10
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit40: TDBEdit
        Left = 285
        Top = 330
        Width = 134
        Height = 22
        DataField = 'ipi'
        DataSource = dsNavegacao
        TabOrder = 14
        Visible = False
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit41: TDBEdit
        Left = 285
        Top = 147
        Width = 134
        Height = 22
        DataField = 'isv'
        DataSource = dsNavegacao
        TabOrder = 18
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit42: TDBEdit
        Left = 285
        Top = 187
        Width = 134
        Height = 22
        DataField = 'imposto_a'
        DataSource = dsNavegacao
        TabOrder = 22
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit43: TDBEdit
        Left = 285
        Top = 227
        Width = 134
        Height = 22
        DataField = 'imposto_b'
        DataSource = dsNavegacao
        TabOrder = 26
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit44: TDBEdit
        Left = 18
        Top = 306
        Width = 134
        Height = 22
        DataField = 'frete'
        DataSource = dsNavegacao
        TabOrder = 28
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit45: TDBEdit
        Left = 18
        Top = 346
        Width = 134
        Height = 22
        DataField = 'despesas_adm'
        DataSource = dsNavegacao
        TabOrder = 30
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit46: TDBEdit
        Left = 18
        Top = 66
        Width = 134
        Height = 22
        DataField = 'margem_lucro'
        DataSource = dsNavegacao
        TabOrder = 4
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit47: TDBEdit
        Left = 164
        Top = 106
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'juros_cartao_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 9
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit48: TDBEdit
        Left = 164
        Top = 146
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'comissao_vendedor_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 13
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit49: TDBEdit
        Left = 164
        Top = 186
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'comissao_iterna_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 17
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit50: TDBEdit
        Left = 164
        Top = 226
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'comissao_especial_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 21
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit51: TDBEdit
        Left = 164
        Top = 266
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'comissao_outra_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 25
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit52: TDBEdit
        Left = 164
        Top = 306
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'frete_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 29
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit53: TDBEdit
        Left = 164
        Top = 346
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'despesas_adm_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 31
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit54: TDBEdit
        Left = 164
        Top = 66
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'margem_lucro_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 5
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit55: TDBEdit
        Left = 431
        Top = 66
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'iss_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 7
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit56: TDBEdit
        Left = 431
        Top = 106
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'icms_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 11
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit57: TDBEdit
        Left = 431
        Top = 330
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'ipi_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 15
        Visible = False
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit58: TDBEdit
        Left = 431
        Top = 147
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'isv_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 19
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit59: TDBEdit
        Left = 431
        Top = 187
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'imposto_a_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 23
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit60: TDBEdit
        Left = 431
        Top = 227
        Width = 101
        Height = 22
        TabStop = False
        DataField = 'imposto_b_calc'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 27
        OnEnter = EditEnter
        OnExit = EditExit
      end
      object DBEdit61: TDBEdit
        Left = 16
        Top = 21
        Width = 134
        Height = 22
        CharCase = ecUpperCase
        DataField = 'valor_custo'
        DataSource = dsNavegacao
        TabOrder = 2
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit62: TDBEdit
        Left = 164
        Top = 21
        Width = 134
        Height = 22
        CharCase = ecUpperCase
        DataField = 'valor_varejo'
        DataSource = dsNavegacao
        TabOrder = 3
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit63: TDBEdit
        Left = 388
        Top = 19
        Width = 134
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'PrecoVenda_ideal'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 1
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object BitBtn6: TBitBtn
        Left = 304
        Top = 17
        Width = 75
        Height = 25
        Caption = '<= Usar Calc. '
        TabOrder = 0
        OnClick = BitBtn6Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pre'#231'o por Cliente'
      ImageIndex = 5
      OnShow = TabSheet2Show
      object Label57: TLabel
        Left = 380
        Top = 9
        Width = 28
        Height = 13
        Caption = 'Pre'#231'o'
      end
      object Label58: TLabel
        Left = 694
        Top = 9
        Width = 83
        Height = 13
        Caption = 'Pre'#231'o do Produto'
        FocusControl = DBEdit65
      end
      object btnCliente: TBitBtn
        Left = 5
        Top = 24
        Width = 30
        Height = 25
        Hint = 'Localizar'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = btnClienteClick
      end
      object edCliente: TLabeledEdit
        Left = 41
        Top = 26
        Width = 327
        Height = 21
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'Cliente'
        ReadOnly = True
        TabOrder = 1
        OnKeyDown = edClienteKeyDown
      end
      object btnClienteAdd: TBitBtn
        Left = 592
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD18A62C4652FC76730CA6A30CD6C31DC9265FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1632EF4BD86EE
          9C4FEE9641F19C47D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC1622EF4BD87E8934FE98F41F29E49CF6E32FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0622EF4BD87E6
          8F4EE88B41F29E48CE6D31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC0612DF4BC86E68E4DE7893FF19C46CD6C31FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC4805FB3582AB65A2BB95C2BBC5E2CBE602DF3BC86E4
          8B4BE5863DEF9843CB6A30CD6C31CE6D31CF6E32D06E32D6804CAF5529F0B98A
          E69353E38740E38236E38232E99349E07E3AE38139ED943FEF9943F19C46F29E
          48F29E49F19D47CD6C31AE5428F0B98ADD834CD87339DA763ADB783ADC7736DB
          7433DE7835E38139E5863DE78940E88C41EA8F42EE9641CA6A30AD5328F0B98B
          DF8C5ADA7E4BDC814CDE844EE0874FDD7D42DE7E40E28644E69154E79254E894
          55EA9856EFA157C76730AC5228EFB98BF0B98BF1BA8AF1BB8BF1BC8BF2BD8BE0
          8750DE7E3FEB9D57F4C08DF5C18DF5C18DF5C18DF5C18DC4652FBF7D5DAD5228
          AF5428B15629B3582AB65A2AF1BC8BDE844EDC7A3DE68E44BE602DC0612DC062
          2EC1622EC1632ED79977FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3582AF1BB8BDC
          814DDA763BE58B42BC5E2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB15629F1BA8BDB7F4BD8733AE38942B95C2BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5428F0BA8BDF
          8C5BDD834DE69453B65A2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFAD5228F0BA8BF0BA8BF0BA8BF0BA8BB3582AFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7D5DAC5228AD
          5328AE5428AF5529C4805FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 2
        OnClick = btnClienteAddClick
      end
      object edValorCliente: TCurrencyEdit
        Left = 380
        Top = 26
        Width = 100
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabOrder = 3
        OnKeyPress = SelectProximo
      end
      object DBGridEh2: TDBGridEh
        Left = 5
        Top = 55
        Width = 718
        Height = 315
        DataSource = dsClientePreco
        DynProps = <>
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 5
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'idcliente'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'nome'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'preco'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'edital'
            Footers = <>
            Title.Caption = 'Edital'
            Width = 64
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object BitBtn9: TBitBtn
        Left = 729
        Top = 55
        Width = 75
        Height = 25
        Caption = 'Remover'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FF6464B86464B86464B86464B86464B86464B86464B86464B86464B86464
          B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B8A7A7F6A7A7F6A7A7F6A7A7F6A7
          A7F6A7A7F6A7A7F6A7A7F6A7A7F6A7A7F66464B8FB00FFFB00FFFB00FFFB00FF
          6464B88181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181
          FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B86464B86464B864
          64B86464B86464B86464B86464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
        TabOrder = 6
        OnClick = BitBtn9Click
      end
      object DBEdit65: TDBEdit
        Left = 694
        Top = 26
        Width = 107
        Height = 21
        CharCase = ecUpperCase
        DataField = 'valor_varejo'
        DataSource = dsNavegacao
        Enabled = False
        ReadOnly = True
        TabOrder = 7
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object edEdital: TLabeledEdit
        Left = 490
        Top = 26
        Width = 90
        Height = 21
        EditLabel.Width = 26
        EditLabel.Height = 13
        EditLabel.Caption = 'Edital'
        TabOrder = 4
        OnKeyPress = edEditalKeyPress
      end
    end
    object tbsFoto: TTabSheet
      Caption = 'Foto'
      ImageIndex = 2
      TabVisible = False
      OnShow = tbsFotoShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label13: TLabel
        Left = 225
        Top = 215
        Width = 61
        Height = 13
        Caption = '270 x 190 px'
      end
      object pnFoto: TPanel
        Left = 4
        Top = 11
        Width = 282
        Height = 202
        BevelOuter = bvLowered
        BorderWidth = 5
        Caption = '(Foto)'
        TabOrder = 0
        object imgFoto: TImage
          Left = 6
          Top = 6
          Width = 270
          Height = 190
          Align = alClient
          AutoSize = True
          Center = True
          ExplicitLeft = 0
          ExplicitTop = 14
        end
      end
      object btnAbrirFoto: TBitBtn
        Left = 3
        Top = 217
        Width = 65
        Height = 25
        Hint = 'Localizar uma foto no computador'
        Caption = 'Abrir'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          37A3CA37A3CA37A3CA37A3CA37A3CA37A3CA37A3CA37A3CA37A3CA37A3CAFB00
          FFFB00FFFB00FFFB00FFFB00FF37A3CA37A3CAA2FFFFA2FFFFA2FFFFA2FFFFA2
          FFFFA2FFFFA2FFFFA2FFFFA2FFFF37A3CAFB00FFFB00FFFB00FFFB00FF37A3CA
          37A3CA8FF5FC69F2FB69F2FB69F2FB69F2FB69F2FB69F2FB69F2FB8FF5FC37A3
          CAFB00FFFB00FFFB00FFFB00FF37A3CA80EFFA37A3CA74E9F845E1F645E1F645
          E1F645E1F645E1F645E1F645E1F674E9F837A3CAFB00FFFB00FFFB00FF37A3CA
          74E9F837A3CA66E2F633D8F333D8F333D8F333D8F333D8F333D8F333D8F366E2
          F637A3CAFB00FFFB00FFFB00FF37A3CA6AE4F738DBF437A3CAA2FFFFA2FFFFA2
          FFFFA2FFFFA2FFFFA2FFFFA2FFFFA2FFFFA2FFFF37A3CAFB00FFFB00FF37A3CA
          66E2F633D8F333D8F337A3CA37A3CA37A3CA37A3CA37A3CA37A3CA37A3CA37A3
          CA37A3CAFB00FFFB00FFFB00FF37A3CA80EFFA55E9F855E9F880EFFA80EFFA80
          EFFA80EFFA80EFFA80EFFA80EFFA37A3CAFB00FFFB00FFFB00FFFB00FF37A3CA
          A2FFFFA2FFFFA2FFFF37A3CA37A3CA37A3CA37A3CA37A3CA37A3CA37A3CAFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FF37A3CA37A3CA37A3CAFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
        TabOrder = 1
        TabStop = False
        OnClick = btnAbrirFotoClick
      end
      object btnExcluirFoto: TBitBtn
        Left = 74
        Top = 217
        Width = 65
        Height = 25
        Hint = 'Apagar imagem'
        Caption = 'Apagar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B8FB00FFFB
          00FFFB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FF6464B89898EE9898EE6464B8FB00FFFB00FF6464B89898EE9898EE6464
          B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86060E36060E39C9CF164
          64B86464B89C9CF16060E36060E36464B8FB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FF6464B86666E86666E8A1A1F3A1A1F36666E86666E86464B8FB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86D6DED6D
          6DED6D6DED6D6DED6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FF6464B87373F37373F37373F37373F36464B8FB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B8B0B0FB7979F879
          79F87979F87979F8B0B0FB6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FF6464B8B3B3FD7E7EFC7E7EFC6464B86464B87E7EFC7E7EFCB3B3FD6464
          B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B88181FF8181FF6464B8FB
          00FFFB00FF6464B88181FF8181FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FF6464B86464B8FB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
        TabOrder = 2
        TabStop = False
        OnClick = btnExcluirFotoClick
      end
    end
    object tbsFornecedor: TTabSheet
      Caption = 'Fornecedores do Produto'
      ImageIndex = 1
      OnShow = tbsFornecedorShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label14: TLabel
          Left = 374
          Top = 9
          Width = 68
          Height = 13
          Caption = #218'ltima Compra'
        end
        object Label15: TLabel
          Left = 505
          Top = 8
          Width = 73
          Height = 13
          Caption = 'Pre'#231'o de Custo'
        end
        object LabeledEdit1: TLabeledEdit
          Left = 41
          Top = 26
          Width = 327
          Height = 22
          EditLabel.Width = 54
          EditLabel.Height = 13
          EditLabel.Caption = 'Fornecedor'
          ReadOnly = True
          TabOrder = 2
          OnKeyDown = LabeledEdit1KeyDown
        end
        object BitBtn3: TBitBtn
          Left = 643
          Top = 24
          Width = 75
          Height = 25
          Caption = 'Adicionar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD18A62C4652FC76730CA6A30CD6C31DC9265FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1632EF4BD86EE
            9C4FEE9641F19C47D06E32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC1622EF4BD87E8934FE98F41F29E49CF6E32FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0622EF4BD87E6
            8F4EE88B41F29E48CE6D31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC0612DF4BC86E68E4DE7893FF19C46CD6C31FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC4805FB3582AB65A2BB95C2BBC5E2CBE602DF3BC86E4
            8B4BE5863DEF9843CB6A30CD6C31CE6D31CF6E32D06E32D6804CAF5529F0B98A
            E69353E38740E38236E38232E99349E07E3AE38139ED943FEF9943F19C46F29E
            48F29E49F19D47CD6C31AE5428F0B98ADD834CD87339DA763ADB783ADC7736DB
            7433DE7835E38139E5863DE78940E88C41EA8F42EE9641CA6A30AD5328F0B98B
            DF8C5ADA7E4BDC814CDE844EE0874FDD7D42DE7E40E28644E69154E79254E894
            55EA9856EFA157C76730AC5228EFB98BF0B98BF1BA8AF1BB8BF1BC8BF2BD8BE0
            8750DE7E3FEB9D57F4C08DF5C18DF5C18DF5C18DF5C18DC4652FBF7D5DAD5228
            AF5428B15629B3582AB65A2AF1BC8BDE844EDC7A3DE68E44BE602DC0612DC062
            2EC1622EC1632ED79977FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3582AF1BB8BDC
            814DDA763BE58B42BC5E2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB15629F1BA8BDB7F4BD8733AE38942B95C2BFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5428F0BA8BDF
            8C5BDD834DE69453B65A2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAD5228F0BA8BF0BA8BF0BA8BF0BA8BB3582AFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7D5DAC5228AD
            5328AE5428AF5529C4805FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 1
          OnClick = BitBtn3Click
        end
        object DateEdit1: TDateEdit
          Left = 374
          Top = 26
          Width = 121
          Height = 22
          NumGlyphs = 2
          TabOrder = 3
        end
        object BitBtn4: TBitBtn
          Left = 5
          Top = 24
          Width = 30
          Height = 25
          Hint = 'Localizar'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = BitBtn4Click
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 505
          Top = 26
          Width = 100
          Height = 22
          Margins.Left = 1
          Margins.Top = 1
          TabOrder = 4
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 55
        Width = 637
        Height = 318
        Align = alLeft
        DataSource = dsFornec_produto
        DynProps = <>
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'idfornecedor'
            Footers = <>
            Width = 37
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'razao'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ultima_compra'
            Footers = <>
            Width = 95
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ultimo_valor'
            Footers = <>
            Width = 84
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object BitBtn5: TBitBtn
        Left = 643
        Top = 55
        Width = 75
        Height = 25
        Caption = 'Remover'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FF6464B86464B86464B86464B86464B86464B86464B86464B86464B86464
          B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B8A7A7F6A7A7F6A7A7F6A7A7F6A7
          A7F6A7A7F6A7A7F6A7A7F6A7A7F6A7A7F66464B8FB00FFFB00FFFB00FFFB00FF
          6464B88181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181FF8181
          FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B86464B86464B864
          64B86464B86464B86464B86464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
        TabOrder = 2
        OnClick = BitBtn5Click
      end
    end
    object tbsEstoque: TTabSheet
      Caption = 'Estoque'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label27: TLabel
        Left = 7
        Top = 50
        Width = 71
        Height = 13
        Caption = 'Qtde Empenho'
        FocusControl = DBEdit23
      end
      object Label28: TLabel
        Left = 165
        Top = 94
        Width = 71
        Height = 13
        Caption = #218'ltimo Balan'#231'o'
        FocusControl = DBEdit24
      end
      object Label29: TLabel
        Left = 165
        Top = 139
        Width = 81
        Height = 13
        Caption = 'Prazo Reposi'#231#227'o'
        FocusControl = DBEdit25
      end
      object Label31: TLabel
        Left = 326
        Top = 139
        Width = 95
        Height = 13
        Caption = 'Avisar reposi'#231#227'o em'
        FocusControl = DBEdit27
      end
      object Label32: TLabel
        Left = 7
        Top = 94
        Width = 93
        Height = 13
        Caption = 'Estoque - Empenho'
        FocusControl = DBEdit28
      end
      object Label33: TLabel
        Left = 165
        Top = 7
        Width = 67
        Height = 13
        Caption = #218'ltima compra'
        FocusControl = DBEdit29
      end
      object Label35: TLabel
        Left = 165
        Top = 50
        Width = 59
        Height = 13
        Caption = #218'ltima sa'#237'da'
        FocusControl = DBEdit23
      end
      object Label36: TLabel
        Left = 327
        Top = 7
        Width = 90
        Height = 13
        Caption = #218'ltima compra (R$)'
        FocusControl = DBEdit31
      end
      object Label37: TLabel
        Left = 327
        Top = 51
        Width = 133
        Height = 13
        Caption = 'R$ M'#233'dio '#250'ltimas 3 compras'
        FocusControl = DBEdit32
      end
      object Label30: TLabel
        Left = 327
        Top = 94
        Width = 97
        Height = 13
        Caption = 'Qtde '#218'ltimo Balan'#231'o'
        FocusControl = DBEdit26
      end
      object DBEdit23: TDBEdit
        Left = 7
        Top = 66
        Width = 134
        Height = 22
        DataField = 'qtde_empenho'
        DataSource = dsNavegacao
        TabOrder = 2
      end
      object DBEdit24: TDBEdit
        Left = 165
        Top = 110
        Width = 134
        Height = 22
        DataField = 'ultimo_balanco'
        DataSource = dsNavegacao
        TabOrder = 6
      end
      object DBEdit25: TDBEdit
        Left = 165
        Top = 155
        Width = 134
        Height = 22
        DataField = 'prazo_reposicao'
        DataSource = dsNavegacao
        TabOrder = 8
      end
      object DBEdit27: TDBEdit
        Left = 326
        Top = 155
        Width = 134
        Height = 22
        DataField = 'avisar_reposicao'
        DataSource = dsNavegacao
        TabOrder = 9
      end
      object DBEdit28: TDBEdit
        Left = 7
        Top = 110
        Width = 134
        Height = 22
        DataSource = dsNavegacao
        TabOrder = 5
      end
      object DBEdit29: TDBEdit
        Left = 165
        Top = 23
        Width = 134
        Height = 22
        DataSource = dsNavegacao
        TabOrder = 0
      end
      object DBEdit31: TDBEdit
        Left = 327
        Top = 23
        Width = 134
        Height = 22
        DataSource = dsNavegacao
        TabOrder = 1
      end
      object DBEdit32: TDBEdit
        Left = 327
        Top = 67
        Width = 134
        Height = 22
        DataSource = dsNavegacao
        TabOrder = 4
      end
      object DBEdit26: TDBEdit
        Left = 327
        Top = 110
        Width = 134
        Height = 22
        DataField = 'qtde_ultimo_balanco'
        DataSource = dsNavegacao
        TabOrder = 7
      end
      object DBEdit30: TDBEdit
        Left = 165
        Top = 66
        Width = 134
        Height = 22
        DataSource = dsNavegacao
        TabOrder = 3
      end
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsProduto
  end
  inherited ActionList1: TActionList
    Left = 615
    Top = 304
  end
  inherited dsPesquisa: TDataSource
    Left = 160
    Top = 288
  end
  object dsCategoria: TDataSource
    DataSet = DM.cdsCategoria
    Left = 552
    Top = 256
  end
  object OpenPictureDialog: TOpenPictureDialog
    Title = 'Selecionar Foto'
    Left = 744
    Top = 288
  end
  object dsFornec_produto: TDataSource
    DataSet = DM.qrfornecedor_produto
    Left = 464
    Top = 240
  end
  object dsClientePreco: TDataSource
    DataSet = DM.qrClientePreco
    Left = 272
    Top = 216
  end
end
