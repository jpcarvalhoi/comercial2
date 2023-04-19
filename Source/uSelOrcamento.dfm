inherited FormSelOrcamento: TFormSelOrcamento
  Caption = 'Or'#231'amentos / Pedido de Venda'
  ClientHeight = 573
  ClientWidth = 1055
  OnClose = FormClose
  ExplicitWidth = 1071
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFiltros: TPanel
    Width = 1055
    Height = 84
    ExplicitWidth = 1055
    ExplicitHeight = 84
    object sbtnLocalizar: TSpeedButton
      Left = 825
      Top = 32
      Width = 23
      Height = 22
      Hint = 'Localizar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAAAAA
        AAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFAAAAAAF8F8F8F9F9F9AAAAAAFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAF8F8F8E3E3E3ECEC
        ECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DBA945DBA
        945DAAAAAAF8F8F8E3E3E3ECECECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFBA945DFCEED8FCEED8FCEED8FCEED8BA945DE3E3E3ECECECAAAAAAFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF8E7D1F0C694F0C694F0C694F0
        C694F8E7D1BA945DAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        F7E4CFEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FF7E4CFBA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DF8E6D1EFC492EFC492EFC492EFC492EF
        C492EFC492F8E6D1BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        FAE9D3F3CC98F3CC98F3CC98F3CC98F3CC98F3CC98FAE9D3BA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DFCEDD7F8D6A1F8D6A1F8D6A1F8D6A1F8
        D6A1F8D6A1FCEDD7BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        BA945DFEF1DAFCDFA8FCDFA8FCDFA8FCDFA8FEF1DABA945DFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DFFF4DCFFF4DCFFF4DCFF
        F4DCBA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFBA945DBA945DBA945DBA945DFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbtnLocalizarClick
    end
    object edNota: TLabeledEdit
      Left = 9
      Top = 32
      Width = 97
      Height = 21
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' Or'#231'amento'
      TabOrder = 0
      OnKeyPress = edNotaKeyPress
    end
    object edCliente: TLabeledEdit
      Left = 501
      Top = 32
      Width = 321
      Height = 21
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Cliente'
      ReadOnly = True
      TabOrder = 1
      OnKeyDown = edClienteKeyDown
      OnKeyPress = edNotaKeyPress
    end
    object BitBtn4: TBitBtn
      Left = 945
      Top = 53
      Width = 101
      Height = 25
      Action = actPesquisar
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar (F3)'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAAAAA
        AAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFAAAAAAF8F8F8F9F9F9AAAAAAFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFAAAAAAF8F8F8E3E3E3ECEC
        ECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DBA945DBA945DBA
        945DAAAAAAF8F8F8E3E3E3ECECECAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFBA945DFCEED8FCEED8FCEED8FCEED8BA945DE3E3E3ECECECAAAAAAFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF8E7D1F0C694F0C694F0C694F0
        C694F8E7D1BA945DAAAAAAFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        F7E4CFEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FEDBF8FF7E4CFBA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DF8E6D1EFC492EFC492EFC492EFC492EF
        C492EFC492F8E6D1BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945D
        FAE9D3F3CC98F3CC98F3CC98F3CC98F3CC98F3CC98FAE9D3BA945DFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFBA945DFCEDD7F8D6A1F8D6A1F8D6A1F8D6A1F8
        D6A1F8D6A1FCEDD7BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        BA945DFEF1DAFCDFA8FCDFA8FCDFA8FCDFA8FEF1DABA945DFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DFFF4DCFFF4DCFFF4DCFF
        F4DCBA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFBA945DBA945DBA945DBA945DFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 112
      Top = 1
      Width = 377
      Height = 57
      Caption = 'Per'#237'odo'
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label3: TLabel
        Left = 160
        Top = 16
        Width = 27
        Height = 13
        Caption = 'In'#237'cio'
      end
      object Label4: TLabel
        Left = 270
        Top = 16
        Width = 16
        Height = 13
        Caption = 'Fim'
      end
      object cbData: TComboBox
        Left = 8
        Top = 31
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 0
        Text = 'Data de lan'#231'amento'
        OnChange = cbDataChange
        Items.Strings = (
          'N'#227'o filtrar por data'
          'Data de lan'#231'amento'
          'Data de validade'
          'Finalizado em')
      end
      object edDtIni: TDateEdit
        Left = 160
        Top = 31
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnKeyPress = edNotaKeyPress
      end
      object edDFim: TDateEdit
        Left = 270
        Top = 31
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
        OnKeyPress = edNotaKeyPress
      end
    end
    object ckFinalizados: TCheckBox
      Left = 9
      Top = 59
      Width = 184
      Height = 17
      Caption = 'N'#227'o exibir or'#231'amentos finalizados.'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  inherited DBGridPesquisa: TDBGrid
    Left = 743
    Top = 161
    Width = 105
    Height = 48
    Align = alCustom
    Visible = False
  end
  inherited pnlPrincipal: TPanel
    Width = 1055
    ExplicitWidth = 1055
    inherited btnPrimeiro: TBitBtn
      Left = 680
      ExplicitLeft = 680
    end
    inherited btnAnterior: TBitBtn
      Left = 754
      ExplicitLeft = 754
    end
    inherited btnProximo: TBitBtn
      Left = 828
      ExplicitLeft = 828
    end
    inherited btnUltimo: TBitBtn
      Left = 902
      ExplicitLeft = 902
    end
    inherited btnNovo: TBitBtn
      OnClick = btnNovoClick
    end
    inherited btnExcluir: TBitBtn
      Action = actExcluir
    end
    inherited btnFechar: TBitBtn
      Left = 976
      ExplicitLeft = 976
    end
    object btnImprimir: TBitBtn
      Left = 606
      Top = 3
      Width = 75
      Height = 55
      Anchors = [akTop, akRight]
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
    object BitBtn5: TBitBtn
      Left = 225
      Top = 3
      Width = 75
      Height = 55
      Caption = 'Conf. Venda'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFBFBEBEBEAE8E7E6F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF1F1F0EAE9E8EBEAE9E9E9E7DBDAD9E5E4E4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAE9
        E9EDECEBE7E6E5E5E4E3E5E4E3E6E5E4E4E3E1D6D6D5F5F5F5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF0F0F0EBEAE9EAE9
        E8E4E3E2E4E3E2E3E2E1E3E2E1E3E2E0E2E1DFE6E5E4D9D8D7E1E0E0FDFDFDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EBEBEAEBEAE9E3E2E1E3E2
        E1E2E1E0E2E1DFE2E1DFE2E1DFE1E0DFE0DFDEE1E0DFD8D7D6E2E1E0D4D4D3F0
        F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDE9E9E8E6E5E3E2E1DFE2E1DFE1E0
        DFE1E0DEE0DFDEDFDEDDDFDEDCE0DFDEC8C7C5908F8B6F6E6BABAAA6DFDEDDCB
        CBDAD8D8D9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6F6F6E8E8E7EAE9E8E1E0DEE0DFDEE0DFDDDFDEDDDFDE
        DCDEDDDBDEDDDBDFDEDCD6D5D2999896ABAAA8A1A09C908F8F6463946261BEAA
        A9C8E1E0DFD0D0CEEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDEEEEEDE8E7E7E2E1DFDFDEDCDFDEDCDEDDDCDEDDDBDDDCDBDDDC
        DADFDEDDD8D7D5A2A19F979693A8A7A38E8D8D7574AB6362D17676BA82818571
        706C92918ECCCBC9D4D4D1D7D7D6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F5F5F5E9E8E8E4E4E2DEDDDBDEDDDBDDDCDADCDBD9DBDAD9DBDAD8DDDCDAD3D2
        D0AAA9A6787773A7A6A29594936E6DA24948CA5555A764636D84837F9E9D9B95
        94918A8986BDBBB8D0CECCD3D2CFCDCCCBE5E4E4FEFEFEFFFFFFFFFFFFEFEEEE
        E7E7E6DEDDDBDCDBDADCDBD9DBDAD8DAD9D8DAD9D7DAD9D7D9D8D6A1A09DA09F
        9C9695919998965D5C883A3AC14A4AAF64637260605C6A69677D7C7A979693C6
        C5C3D0CECCCCCBC9CBCAC8CBC9C6CBCAC7CECCC9DAD9D8FDFDFDFFFFFFF6F7F6
        E4E3E1DBDAD8DAD9D7DAD9D7D9D8D6D8D7D5D7D6D4C4C3C17C7B7783827F7F7E
        7972718B5554CA4948B364637754524E5353506C6B696E6D6B939290BBBAB8C5
        C4C1C9C7C4C8C7C4C7C6C3C7C5C3CCCAC8D3D2D0EBEBEBFDFDFDFFFFFFFFFFFF
        FFFFFFF6F6F6E6E5E4D7D6D4D6D5D3BFBEBCADACAA93928FA2A19E8F8E985150
        A45352B17373876766616D6C6A67666475747281807E8C8B8A8F8E8D9D9C9AAD
        ACAABBB9B7C3C1BFCBC9C7D7D5D4EBEAEAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFBEAE9E8BFBEBB99989499989B8B8AB47474B18F8D
        9A9C9B9571706C7E7D7A8E8D8AB2B1AFA7A5A39696938E8D8B8D8C8A8F8E8C9A
        9897A8A7A5C1C0BFD2D2D2E8E8E8F5F5F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF1F0EFC4C3D59A989F94938F9E9C
        9992918DB5B3B0C7C6C3B6B5B26F6D6A807F7CB4B2B0A2A09E9C9B98AAAAA8BD
        BDBCC9C8C8C7C7C7CBCBCBD5D5D5E6E6E6F5F5F5FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEF6F5F4D9D8D7B3B1
        AFC8C6C4AEADAB6564623C3B386D6C6873716D706E6BD7D7D5E9E9E9F7F7F7E9
        E9E9DADADAD4D4D4D5D5D5DBDBDBE4E4E4F0F0F0F9F9F9FEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7D7
        D66A69673E3E3A757370A8A6A2B4B2AE9A9894A5A4A2FEFEFEFFFFFFFFFFFFFD
        FDFDF7F7F7F0F0F0EAEAEAEAEAEAEEEEEEF3F3F3F9F9F9FDFDFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9494934847
        447F7D79ADABA6B6B4AFBCBAB6BAB8B4999793C8C7C5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFDFDFDFBFBFBF9F9F9F9F9F9FAFAFAFCFCFCFEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBDBBB1B0
        ABB6B4B0BEBCB8BDBBB7B3B1AC9C9B9792918DE9E8E7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0F0BDBC
        B7C3C1BDBAB9B4B9B7B2B6B4AFA5A39FB9B8B6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED2D1
        CECECCC6D0CEC8C3BFBBB6B4AFA9A7A492918ED0D0CFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3
        F2D8D6D194A5CB88B6EDBFBBB5AEACA7B3B2AF535250F8F8F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE3E2DFD1D2D4C0C7D9D0CEC8B5B3AEB1AFAD9A9A97E8E8E7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFBFBE3E1DEE1DFDADEDCD7C9C7C2B1AFABBAB9B6D3D2D0EBEBEAFCFCFCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFDFCE7E6E3E0DED9DDDBD6CAC8C3B5B2AEB5B4B0C0BFBCCECECCE1
        E1DFF7F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF0EFEEDFDDD9DEDCD7D2D0CBBCBAB6B2B1ACB2B0ACBA
        B9B6C6C6C4DCDCDAF5F5F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F9E5E3E0DDDCD7DAD8D3CCCAC5BAB8B3B3
        B1ADAFAEA9B6B5B1C9C8C7E3E2E1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF1F0EEE0DED9DEDCD7D9D6D2CB
        C9C4BCBAB4B3B1ADAEADA9BEBDBAD8D7D6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFAE9E7E4DFDDD8DE
        DCD7D8D6D1C7C5C0B7B5B0AEACA8B5B4B1E5E5E4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F4E4
        E3E0DCDAD6D7D5D1CAC8C3B3B1AC9C9A96CECDCCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F8F7EBEAE8D7D6D3C5C4C0C3C2C0F6F6F5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BitBtn5Click
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 554
    Width = 1055
    ExplicitTop = 554
    ExplicitWidth = 1055
  end
  inherited pnSelecionar: TPanel
    Top = 513
    Width = 1055
    ExplicitTop = 513
    ExplicitWidth = 1055
    inherited BitBtn2: TBitBtn
      Left = 903
      ExplicitLeft = 903
    end
    inherited BitBtn3: TBitBtn
      Left = 795
      ExplicitLeft = 795
    end
  end
  object DBGridEhSelOrcamento: TDBGridEh [5]
    Left = 0
    Top = 145
    Width = 1055
    Height = 368
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
    OnDblClick = DBGridEhSelOrcamentoDblClick
    OnGetCellParams = DBGridEhSelOrcamentoGetCellParams
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'numnota'
        Footers = <>
        Title.TitleButton = True
        Width = 79
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'datanota'
        Footers = <>
        Title.TitleButton = True
        Width = 91
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'datalancamento'
        Footers = <>
        Title.TitleButton = True
        Width = 120
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nome'
        Footers = <>
        Title.TitleButton = True
        Width = 275
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'telefone'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'celular'
        Footers = <>
        Title.TitleButton = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nomeusuario'
        Footers = <>
        Title.TitleButton = True
        Width = 151
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'finalizado_em'
        Footers = <>
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited ActionList: TActionList
    inherited actIncluir: TAction
      OnExecute = actIncluirExecute
    end
    inherited actExcluir: TAction
      OnExecute = actExcluirExecute
    end
    inherited actAlterar: TAction
      OnExecute = actAlterarExecute
    end
    object actPesquisar: TAction
      Caption = 'Pesquisar (F3)'
      ShortCut = 114
      OnExecute = actPesquisarExecute
    end
  end
  inherited qrPesquisa: TZQuery
    SQL.Strings = (
      
        'SELECT o.idnota, o.datanota, o.datalancamento, o.numnota, o.idcl' +
        'iente, c.nome, c.telefone, c.celular, u.nome as nomeusuario,'
      'o.finalizado_em FROM tbnota o'
      'inner join tbusuario u on o.usuario = u.idtbusuario'
      'left join tbcliente c on o.idcliente = c.codcliente'
      'where tipo_nota = '#39'O'#39)
    Left = 416
    Top = 256
  end
  inherited dspPesquisa: TDataSetProvider
    Left = 432
    Top = 280
  end
  inherited cdsPesquisa: TClientDataSet
    Left = 456
    Top = 304
    object cdsPesquisaidnota: TIntegerField
      FieldName = 'idnota'
      Required = True
    end
    object cdsPesquisanumnota: TIntegerField
      DisplayLabel = 'N'#186' Or'#231'amento'
      FieldName = 'numnota'
    end
    object cdsPesquisadatanota: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'datanota'
    end
    object cdsPesquisadatalancamento: TDateTimeField
      DisplayLabel = 'Dt. Lan'#231'amento'
      FieldName = 'datalancamento'
    end
    object cdsPesquisaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsPesquisanome: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object cdsPesquisatelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 15
    end
    object cdsPesquisacelular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      Size = 15
    end
    object cdsPesquisanomeusuario: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'nomeusuario'
      Required = True
      Size = 45
    end
    object cdsPesquisafinalizado_em: TDateField
      DisplayLabel = 'Finalizado em'
      FieldName = 'finalizado_em'
    end
  end
  inherited dsPesquisa: TDataSource
    OnDataChange = dsPesquisaDataChange
    Left = 304
    Top = 248
  end
end