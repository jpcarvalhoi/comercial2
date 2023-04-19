inherited formCadCliente: TformCadCliente
  Left = 509
  Top = 61
  Caption = 'Cadastro de Clientes'
  ClientHeight = 625
  ClientWidth = 770
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 776
  ExplicitHeight = 654
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 770
    ExplicitWidth = 770
    inherited btnPrimeiro: TBitBtn
      Left = 321
      Visible = False
      ExplicitLeft = 321
    end
    inherited btnAnterior: TBitBtn
      Left = 395
      Visible = False
      ExplicitLeft = 395
    end
    inherited btnProximo: TBitBtn
      Left = 469
      TabOrder = 7
      Visible = False
      ExplicitLeft = 469
    end
    inherited btnUltimo: TBitBtn
      Left = 543
      TabOrder = 8
      Visible = False
      ExplicitLeft = 543
    end
    inherited btnLocalizar: TBitBtn
      Left = 460
      TabOrder = 6
      Visible = False
      ExplicitLeft = 460
    end
    inherited btnFechar: TBitBtn
      Left = 691
      TabOrder = 10
      ExplicitLeft = 691
    end
    object BitBtn2: TBitBtn
      Left = 617
      Top = 3
      Width = 75
      Height = 55
      Caption = 'Cheques'
      DoubleBuffered = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000D6090000D60900000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE7EFF57FB7D571B4DAC0EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF4F8
        6CB2D945B3DE25A7D71E9FD23197CE3DC1FFC0EBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        3CAAE14693B5AAAFB6FAB8A590A5B5228BC400B1FF3FC4FFC0EBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        47AADA859BA5CDB9B5FEB9A5FEBFA7DAB6A93C8EBC00B4FF00B4FF3FC6FFC0EC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        48AEDB869DA7D2BCB6FEBAA5FEC0A7FEC5A9D5B8AA5696B800B8FF00B7FF00B6
        FF3FC7FFC0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        49B1DC89A0A9D3BDB8FEBAA5FABDA4FCC4A8FECBACD0BCAB5396B700BBFF00B9
        FF00B8FF00B7FF3FC7FFC0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        4AB4DD8DA5ADD6C0BBFEBAA5F5B9A1F4BEA3F8C7A8FDD1AECBBEAD5095B600BD
        FF00BCFF00BAFF00B9FF00B7FF3FC7FFC0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        4BB8DE91A9B1D9C3BEFEBAA5F2B79FF1BCA1F4C4A5F6CBAAF9D4AEBFBCAD4E96
        B600C0FF00BEFF00BCFF00BAFF00B8FF00B6FF3FC6FFC0EBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        4CBADF94AEB5DCC5C0FEBAA5F0B59EEEB9A0F2C2A4F3C9A7F5D0ABF6D7AD86AD
        B0278CB800C2FF00C0FF00BDFF00BBFF00B9FF00B6FF00B3FF5ACCFFF9FDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        4DBDE099B2B9DFC8C3FEB9A5EEB39DECB89EEFC0A2F1C7A6F3CFA9F5D6AEC2D4
        BA2AB3D11FA2CD09C1F800C1FF00BEFF00BCFF00B9FF00B6FF00B3FF54CAFFF9
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        4EC1E19DB7BEE1CAC5FEB8A4EDB29CEAB59CEDBDA1EFC5A4F0CCA7F2D4ABC2D4
        BA35DEEB0BD3F420B3DD33B3D811C3F800BFFF00BCFF00B9FF00B6FF00B3FF54
        C9FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        4FC4E2A1BCC2E3CDC8FEB8A4EBB09AE6B299EBBB9EEDC3A2EECAA6F0D1A9C2D4
        BA35DEEB00E2FF00E2FF66C5CA6EBAC957BDD611C0FA00BBFF00B9FF00B5FF00
        B2FF54C9FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        50C7E3A5C0C6E6CFCBFEB6A3E9AD98E4B097E9B89DEABFA0ECC7A4EECEA8C2D2
        B935DDEB00E2FF00E2FF76D1C9FEFBC0D0E1C06EB9D357BEE611BDFC00B8FF00
        B4FF00B1FF54C8FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        51CBE4AAC5CAE9D2CDFEB5A3E7AA96E2AC96E6B59AE8BC9EEAC3A2EBCAA5C4D2
        B83DCFDC08E2FD00E2FF76CFC8FEF9BFFCF3BBFBF5DCD1E9F46EBCDD57BDE611
        B8FC00B3FF00AFFF54C7FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        52CDE5AEC9CEECD4D0FEB3A2E4A794E0AA94E4B299E6B99CE7C09FE9C7A2FADC
        B1BFD3BA3DB5C72CD1E364C6C8FDF4BCF8EEB9FAF3DBFFFFFFFFFFFFD1E9F46E
        BCDD57BCE611B5FC00ADFF54C5FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFD6E4EE
        53D1E6B2CED2EED5D2FEB1A1E3A593DDA590E2AE96E4B59AE5BC9DE7C3A0E6C7
        A2F2D7ACFAE3B4BFD9BD7BC5C0F8ECB8F3E6B4F6EED8FFFFFFFFFFFFFFFFFFFF
        FFFFD1E9F46EBCDD57BAE611AFFC54C4FFF9FDFFFFFFFFFFFFFFFFFFFFD6E4EE
        54D4E7B6D3D6F2D8D5FEAFA1F8B29FE3A894E0AB94E1B198E3B89BE5BF9EE3C3
        9FE8CCA4E9D1A7EED9ACF5E4B4F4E4B4EDDEB0F2EAD4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD1E9F46EBBDD57B8E660C5FCF9FDFFFFFFFFFFFFFFD6E4EE
        55D6E8BAD7DAF2DCDAFEAEA0FEB4A2FEBAA5F8BBA3E5B399E1B598E2BA9BE1BF
        9DE6C7A2E6CCA4E4CEA5E1CEA4EDDBAFE5D5ABEEE5D0FFFFFFFFFFFFFFFFFFED
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFD1E9F46EBBDD8ACAE9FFFFFFFFFFFFD6E4EE
        4FDCEEAEE4E9EBEBEBF8E9E7FECAC0FEB8A4FEBEA6FEC3A9F8C4A7ECC0A1DEB9
        99E2C19EE1C49FDDC59FD9C49EE5D1A9DAC8A4E6DCCAFFFFFFFFFFFF81D9FF18
        B7FFD8F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F9FCFFFFFFFFFFFFF7FAFC
        9FE3F144E2F366E9F1C1EBEDEDEDEDF7EAE7FCD1C3FEC0A7FEC6AAFECCACF6CA
        A8E7C3A1DABC9BD6BB99D0BA98DBC6A3CBBA9BDCD2C1FFFFFF81DCFF00B7FF00
        C1FF15B9FFD8F2FFFFFFFFFFFFFFFFFFFFEAF7FFC0E7FFFFFFFFFFFFFFFFFFFF
        FFFFFFF3F9FC9EE6F343E4F45FEAF2BEEBEFEDEDEDF4E9E5FBD5C5FDC7AAF9CA
        AAF4CAAAE8C6A5D7BA9ADAC9B3DFD0B5D2C2A7D9CEBE7EDFFF00BCFF00CAFF00
        CBFF00C6FF15B9FFD8F2FFFFFFFFEAF8FF2DB3FF96D7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF3F9FC9EE6F341E4F459E8F3B9EAEEEEEEEEF0E8E4F5D4
        C1EEC3A5E6C1A3DCBDA0F5EAD3F1E0BFD8C6AB7EE2FF00C2FF00CFFF00D1FF00
        CEFF00CBFF00C6FF15B8FFC3EBFF2DB7FF00AAFF93D8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F9FC9EE5F33FE0F554E3F2ADE8F0EDED
        EDEBE3DEE4CAB8CEB098E9D8B9DACAB4E1E1E17EE3FF00CCFF00D7FF00D3FF00
        D0FF00CEFF00CBFF00C6FF00B1FF00B1FF00BEFF93D9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F9FC83C8E009DFFB4DDA
        F0A8E6F1EDEFEFE3DDD8DFD5CAE8E8E8E4E4E4FFFFFF7EE2FF00CEFF00D6FF00
        D3FF00D0FF00CDFF00CAFF00C7FF00C5FF00C2FF93DAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7EFF54BBADB31A4
        B51CBBD648D5F0A4E5F2EAEDEEE9E9E9E6E7E7FFFFFFFFFFFF7BE1FF00CEFF00
        D6FF00D3FF00D0FF00CDFF00CAFF00C7FF00C4FF93DBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6DBEB4BD3
        EF21B4CE369AAE1AB6D841CEF09CE3F798DEF3FFFFFFFFFFFFFFFFFF7BE1FF00
        CEFF00D5FF00D2FF00D0FF00CDFF00CAFF00C6FF93DDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC
        FDAAE2F34BCFEF1FB0D0329AB318B1DB78E0FEFFFFFFFFFFFFFFFFFFEAFAFF18
        CAFF00D3FF00D5FF00D2FF00CFFF00CCFF00C9FF93DEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF8FCFDAAE1F34BCBEF1DABD378DDFBFFFFFFFFFFFFEAFBFF2DD3FF00
        CCFF00DAFF00D8FF00D5FF00D2FF00CFFF00CCFF93DFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF8FCFDAAE0F3B1EBFEFFFFFFEAFBFF2DD8FF00D0FF00
        DBFF00D9FF00D6FF00D3FF00CFFF00CCFF00CAFF93E0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4FBFFCCF6FFCCF6FFCC
        F5FFCCF4FFCCF4FFCCF3FFCCF2FFCCF2FFCCF1FFEAF9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentDoubleBuffered = False
      TabOrder = 9
      Visible = False
      OnClick = BitBtn2Click
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 606
    Width = 770
    ExplicitTop = 606
    ExplicitWidth = 770
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 61
    Width = 770
    Height = 545
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#245'es Gerais'
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 57
        Height = 13
        Caption = 'C'#243'd. Cliente'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 155
        Top = 3
        Width = 35
        Height = 13
        Caption = 'Apelido'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 483
        Top = 3
        Width = 52
        Height = 13
        Caption = 'CPF/CNPJ'
        FocusControl = DBEdit3
      end
      object Label8: TLabel
        Left = 3
        Top = 343
        Width = 51
        Height = 13
        Caption = 'Telefone 1'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 122
        Top = 343
        Width = 51
        Height = 13
        Caption = 'Telefone 2'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 384
        Top = 42
        Width = 85
        Height = 13
        Caption = 'RG/Inscri'#231#227'o Est.'
        FocusControl = DBEdit10
      end
      object Label12: TLabel
        Left = 243
        Top = 343
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 638
        Top = 212
        Width = 69
        Height = 13
        Caption = 'Dt. Anivers'#225'rio'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 638
        Top = 131
        Width = 59
        Height = 13
        Caption = 'Dt. Cadastro'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 638
        Top = 170
        Width = 62
        Height = 13
        Caption = 'Dt. Altera'#231#227'o'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 638
        Top = 254
        Width = 32
        Height = 13
        Caption = 'Sal'#225'rio'
        FocusControl = DBEdit16
      end
      object Label22: TLabel
        Left = 82
        Top = 42
        Width = 70
        Height = 13
        Caption = 'Nome/ Raz'#227'o '
        FocusControl = DBEdit21
      end
      object Label23: TLabel
        Left = 504
        Top = 42
        Width = 91
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = DBEdit22
      end
      object Label35: TLabel
        Left = 638
        Top = 299
        Width = 42
        Height = 13
        Caption = 'Situa'#231#227'o'
        FocusControl = DBEdit34
      end
      object Label36: TLabel
        Left = 638
        Top = 341
        Width = 32
        Height = 13
        Caption = 'Motivo'
        FocusControl = DBEdit35
      end
      object Label37: TLabel
        Left = 638
        Top = 386
        Width = 77
        Height = 13
        Caption = 'Tipo Sangu'#237'neo'
        FocusControl = DBEdit36
      end
      object Label38: TLabel
        Left = 638
        Top = 429
        Width = 55
        Height = 13
        Caption = 'Certificados'
        FocusControl = DBEdit37
      end
      object Label56: TLabel
        Left = 73
        Top = 3
        Width = 51
        Height = 13
        Caption = 'C'#243'd. Garra'
        FocusControl = DBEdit55
      end
      object Label57: TLabel
        Left = 3
        Top = 42
        Width = 45
        Height = 13
        Caption = 'Matr'#237'cula'
        FocusControl = DBEdit56
      end
      object Label58: TLabel
        Left = 3
        Top = 85
        Width = 45
        Height = 13
        Caption = 'Prefeitura'
        FocusControl = DBEdit56
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 19
        Width = 60
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'codcliente'
        DataSource = dsNavegacao
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 155
        Top = 19
        Width = 320
        Height = 21
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dsNavegacao
        TabOrder = 2
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit3: TDBEdit
        Left = 483
        Top = 19
        Width = 135
        Height = 21
        CharCase = ecUpperCase
        DataField = 'documento'
        DataSource = dsNavegacao
        TabOrder = 3
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit8: TDBEdit
        Left = 3
        Top = 359
        Width = 110
        Height = 21
        CharCase = ecUpperCase
        DataField = 'telefone'
        DataSource = dsNavegacao
        TabOrder = 14
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit9: TDBEdit
        Left = 122
        Top = 359
        Width = 110
        Height = 21
        CharCase = ecUpperCase
        DataField = 'celular'
        DataSource = dsNavegacao
        TabOrder = 15
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit10: TDBEdit
        Left = 384
        Top = 58
        Width = 114
        Height = 21
        CharCase = ecUpperCase
        DataField = 'rg'
        DataSource = dsNavegacao
        TabOrder = 8
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit12: TDBEdit
        Left = 243
        Top = 359
        Width = 230
        Height = 21
        CharCase = ecLowerCase
        DataField = 'email'
        DataSource = dsNavegacao
        TabOrder = 16
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit13: TDBEdit
        Left = 638
        Top = 228
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        DataField = 'dtaniversario'
        DataSource = dsNavegacao
        TabOrder = 19
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit14: TDBEdit
        Left = 638
        Top = 147
        Width = 120
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'dtcadastro'
        DataSource = dsNavegacao
        TabOrder = 11
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit15: TDBEdit
        Left = 638
        Top = 186
        Width = 120
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'dtalteracao'
        DataSource = dsNavegacao
        TabOrder = 12
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit16: TDBEdit
        Left = 638
        Top = 270
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'salario'
        DataSource = dsNavegacao
        TabOrder = 20
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit21: TDBEdit
        Left = 82
        Top = 58
        Width = 295
        Height = 21
        CharCase = ecUpperCase
        DataField = 'fantasia'
        DataSource = dsNavegacao
        TabOrder = 6
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit22: TDBEdit
        Left = 504
        Top = 58
        Width = 114
        Height = 21
        CharCase = ecUpperCase
        DataField = 'inscricao_municipal'
        DataSource = dsNavegacao
        TabOrder = 9
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 128
        Width = 614
        Height = 100
        Caption = 'Endere'#231'o entrega '
        TabOrder = 10
        object Label4: TLabel
          Left = 8
          Top = 14
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 8
          Top = 54
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 178
          Top = 54
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 421
          Top = 54
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit7
        end
        object Label11: TLabel
          Left = 495
          Top = 14
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit11
        end
        object Label24: TLabel
          Left = 462
          Top = 54
          Width = 52
          Height = 13
          Caption = 'Refer'#234'ncia'
          FocusControl = DBEdit23
        end
        object Label52: TLabel
          Left = 343
          Top = 14
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit51
        end
        object Label53: TLabel
          Left = 403
          Top = 14
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit52
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 30
          Width = 330
          Height = 21
          CharCase = ecUpperCase
          DataField = 'endereco'
          DataSource = dsNavegacao
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 70
          Width = 164
          Height = 21
          CharCase = ecUpperCase
          DataField = 'bairro'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit6: TDBEdit
          Left = 178
          Top = 70
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cidade'
          DataSource = dsNavegacao
          TabOrder = 5
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit7: TDBEdit
          Left = 421
          Top = 70
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'uf'
          DataSource = dsNavegacao
          TabOrder = 6
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit11: TDBEdit
          Left = 495
          Top = 30
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cep'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit23: TDBEdit
          Left = 462
          Top = 70
          Width = 141
          Height = 21
          CharCase = ecUpperCase
          DataField = 'referencia'
          DataSource = dsNavegacao
          TabOrder = 7
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit51: TDBEdit
          Left = 343
          Top = 30
          Width = 54
          Height = 21
          CharCase = ecUpperCase
          DataField = 'numero'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit52: TDBEdit
          Left = 403
          Top = 30
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          DataField = 'complemento'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 231
        Width = 614
        Height = 108
        Caption = 'Endere'#231'o faturamento '
        TabOrder = 13
        object Label25: TLabel
          Left = 8
          Top = 20
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit24
        end
        object Label26: TLabel
          Left = 8
          Top = 60
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit25
        end
        object Label27: TLabel
          Left = 178
          Top = 60
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit26
        end
        object Label28: TLabel
          Left = 421
          Top = 60
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit27
        end
        object Label29: TLabel
          Left = 495
          Top = 20
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit28
        end
        object Label30: TLabel
          Left = 462
          Top = 60
          Width = 52
          Height = 13
          Caption = 'Refer'#234'ncia'
          FocusControl = DBEdit29
        end
        object Label54: TLabel
          Left = 343
          Top = 20
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit53
        end
        object Label55: TLabel
          Left = 403
          Top = 20
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit54
        end
        object DBEdit24: TDBEdit
          Left = 8
          Top = 36
          Width = 330
          Height = 21
          CharCase = ecUpperCase
          DataField = 'endereco_fat'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit25: TDBEdit
          Left = 8
          Top = 76
          Width = 164
          Height = 21
          CharCase = ecUpperCase
          DataField = 'bairro_fat'
          DataSource = dsNavegacao
          TabOrder = 5
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit26: TDBEdit
          Left = 178
          Top = 76
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cidade_fat'
          DataSource = dsNavegacao
          TabOrder = 6
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit27: TDBEdit
          Left = 421
          Top = 76
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'uf_fat'
          DataSource = dsNavegacao
          TabOrder = 7
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit28: TDBEdit
          Left = 495
          Top = 36
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cep_fat'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit29: TDBEdit
          Left = 462
          Top = 76
          Width = 141
          Height = 21
          CharCase = ecUpperCase
          DataField = 'referencia_fat'
          DataSource = dsNavegacao
          TabOrder = 8
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object BitBtn6: TBitBtn
          Left = 189
          Top = 10
          Width = 149
          Height = 20
          Caption = 'Utilizar endere'#231'o de Entrega'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BitBtn6Click
        end
        object DBEdit53: TDBEdit
          Left = 343
          Top = 36
          Width = 54
          Height = 21
          CharCase = ecUpperCase
          DataField = 'numero_fat'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit54: TDBEdit
          Left = 403
          Top = 36
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          DataField = 'complemento_fat'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
      object DBEdit34: TDBEdit
        Left = 638
        Top = 315
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'situacao'
        DataSource = dsNavegacao
        TabOrder = 21
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit35: TDBEdit
        Left = 638
        Top = 357
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'motivo'
        DataSource = dsNavegacao
        TabOrder = 22
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit36: TDBEdit
        Left = 638
        Top = 402
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'status_abo'
        DataSource = dsNavegacao
        TabOrder = 24
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit37: TDBEdit
        Left = 638
        Top = 445
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'certificados'
        DataSource = dsNavegacao
        TabOrder = 25
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 386
        Width = 596
        Height = 57
        Caption = 'Contato Compras '
        TabOrder = 17
        object Label18: TLabel
          Left = 5
          Top = 16
          Width = 68
          Height = 13
          Caption = 'Nome Contato'
          FocusControl = DBEdit17
        end
        object Label19: TLabel
          Left = 148
          Top = 16
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit18
        end
        object Label20: TLabel
          Left = 248
          Top = 16
          Width = 32
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit19
        end
        object Label21: TLabel
          Left = 348
          Top = 16
          Width = 27
          Height = 13
          Caption = 'e-mail'
          FocusControl = DBEdit20
        end
        object DBEdit17: TDBEdit
          Left = 5
          Top = 32
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nome_contato'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit18: TDBEdit
          Left = 148
          Top = 32
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'tel1_contato'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit19: TDBEdit
          Left = 248
          Top = 32
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'tel2_contato'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit20: TDBEdit
          Left = 348
          Top = 32
          Width = 215
          Height = 21
          CharCase = ecLowerCase
          DataField = 'email_contato'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object BitBtn3: TBitBtn
          Left = 567
          Top = 28
          Width = 26
          Height = 25
          Hint = 'Enviar mensagem ao cliente'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFB00FFFB00FFFB00FFAAAAAA
            C5C5C5F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1C5C5
            C5AAAAAAFB00FFFB00FFFB00FFAAAAAAE8E8E8C5C5C5E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8C5C5C5E8E8E8AAAAAAFB00FFFB00FFFB00FFAAAAAA
            EBEBEBEBEBEBC5C5C5EBEBEBC5C5C5C5C5C5C5C5C5EBEBEBC5C5C5EBEBEBEBEB
            EBAAAAAAFB00FFFB00FFFB00FFAAAAAAF0F0F0F0F0F0F0F0F0C5C5C5F0F0F0F0
            F0F0F0F0F0C5C5C5F0F0F0F0F0F0F0F0F0AAAAAAFB00FFFB00FFFB00FFAAAAAA
            F6F6F6F6F6F6C5C5C5F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6C5C5C5F6F6F6F6F6
            F6AAAAAAFB00FFFB00FFFB00FFAAAAAAFBFBFBC5C5C5FBFBFBFBFBFBFBFBFBFB
            FBFBFBFBFBFBFBFBFBFBFBC5C5C5FBFBFBAAAAAAFB00FFFB00FFFB00FFAAAAAA
            C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
            C5AAAAAAFB00FFFB00FFFB00FFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
          ParentDoubleBuffered = False
          TabOrder = 0
          TabStop = False
          OnClick = BitBtn3Click
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 449
        Width = 596
        Height = 57
        Caption = 'Contato Financeiro'
        TabOrder = 18
        object Label31: TLabel
          Left = 5
          Top = 16
          Width = 68
          Height = 13
          Caption = 'Nome Contato'
          FocusControl = DBEdit30
        end
        object Label32: TLabel
          Left = 148
          Top = 16
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit31
        end
        object Label33: TLabel
          Left = 248
          Top = 16
          Width = 32
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit32
        end
        object Label34: TLabel
          Left = 348
          Top = 16
          Width = 27
          Height = 13
          Caption = 'e-mail'
          FocusControl = DBEdit33
        end
        object DBEdit30: TDBEdit
          Left = 5
          Top = 32
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nome_contato2'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit31: TDBEdit
          Left = 148
          Top = 32
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'tel1_contato2'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit32: TDBEdit
          Left = 248
          Top = 32
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'tel2_contato2'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit33: TDBEdit
          Left = 348
          Top = 32
          Width = 215
          Height = 21
          CharCase = ecLowerCase
          DataField = 'email_contato2'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object BitBtn4: TBitBtn
          Left = 567
          Top = 29
          Width = 26
          Height = 25
          Hint = 'Enviar mensagem ao cliente'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFB00FFFB00FFFB00FFAAAAAA
            C5C5C5F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1C5C5
            C5AAAAAAFB00FFFB00FFFB00FFAAAAAAE8E8E8C5C5C5E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8C5C5C5E8E8E8AAAAAAFB00FFFB00FFFB00FFAAAAAA
            EBEBEBEBEBEBC5C5C5EBEBEBC5C5C5C5C5C5C5C5C5EBEBEBC5C5C5EBEBEBEBEB
            EBAAAAAAFB00FFFB00FFFB00FFAAAAAAF0F0F0F0F0F0F0F0F0C5C5C5F0F0F0F0
            F0F0F0F0F0C5C5C5F0F0F0F0F0F0F0F0F0AAAAAAFB00FFFB00FFFB00FFAAAAAA
            F6F6F6F6F6F6C5C5C5F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6C5C5C5F6F6F6F6F6
            F6AAAAAAFB00FFFB00FFFB00FFAAAAAAFBFBFBC5C5C5FBFBFBFBFBFBFBFBFBFB
            FBFBFBFBFBFBFBFBFBFBFBC5C5C5FBFBFBAAAAAAFB00FFFB00FFFB00FFAAAAAA
            C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
            C5AAAAAAFB00FFFB00FFFB00FFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
            FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
            FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
            00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
          ParentDoubleBuffered = False
          TabOrder = 0
          TabStop = False
          OnClick = BitBtn3Click
        end
      end
      object BitBtn5: TBitBtn
        Left = 478
        Top = 355
        Width = 26
        Height = 25
        Hint = 'Enviar mensagem ao cliente'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFB00FFFB00FFFB00FFAAAAAA
          C5C5C5F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1C5C5
          C5AAAAAAFB00FFFB00FFFB00FFAAAAAAE8E8E8C5C5C5E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8C5C5C5E8E8E8AAAAAAFB00FFFB00FFFB00FFAAAAAA
          EBEBEBEBEBEBC5C5C5EBEBEBC5C5C5C5C5C5C5C5C5EBEBEBC5C5C5EBEBEBEBEB
          EBAAAAAAFB00FFFB00FFFB00FFAAAAAAF0F0F0F0F0F0F0F0F0C5C5C5F0F0F0F0
          F0F0F0F0F0C5C5C5F0F0F0F0F0F0F0F0F0AAAAAAFB00FFFB00FFFB00FFAAAAAA
          F6F6F6F6F6F6C5C5C5F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6C5C5C5F6F6F6F6F6
          F6AAAAAAFB00FFFB00FFFB00FFAAAAAAFBFBFBC5C5C5FBFBFBFBFBFBFBFBFBFB
          FBFBFBFBFBFBFBFBFBFBFBC5C5C5FBFBFBAAAAAAFB00FFFB00FFFB00FFAAAAAA
          C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
          C5AAAAAAFB00FFFB00FFFB00FFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
        ParentDoubleBuffered = False
        TabOrder = 23
        TabStop = False
        OnClick = BitBtn5Click
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 631
        Top = 53
        Width = 120
        Height = 58
        Caption = 'Sexo'
        DataField = 'sexo'
        DataSource = dsNavegacao
        Items.Strings = (
          'Masculino'
          'Feminino')
        ParentBackground = True
        TabOrder = 7
        Values.Strings = (
          'M'
          'F')
      end
      object DBEdit55: TDBEdit
        Left = 73
        Top = 19
        Width = 73
        Height = 21
        TabStop = False
        DataField = 'codgarra'
        DataSource = dsNavegacao
        TabOrder = 1
      end
      object DBEdit56: TDBEdit
        Left = 3
        Top = 58
        Width = 69
        Height = 21
        CharCase = ecUpperCase
        DataField = 'matricula'
        DataSource = dsNavegacao
        TabOrder = 5
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object dbckPrefeitura: TDBCheckBox
        Left = 631
        Top = 7
        Width = 120
        Height = 37
        Caption = 'Cliente Compra (Prefeitura)'
        DataField = 'prefeitura'
        DataSource = dsNavegacao
        TabOrder = 4
        ValueChecked = 'T'
        ValueUnchecked = 'F'
        WordWrap = True
        OnClick = dbckPrefeituraClick
      end
      object dblkPrefeitura: TDBLookupComboBox
        Left = 3
        Top = 99
        Width = 338
        Height = 21
        DataField = 'idprefeitura'
        DataSource = dsNavegacao
        KeyField = 'codcliente'
        ListField = 'nome'
        ListSource = dsPrefeitura
        TabOrder = 26
        OnEnter = dblkPrefeituraEnter
        OnExit = dblkPrefeituraExit
      end
      object btnPrefeitura: TBitBtn
        Left = 343
        Top = 97
        Width = 30
        Height = 25
        Hint = 'Localizar'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        TabStop = False
        OnClick = btnPrefeituraClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Padr'#245'es'
      ImageIndex = 1
      object Label17: TLabel
        Left = 3
        Top = 204
        Width = 25
        Height = 13
        Caption = 'Obs.:'
      end
      object Label39: TLabel
        Left = 5
        Top = 8
        Width = 63
        Height = 13
        Caption = 'Tipo de Frete'
        FocusControl = DBEdit38
      end
      object Label40: TLabel
        Left = 5
        Top = 51
        Width = 99
        Height = 13
        Caption = 'Prazo de Pagamento'
        FocusControl = DBEdit39
      end
      object Label42: TLabel
        Left = 280
        Top = 51
        Width = 129
        Height = 13
        Caption = 'Margem de Lucro Adicional'
        FocusControl = DBEdit41
      end
      object Label43: TLabel
        Left = 415
        Top = 51
        Width = 62
        Height = 13
        Caption = 'Atraso M'#233'dio'
        FocusControl = DBEdit42
      end
      object Label44: TLabel
        Left = 139
        Top = 8
        Width = 72
        Height = 13
        Caption = 'Transportadora'
        FocusControl = DBEdit43
      end
      object Label46: TLabel
        Left = 363
        Top = 8
        Width = 92
        Height = 13
        Caption = 'Tipo de pagamento'
        FocusControl = DBEdit45
      end
      object Label41: TLabel
        Left = 140
        Top = 51
        Width = 78
        Height = 13
        Caption = 'Limite de Cr'#233'dito'
        FocusControl = DBEdit40
      end
      object DBMemo1: TDBMemo
        Left = 3
        Top = 223
        Width = 595
        Height = 61
        DataField = 'obs'
        DataSource = dsNavegacao
        TabOrder = 8
      end
      object DBEdit38: TDBEdit
        Left = 5
        Top = 24
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'tipo_frete'
        DataSource = dsNavegacao
        TabOrder = 0
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit39: TDBEdit
        Left = 5
        Top = 67
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'prazo_pagamento'
        DataSource = dsNavegacao
        TabOrder = 3
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit41: TDBEdit
        Left = 280
        Top = 67
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'margem_lucro_adicional'
        DataSource = dsNavegacao
        TabOrder = 5
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit42: TDBEdit
        Left = 415
        Top = 67
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'atraso_medio'
        DataSource = dsNavegacao
        TabOrder = 6
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit43: TDBEdit
        Left = 139
        Top = 24
        Width = 211
        Height = 21
        CharCase = ecUpperCase
        DataField = 'transportadora'
        DataSource = dsNavegacao
        TabOrder = 1
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit45: TDBEdit
        Left = 363
        Top = 24
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        DataField = 'tipo_pagamento'
        DataSource = dsNavegacao
        TabOrder = 2
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit40: TDBEdit
        Left = 140
        Top = 67
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'limite_credito'
        DataSource = dsNavegacao
        TabOrder = 4
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object GroupBox5: TGroupBox
        Left = 5
        Top = 94
        Width = 404
        Height = 104
        Caption = 'Datas Registradas'
        TabOrder = 7
        object Label45: TLabel
          Left = 11
          Top = 17
          Width = 95
          Height = 13
          Caption = 'Data da '#250'ltima visita'
          FocusControl = DBEdit44
        end
        object Label47: TLabel
          Left = 11
          Top = 57
          Width = 121
          Height = 13
          Caption = 'Data da '#250'ltima campanha'
          FocusControl = DBEdit46
        end
        object Label48: TLabel
          Left = 275
          Top = 17
          Width = 92
          Height = 13
          Caption = 'Data '#250'ltimo contato'
          FocusControl = DBEdit46
        end
        object Label49: TLabel
          Left = 145
          Top = 17
          Width = 89
          Height = 13
          Caption = 'Data pr'#243'xima visita'
          FocusControl = DBEdit46
        end
        object Label50: TLabel
          Left = 145
          Top = 57
          Width = 91
          Height = 13
          Caption = 'Data '#250'ltima compra'
          FocusControl = DBEdit46
        end
        object Label51: TLabel
          Left = 275
          Top = 57
          Width = 101
          Height = 13
          Caption = 'Data pr'#243'ximo contato'
          FocusControl = DBEdit46
        end
        object DBEdit44: TDBEdit
          Left = 11
          Top = 32
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'dtultima_visita'
          DataSource = dsNavegacao
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit46: TDBEdit
          Left = 11
          Top = 72
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'dtultima_campanha'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit47: TDBEdit
          Left = 275
          Top = 32
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'dtultimo_contato'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit48: TDBEdit
          Left = 145
          Top = 32
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'dtproxima_visita'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit49: TDBEdit
          Left = 145
          Top = 72
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'dtultima_compra'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit50: TDBEdit
          Left = 275
          Top = 72
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'dtproximo_contato'
          DataSource = dsNavegacao
          TabOrder = 5
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsCliente
    OnDataChange = dsNavegacaoDataChange
    Left = 424
    Top = 424
  end
  inherited ActionList1: TActionList
    Left = 540
    Top = 308
  end
  inherited dsPesquisa: TDataSource
    Left = 688
    Top = 456
  end
  object dsPrefeitura: TDataSource
    DataSet = DM.qrlkCliente
    Left = 280
    Top = 184
  end
end
