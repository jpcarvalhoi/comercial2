inherited FormCadFornecedor: TFormCadFornecedor
  Left = 273
  Top = 88
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 585
  ClientWidth = 782
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 788
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 782
    ExplicitWidth = 782
    inherited btnPrimeiro: TBitBtn
      Left = 333
      Visible = False
      ExplicitLeft = 333
    end
    inherited btnAnterior: TBitBtn
      Left = 407
      Visible = False
      ExplicitLeft = 407
    end
    inherited btnProximo: TBitBtn
      Left = 481
      Visible = False
      ExplicitLeft = 481
    end
    inherited btnUltimo: TBitBtn
      Left = 555
      Visible = False
      ExplicitLeft = 555
    end
    inherited btnLocalizar: TBitBtn
      Left = 629
      ExplicitLeft = 629
    end
    inherited btnFechar: TBitBtn
      Left = 703
      ExplicitLeft = 703
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 566
    Width = 782
    ExplicitTop = 566
    ExplicitWidth = 782
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 61
    Width = 782
    Height = 505
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#245'es Gerais'
      object Label1: TLabel
        Left = 3
        Top = 1
        Width = 22
        Height = 13
        Caption = 'C'#243'd.'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 59
        Top = 1
        Width = 64
        Height = 13
        Caption = 'Nome/Raz'#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 458
        Top = 1
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit3
      end
      object Label10: TLabel
        Left = 5
        Top = 303
        Width = 27
        Height = 13
        Caption = 'Tel. 1'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 124
        Top = 303
        Width = 27
        Height = 13
        Caption = 'Tel. 2'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 241
        Top = 303
        Width = 27
        Height = 13
        Caption = 'e-mail'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 452
        Top = 303
        Width = 42
        Height = 13
        Caption = 'Web site'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 337
        Top = 46
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = DBEdit14
      end
      object Label15: TLabel
        Left = 638
        Top = 1
        Width = 59
        Height = 13
        Caption = 'Dt. Cadastro'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 638
        Top = 46
        Width = 64
        Height = 13
        Caption = #218'lt. Altera'#231#227'o'
        FocusControl = DBEdit16
      end
      object Label4: TLabel
        Left = 3
        Top = 46
        Width = 71
        Height = 13
        Caption = 'Nome Fantasia'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 488
        Top = 46
        Width = 91
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = DBEdit5
      end
      object Label5: TLabel
        Left = 638
        Top = 89
        Width = 42
        Height = 13
        Caption = 'Situa'#231#227'o'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 638
        Top = 131
        Width = 32
        Height = 13
        Caption = 'Motivo'
        FocusControl = DBEdit7
      end
      object Label37: TLabel
        Left = 638
        Top = 176
        Width = 54
        Height = 13
        Caption = 'Status ABC'
        FocusControl = DBEdit8
      end
      object Label38: TLabel
        Left = 638
        Top = 219
        Width = 55
        Height = 13
        Caption = 'Certificados'
        FocusControl = DBEdit37
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 17
        Width = 50
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'idfornecedor'
        DataSource = dsNavegacao
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 59
        Top = 17
        Width = 393
        Height = 21
        CharCase = ecUpperCase
        DataField = 'razao'
        DataSource = dsNavegacao
        TabOrder = 1
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit3: TDBEdit
        Left = 458
        Top = 17
        Width = 137
        Height = 21
        CharCase = ecUpperCase
        DataField = 'cnpj'
        DataSource = dsNavegacao
        TabOrder = 2
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit10: TDBEdit
        Left = 5
        Top = 319
        Width = 110
        Height = 21
        CharCase = ecUpperCase
        DataField = 'tel'
        DataSource = dsNavegacao
        TabOrder = 10
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit11: TDBEdit
        Left = 124
        Top = 319
        Width = 110
        Height = 21
        CharCase = ecUpperCase
        DataField = 'tel2'
        DataSource = dsNavegacao
        TabOrder = 11
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit12: TDBEdit
        Left = 241
        Top = 319
        Width = 176
        Height = 21
        DataField = 'email'
        DataSource = dsNavegacao
        TabOrder = 12
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit13: TDBEdit
        Left = 452
        Top = 319
        Width = 166
        Height = 21
        DataField = 'site'
        DataSource = dsNavegacao
        TabOrder = 13
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit14: TDBEdit
        Left = 337
        Top = 62
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'inscricao_estadual'
        DataSource = dsNavegacao
        TabOrder = 5
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit15: TDBEdit
        Left = 638
        Top = 17
        Width = 110
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'dtcadastro'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 638
        Top = 62
        Width = 110
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'dtalteracao'
        DataSource = dsNavegacao
        ReadOnly = True
        TabOrder = 7
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 345
        Width = 614
        Height = 57
        Caption = 'Contato Compras '
        TabOrder = 14
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
      object GroupBox4: TGroupBox
        Left = 3
        Top = 411
        Width = 614
        Height = 57
        Caption = 'Contato Financeiro'
        TabOrder = 15
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
          OnClick = BitBtn4Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 188
        Width = 614
        Height = 108
        Caption = 'Endere'#231'o faturamento '
        TabOrder = 9
        object Label25: TLabel
          Left = 8
          Top = 21
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit24
        end
        object Label26: TLabel
          Left = 8
          Top = 61
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit25
        end
        object Label27: TLabel
          Left = 178
          Top = 61
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit26
        end
        object Label28: TLabel
          Left = 421
          Top = 61
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit27
        end
        object Label29: TLabel
          Left = 495
          Top = 21
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit28
        end
        object Label30: TLabel
          Left = 462
          Top = 61
          Width = 52
          Height = 13
          Caption = 'Refer'#234'ncia'
          FocusControl = DBEdit29
        end
        object DBEdit24: TDBEdit
          Left = 8
          Top = 37
          Width = 479
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
          Top = 77
          Width = 164
          Height = 21
          CharCase = ecUpperCase
          DataField = 'bairro_fat'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit26: TDBEdit
          Left = 178
          Top = 77
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cidade_fat'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit27: TDBEdit
          Left = 421
          Top = 77
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'uf_fat'
          DataSource = dsNavegacao
          TabOrder = 5
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit28: TDBEdit
          Left = 495
          Top = 37
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cep_fat'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit29: TDBEdit
          Left = 462
          Top = 77
          Width = 141
          Height = 21
          CharCase = ecUpperCase
          DataField = 'referencia_fat'
          DataSource = dsNavegacao
          TabOrder = 6
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object BitBtn6: TBitBtn
          Left = 240
          Top = 10
          Width = 149
          Height = 20
          Caption = 'Utilizar endere'#231'o de Entrega'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BitBtn6Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 86
        Width = 614
        Height = 100
        Caption = 'Endere'#231'o entrega '
        TabOrder = 8
        object Label17: TLabel
          Left = 8
          Top = 14
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit21
        end
        object Label22: TLabel
          Left = 8
          Top = 54
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit22
        end
        object Label23: TLabel
          Left = 178
          Top = 54
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit23
        end
        object Label24: TLabel
          Left = 421
          Top = 54
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit34
        end
        object Label35: TLabel
          Left = 495
          Top = 14
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit35
        end
        object Label36: TLabel
          Left = 462
          Top = 54
          Width = 52
          Height = 13
          Caption = 'Refer'#234'ncia'
          FocusControl = DBEdit36
        end
        object DBEdit21: TDBEdit
          Left = 8
          Top = 30
          Width = 479
          Height = 21
          CharCase = ecUpperCase
          DataField = 'endereco'
          DataSource = dsNavegacao
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit22: TDBEdit
          Left = 8
          Top = 70
          Width = 164
          Height = 21
          CharCase = ecUpperCase
          DataField = 'bairro'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit23: TDBEdit
          Left = 178
          Top = 70
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cidade'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit34: TDBEdit
          Left = 421
          Top = 70
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'uf'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit35: TDBEdit
          Left = 495
          Top = 30
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cep'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit36: TDBEdit
          Left = 462
          Top = 70
          Width = 141
          Height = 21
          CharCase = ecUpperCase
          DataField = 'referencia'
          DataSource = dsNavegacao
          TabOrder = 5
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
      object DBEdit4: TDBEdit
        Left = 3
        Top = 62
        Width = 328
        Height = 21
        CharCase = ecUpperCase
        DataField = 'fantasia'
        DataSource = dsNavegacao
        TabOrder = 4
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit5: TDBEdit
        Left = 488
        Top = 62
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'inscricao_municipal'
        DataSource = dsNavegacao
        TabOrder = 6
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit6: TDBEdit
        Left = 638
        Top = 105
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'situacao'
        DataSource = dsNavegacao
        TabOrder = 16
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit7: TDBEdit
        Left = 638
        Top = 147
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'motivo'
        DataSource = dsNavegacao
        TabOrder = 17
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit8: TDBEdit
        Left = 638
        Top = 192
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'status_abo'
        DataSource = dsNavegacao
        TabOrder = 18
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object DBEdit37: TDBEdit
        Left = 638
        Top = 235
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'certificados'
        DataSource = dsNavegacao
        TabOrder = 19
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyPress = SelectProximo
      end
      object BitBtn1: TBitBtn
        Left = 420
        Top = 315
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
        TabOrder = 20
        TabStop = False
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Padr'#245'es'
      ImageIndex = 1
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
        Width = 62
        Height = 13
        Caption = 'Plano contas'
        FocusControl = DBEdit41
      end
      object Label43: TLabel
        Left = 415
        Top = 51
        Width = 99
        Height = 13
        Caption = 'Prazo M'#233'dio Entrega'
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
      object Label8: TLabel
        Left = 3
        Top = 356
        Width = 25
        Height = 13
        Caption = 'Obs.:'
      end
      object DBMemo1: TDBMemo
        Left = 3
        Top = 375
        Width = 595
        Height = 61
        DataField = 'obs'
        DataSource = dsNavegacao
        MaxLength = 200
        TabOrder = 9
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
        DataField = 'plano_contas'
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
        DataField = 'prazo_medio_entrega'
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
      object GroupBox6: TGroupBox
        Left = 3
        Top = 204
        Width = 406
        Height = 141
        Caption = 'Dados Banc'#225'rios'
        TabOrder = 8
        object Label9: TLabel
          Left = 8
          Top = 13
          Width = 31
          Height = 13
          Caption = 'Banco'
          FocusControl = DBEdit9
        end
        object Label52: TLabel
          Left = 142
          Top = 13
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
          FocusControl = DBEdit9
        end
        object Label53: TLabel
          Left = 272
          Top = 13
          Width = 28
          Height = 13
          Caption = 'Conta'
          FocusControl = DBEdit9
        end
        object Label54: TLabel
          Left = 8
          Top = 53
          Width = 31
          Height = 13
          Caption = 'Banco'
          FocusControl = DBEdit53
        end
        object Label55: TLabel
          Left = 142
          Top = 53
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
          FocusControl = DBEdit53
        end
        object Label56: TLabel
          Left = 272
          Top = 53
          Width = 28
          Height = 13
          Caption = 'Conta'
          FocusControl = DBEdit53
        end
        object Label57: TLabel
          Left = 8
          Top = 93
          Width = 31
          Height = 13
          Caption = 'Banco'
          FocusControl = DBEdit56
        end
        object Label58: TLabel
          Left = 142
          Top = 93
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
          FocusControl = DBEdit56
        end
        object Label59: TLabel
          Left = 272
          Top = 93
          Width = 28
          Height = 13
          Caption = 'Conta'
          FocusControl = DBEdit56
        end
        object DBEdit9: TDBEdit
          Left = 8
          Top = 28
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'banco1'
          DataSource = dsNavegacao
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit51: TDBEdit
          Left = 142
          Top = 28
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'agencia1'
          DataSource = dsNavegacao
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit52: TDBEdit
          Left = 272
          Top = 28
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'conta1'
          DataSource = dsNavegacao
          TabOrder = 2
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit53: TDBEdit
          Left = 8
          Top = 68
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'banco2'
          DataSource = dsNavegacao
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit54: TDBEdit
          Left = 142
          Top = 68
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'agencia2'
          DataSource = dsNavegacao
          TabOrder = 4
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit55: TDBEdit
          Left = 272
          Top = 68
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'conta2'
          DataSource = dsNavegacao
          TabOrder = 5
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit56: TDBEdit
          Left = 8
          Top = 108
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'banco3'
          DataSource = dsNavegacao
          TabOrder = 6
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit57: TDBEdit
          Left = 142
          Top = 108
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'agencia3'
          DataSource = dsNavegacao
          TabOrder = 7
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit58: TDBEdit
          Left = 272
          Top = 108
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'conta3'
          DataSource = dsNavegacao
          TabOrder = 8
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
    end
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsFornecedor
  end
  inherited ActionList1: TActionList
    Left = 374
    Top = 181
  end
  inherited dsPesquisa: TDataSource
    Left = 664
    Top = 392
  end
end
