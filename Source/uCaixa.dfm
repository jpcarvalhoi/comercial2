inherited FormCaixa: TFormCaixa
  Caption = 'Movimenta'#231#227'o do caixa'
  ClientHeight = 523
  ClientWidth = 999
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1015
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 52
    Width = 999
    Height = 73
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 531
      Top = 9
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 6
      Width = 316
      Height = 57
      Caption = 'Per'#237'odo de Exibi'#231#227'o'
      TabOrder = 0
      object Label1: TLabel
        Left = 169
        Top = 22
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 26
        Height = 13
        Caption = 'Data:'
      end
      object DateEdit1: TDateEdit
        Left = 40
        Top = 19
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 184
        Top = 19
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 333
      Top = 6
      Width = 185
      Height = 57
      TabOrder = 1
      object Label4: TLabel
        Left = 78
        Top = 33
        Width = 6
        Height = 13
        Caption = #224
      end
      object MaskEdit1: TMaskEdit
        Left = 15
        Top = 30
        Width = 55
        Height = 21
        EditMask = '!99:99;1;_'
        MaxLength = 5
        TabOrder = 1
        Text = '  :  '
        OnExit = MaskEdit1Exit
      end
      object MaskEdit2: TMaskEdit
        Left = 93
        Top = 30
        Width = 55
        Height = 21
        EditMask = '!99:99;1;_'
        MaxLength = 5
        TabOrder = 2
        Text = '  :  '
        OnExit = MaskEdit1Exit
      end
      object ckHora: TCheckBox
        Left = 10
        Top = 9
        Width = 97
        Height = 17
        Caption = 'Considerar hora'
        TabOrder = 0
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 1003
      Top = 417
      Width = 230
      Height = 21
      TabOrder = 4
    end
    object dblkusuario: TDBLookupComboBox
      Left = 531
      Top = 25
      Width = 286
      Height = 21
      KeyField = 'idtbusuario'
      ListField = 'nome'
      ListSource = dsUsuario
      TabOrder = 2
      OnKeyDown = dblkusuarioKeyDown
    end
    object btnFiltrar: TBitBtn
      Left = 912
      Top = 42
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnFiltrarClick
    end
  end
  object DBGridEh1: TDBGridEh [1]
    Left = 0
    Top = 125
    Width = 999
    Height = 187
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = dsPesCaixa
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tipo'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'data_hora'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'valor'
        Footers = <>
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'descricao'
        Footers = <>
        Width = 290
      end
      item
        EditButtons = <>
        FieldName = 'forma_pagamento'
        Footers = <>
        Width = 142
      end
      item
        EditButtons = <>
        FieldName = 'NOME'
        Footers = <>
        Width = 212
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 312
    Width = 999
    Height = 211
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Panel3: TPanel
      Left = 10
      Top = 6
      Width = 338
      Height = 60
      TabOrder = 0
      object Label13: TLabel
        Left = 10
        Top = 20
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
      end
      object Label5: TLabel
        Tag = 1
        Left = 119
        Top = 20
        Width = 31
        Height = 13
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 226
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Saldo'
      end
      object Panel4: TPanel
        Tag = 1
        Left = 1
        Top = 1
        Width = 336
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Dinheiro'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Tag = 1
        Left = 119
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'DinheiroDeb'
        DataSource = DM.dsSaldo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Tag = 1
        Left = 226
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'DinheiroSaldo'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Tag = 1
        Left = 10
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'DinheiroCred'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 354
      Top = 6
      Width = 338
      Height = 60
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object Label7: TLabel
        Left = 10
        Top = 20
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
      end
      object Label11: TLabel
        Tag = 1
        Left = 119
        Top = 20
        Width = 31
        Height = 13
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 226
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Saldo'
      end
      object Panel6: TPanel
        Tag = 1
        Left = 1
        Top = 1
        Width = 336
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cheque'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Tag = 1
        Left = 119
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'ChequeDeb'
        DataSource = DM.dsSaldo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Tag = 1
        Left = 226
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'ChequeSaldo'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Tag = 1
        Left = 10
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'ChequeCre'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Left = 11
      Top = 71
      Width = 338
      Height = 60
      TabOrder = 2
      object Label14: TLabel
        Tag = 1
        Left = 10
        Top = 20
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
      end
      object Label15: TLabel
        Tag = 1
        Left = 119
        Top = 20
        Width = 31
        Height = 13
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 226
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Saldo'
      end
      object Panel8: TPanel
        Tag = 1
        Left = 1
        Top = 1
        Width = 336
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cart'#227'o de Cr'#233'dito'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Tag = 1
        Left = 119
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CartaoCredito_Deb'
        DataSource = DM.dsSaldo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Tag = 1
        Left = 226
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CartaoCreditoSaldo'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Tag = 1
        Left = 10
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CartaoCredito_Cre'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Left = 355
      Top = 71
      Width = 338
      Height = 60
      TabOrder = 3
      object Label17: TLabel
        Left = 10
        Top = 20
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
      end
      object Label18: TLabel
        Tag = 1
        Left = 119
        Top = 20
        Width = 31
        Height = 13
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 226
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Saldo'
      end
      object Panel10: TPanel
        Tag = 1
        Left = 1
        Top = 1
        Width = 336
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cart'#227'o de D'#233'bito'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Tag = 1
        Left = 119
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CartaoDebito_Deb'
        DataSource = DM.dsSaldo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Tag = 1
        Left = 226
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CartaoDebitoSaldo'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Tag = 1
        Left = 10
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'CartaoDebito_Cre'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 699
      Top = 6
      Width = 288
      Height = 87
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 4
      object Label10: TLabel
        Left = 12
        Top = 31
        Width = 57
        Height = 13
        Caption = 'Valor Inicial:'
      end
      object lbValorInicial: TLabel
        Left = 69
        Top = 31
        Width = 46
        Height = 13
        Caption = 'Label10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 30
        Top = 49
        Width = 39
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object lbUsuario: TLabel
        Left = 69
        Top = 49
        Width = 46
        Height = 13
        Caption = 'Label10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 68
        Width = 61
        Height = 13
        Caption = 'Data e Hora:'
      end
      object lbAbertura: TLabel
        Left = 69
        Top = 68
        Width = 59
        Height = 13
        Caption = 'lbAbertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel12: TPanel
        Tag = 1
        Left = 1
        Top = 1
        Width = 286
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        Caption = #218'ltima Abertura'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 11
      Top = 137
      Width = 338
      Height = 60
      TabOrder = 5
      object Label20: TLabel
        Tag = 1
        Left = 10
        Top = 20
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
      end
      object Label21: TLabel
        Tag = 1
        Left = 119
        Top = 20
        Width = 31
        Height = 13
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 226
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Saldo'
      end
      object Panel14: TPanel
        Tag = 1
        Left = 1
        Top = 1
        Width = 336
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Transfer'#234'ncia'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Tag = 1
        Left = 119
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'trans_deb'
        DataSource = DM.dsSaldo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit14: TDBEdit
        Tag = 1
        Left = 226
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'trans_saldo'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit15: TDBEdit
        Tag = 1
        Left = 10
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'trans_Cre'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel15: TPanel
      Left = 354
      Top = 137
      Width = 338
      Height = 60
      TabOrder = 6
      object Label23: TLabel
        Tag = 1
        Left = 10
        Top = 20
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
      end
      object Label24: TLabel
        Tag = 1
        Left = 119
        Top = 20
        Width = 31
        Height = 13
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 226
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Saldo'
      end
      object Panel16: TPanel
        Tag = 1
        Left = 1
        Top = 1
        Width = 336
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Dep'#243'sito'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit16: TDBEdit
        Tag = 1
        Left = 119
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'deposito_deb'
        DataSource = DM.dsSaldo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Tag = 1
        Left = 226
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'deposito_saldo'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit18: TDBEdit
        Tag = 1
        Left = 10
        Top = 35
        Width = 101
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'deposito_cre'
        DataSource = DM.dsSaldo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object ToolBar1: TToolBar [3]
    Left = 0
    Top = 0
    Width = 999
    Height = 52
    AutoSize = True
    ButtonHeight = 52
    ButtonWidth = 69
    Caption = 'ToolBar1'
    Images = imgtoolbar
    ShowCaptions = True
    TabOrder = 0
    object ToolButton9: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btnAtualizar: TToolButton
      Left = 8
      Top = 0
      Caption = 'Caixa Atual'
      ImageIndex = 21
      OnClick = btnAtualizarClick
    end
    object ToolButton11: TToolButton
      Left = 77
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 85
      Top = 0
      Caption = 'L. Manual'
      ImageIndex = 16
      OnClick = ToolButton1Click
    end
    object ToolButton5: TToolButton
      Left = 154
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Tag = 1
      Left = 162
      Top = 0
      Caption = 'Abrir Caixa'
      ImageIndex = 18
      OnClick = ToolButton1Click
    end
    object ToolButton7: TToolButton
      Tag = 2
      Left = 231
      Top = 0
      Caption = 'Fechar Caixa'
      ImageIndex = 17
      OnClick = ToolButton1Click
    end
    object ToolButton8: TToolButton
      Left = 300
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 308
      Top = 0
      Caption = 'Imprimir'
      ImageIndex = 20
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 377
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
      Visible = False
    end
    object ToolButton2: TToolButton
      Left = 385
      Top = 0
      Caption = 'Fechar'
      ImageIndex = 22
      OnClick = ToolButton2Click
    end
  end
  object imgtoolbar: TImageList
    Height = 32
    Width = 32
    Left = 456
    Top = 112
    Bitmap = {
      494C0101170030011C0120002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2E8DE00F8F5F100000000000000000000000000F9F4EE00F3E5DC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFCFC00CCC7BB00F7F6
      F500000000000000000000000000000000000000000000000000000000000000
      000000000000B6E9FD004ABEF500A4CAEF00B8CFE600DEEFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4E6F80079C0F0005ECEFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2E8DC00E9D6
      BE00EED8B900E1CCAF00DFCFBB00F3EBE200E5D1BB00D5B69200DAA58E00E1B9
      A600F6ECE6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1E0EC00559DC7006CCDFF00E4F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBF4F200959B9200A398
      8900F8F8F6000000000000000000000000000000000000000000000000000000
      000000000000B6E9FD0047B7F1005E9ED90090B7DC0062B2FF0093CAFF00E0F0
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8D6F40058A6E4005ECDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E8DC00E9D6BF009BE1D4002BE9
      F2005AE4E200CBD8BA00EED3AA00D6B99300CFB59600D5B99700DAA48E00DAA4
      8E00D9A68F00E4C3B100FAF4F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9E6EF005EAE
      D80039B3E0001B8DC50000ADFF0009B0FF006CD0FF00E4F6FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5FFFF006BD8FF004AA6FD009EA6
      9E00CDC9BC00F9F9F70000000000000000000000000000000000000000000000
      000000000000B6E9FD0048B7F1005F9CD80091B8DC0056B4FF0046B4FF004FB4
      FF0093CBFF00E2F1FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8D6F30059A5E3005ECDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2E8DC00E9D6C0009BE3D60028EAF40000EBFF0000E9
      FF0000E7FF0003E5FE005ADDDF00CDD6B700EED3AA00D8BC9900DAA38E00DAA3
      8E00DAA58E00D9A78F00D9AC9200E7CCBB00FDFAF80000000000000000000000
      0000000000000000000000000000000000000000000000000000A0C0D8002B9C
      D200508FAB00508CB10000B1FF0000B1FF0000B1FF0009B3FF006CD1FF00E4F7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5FFFF006BD8FF00319BFF0041CBFF00A7FD
      FE00B6C0B700C3BCB10000000000000000000000000000000000000000000000
      000000000000B6E9FD0049B7F1005E9BD60093B8DC004EB6FF0032B6FF0030B6
      FF003FB6FF0055B7FF0098CEFF00E3F1FF000000000000000000000000000000
      000000000000000000000000000000000000B9D6F30059A4E1005ECDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2E8DC00E9D7C1009BE3D80028EAF40000EAFF0000E8FF0000E6FF0000E4
      FF0000E2FF0000E0FF0000DEFF0003DCFE0058D5DD00C2B79900DAA28E00DAA2
      8E00DAA48E00D9A68F00D9A88F00D8AB9000DAB19600EBD8C800FEFCFB000000
      0000000000000000000000000000000000000000000000000000A0C0D800429A
      C2009A9A9A005E8EAE0000B5FF0000B5FF0000B5FF0000B5FF0000B4FF0009B6
      FF006CD3FF00E4F7FF0000000000000000000000000000000000000000000000
      00000000000000000000F5FFFF006BD8FF00319BFF0051CFFF008DFDFF0067D6
      FF00E7EBEF00FBFAFA0000000000000000000000000000000000000000000000
      000000000000B6E9FD0049B7F0006F98C400C2BDBA0052B9FF002EB9FF0000B6
      FF0017B6FF0033B7FF0043B8FF005ABAFF00B0D9FF0000000000000000000000
      000000000000000000000000000000000000BAD7F20059A4E0005ECDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2E8DC00E9D7
      C1009BE3DA0028E9F50000E9FF0000E7FF0000E5FF0000E3FF0000E1FF0000DF
      FF0000DDFF0000DBFF0000D7FD000BC2E30050A1A500CDB69600DAA18E00DBA1
      8E00D5A58C00A29E9A00DEB7A300D8AA8F00D8AC9000D7AE9000DBB99C00EEE1
      D400000000000000000000000000000000000000000000000000A0C0D800449E
      C4009C9C9C005E8FAE0000B9FF0000B9FF0000B9FF0000B9FF0000B8FF0000B8
      FF0000B7FF0009B8FF006CD4FF00E4F7FF000000000000000000000000000000
      000000000000F5FFFF006BD8FF00319BFF004ECFFF008BFDFF006BD7FF00F3F9
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000B6EAFD004AB9F0007996B800DAC6B10056BCFF0031BBFF0000B8
      FF0000B7FF0000B6FF0019B6FF003EB9FF007ECBFF0000000000000000000000
      000000000000000000000000000000000000BBD7F2005AA3DE005ECDFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBDAC600F1E1C90084E6
      E10003E8FE0000E6FF0000E4FF0000E2FF0000E0FF0000DEFF0000DCFF0000DA
      FF0000D6FD000BBFE1004F9EA200C1BAA500DCCAB500D7B99800DBA08D00DBA0
      8D00C69F890032C3FD00C3B6A700D9AB9200D8AB9000D7AD9000D7B09100D6B2
      9100DDC2A600F3EAE00000000000000000000000000000000000A0C0D80046A2
      C6009F9F9F006090B00000BDFF0000BDFF0000BDFF0000BDFF0000BCFF0033BB
      ED0033BAED0030B9EE0000B8FF0009B9FF006CD4FF00E4F7FF0000000000FDFD
      FC00F3FDFD006BD8FF00319BFF004CCEFF008FFEFF006BD7FF00F3F9FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6EAFD004ABBF0007995B600DAC6B1005ABEFF0033BEFF0000BB
      FF0000B9FF0000B8FF0000B7FF0032BAFF0072CAFF0000000000000000000000
      000000000000000000000000000000000000BBD7F2005BA2DC005DCDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFCFA00F9EEDF00F4E1
      C600CEE0CA005BDFE60003DFFE0000DEFF0000DCFF0000DAFF0000D6FD000ABC
      DC004D9A9E00BCB29B00D6C1A900D0BCA500B7A28A00D0B39200DBA08D00DB9F
      8D00D9A18D00ABC8B100D9B49C00DAAB93009B9B9C00CEB7A600D8B19300D6B1
      9100D6B39100DCC3A50000000000000000000000000000000000A0C0D80048A6
      C800A3A3A3006293B20000C1FF000FC1FA0078C1D600C5C0BB00FEC0A700FEBF
      A700FEBFA700FEBEA700FEBDA600BFBBBC006FB9D80015B8FB006CD4FF00C8CC
      C3009BB7BA00369DFF0053D0FF0086FDFF006CD7FF00F3F9FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EBFD004BBDF0007395BA00CFC1B4005DC1FF0035C1FF0000BD
      FF0000BCFF0000BAFF0000B9FF0034BDFF0075CCFF0000000000000000000000
      000000000000000000000000000000000000BCD7F1005BA1DC005DCDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0E4D700D7BB
      9900E7D0B200F1DBB900CCDAC1005AD9E20003D4FB000ABADB004C989B00B7AA
      9100D0B89D00CCB69C00B69F8600A68F7500B59D8200D9BD9B00DBA69100DB9E
      8D00DBA08D00DAA38E00DAA58E00D9A78F007FC3DD0066B1C400DDBBA100D7B0
      9100D6B29100DCC2A40000000000000000000000000000000000A0C0D8004AAA
      CA00A8A8A8006596B5006CC4DB00ECC4AF00F4C4AB00BFC5B800A4C8C20099CC
      C7007FCCD4009ED1CC00AED0C800C8C9BD00F8BEA800E6BBAE0064B7DA009193
      8800B8AFA4009FC5CC008AFDFF006ED8FF00F3F9FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5ECFD004BBFF0005C95CD009BBCDC0062C4FF0037C3FF0000C0
      FF0000BEFF0000BDFF0000BBFF0037BFFF0078CEFF00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00BDD7F1005BA1DA005DCDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBDDCC00BA9D
      7B00B2967700C8AD8D00D2B89300AB9271007E7E6700B3A28500CAAF9000C7AD
      9100B69E8200A88F7400B59D8100D1B69500DEC3A200E3CBAD00E1BEA700DC9D
      8D00DB9F8D00DAA28E00DAA48E00D9A68F00D0B59B00C7BCA100DAB29700D7AF
      9100D6B19100DCC1A40000000000000000000000000000000000A0C0D8004DAF
      CC00B0AEAD00C7B5AF00FEC6AA00B3C3B7007BC5C90023C9F00000C8FF0000C7
      FF0000C6FF0000C5FF0000C3FF0033C9F1008DD1D400C1C9BD00FEBCA600C9A6
      9600D3CDC200EDEBE300B8D5D700F1F7FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EDFD004CC0F0005B95CB009DBCDB0065C6FF003AC6FF0000C2
      FF0000C1FF0000BFFF0000BDFF0039C1FF007BD0FE00FFFEFD00FFFEFD00FFFE
      FD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00BDD7F0005BA1D9005DCDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBDDCC00BA9D
      7B00A5886800B495700096795700B7977200C5A68400C3A78700B59B7D00A98F
      7200B59C7F00CFB49300DEC3A200E2CAAD00E8D4BC00EEDFCE00F6EFE600DFAB
      9B00DB9F8D00DBA18E00DAA38E00D9A58E00D9A88F00D8AA8F00D8AC9000D7AE
      9000D6B09100DCBFA30000000000000000000000000000000000A0C0D8004EB2
      CE00E4C0AD00F8C6AA009CBFB60029CAEB0000CEFF0000CDFF0000CDFF0000CC
      FF0000CAFF0000C9FF0000C7FF0000C5FF0000C3FF0037C6ED00ABCAC300FBBD
      A700DFBFAE00CED1C800C8C1B500FBFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EEFD004CC2F0005A93C9009EBDDA0069C9FF003CC8FF0000C5
      FF0000C3FF0000C2FF0000C0FF003BC4FF007DD2FE00FFFEFB00FFFEFB00FFFE
      FB00FFFEFB00FFFEFB00FFFEFB00FFFEFB00BED7EF005BA0D8005DCCF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBDDCC00BA9D
      7B00A5886800B6977200BF9E7800BEA07D00B4977600AA8E7000B69B7C00CFB4
      9300DEC2A100E2CAAC00E7D3BA00EDDECC00F5EEE400FFFDF900FFFAF100FAEB
      DB00DDA49200DBA08D00DAA28E00DAA48E00D9A78F00D8A98F00D8AB9000D7AD
      9000D7B09100DCBEA30000000000000000000000000000000000A0C0D8009EBF
      C000FECBAC00B9AD9F0012CFF60000D2FF0000D2FF0000D1FF0000D0FF0000D0
      FF0000CEFF0000CDFF0000CAFF0000C8FF0000C6FF0000C4FF001CC3F500AAC6
      BF00FEBDA60074B3CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5EFFD004CC4EF005B92C700A0BED9006DCCFF003ECBFF0000C7
      FF0000C5FF0000C4FF0000C2FF003DC6FF0080D4FE00FFFDF800FFFDF800FFFD
      F800FFFDF800FFFDF800FFFDF800FFFDF800BED7ED005C9FD5005DCCF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBDDCC00BA9D
      7B00A5886800B3946F00B2937000AA8D6C00B69A7900CFB39100DEC2A100E2C9
      AB00E7D2B900EDDECB00F4EDE300FEFCF700FFFAF100FFF7E800FEF1DB00FCEA
      CD00F5DBBC00DEA89300DAA18E00DAA48E00D9A68F00D9A88F00D8AA9000D8AC
      9000D7AF9000DCBDA20000000000000000000000000000000000A8C1D400F6CC
      AF00DAB9A1007EA2B50000D6FF0000D6FF0000D6FF0000D5FF0000D5FF0000D3
      FF0000D2FF0000D0FF0000CEFF0000CCFF0000C9FF0000C6FF0000C4FF0034C3
      EA00BBC1B800E6BCAD00FFFCFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F0FE004DC6EF005A91C500A1BDD80071CEFF0040CDFF0000C9
      FF0000C8FF0000C6FF0000C4FF0040C9FF0083D6FD00FFFCF500FFFCF500FFFC
      F500FFFCF500FFFCF500FFFCF500FFFCF500BFD7EB005C9FD5005DCEF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBDDCC00BA9D
      7B00A2856500A3856300B6987600CFB29000DDC2A000E1C9AA00E6D2B800ECDD
      CA00F3EAE000C9D8D600DDCEBD00FFF7E900FEF1DB00FCEACD00FAE6C400F8E2
      BD00F5DEB600F2D7B000E2B69900DAA38E00DAA58E00D9A78F00D8A98F00D8AC
      9000D7AE9000DCBCA20000000000000000000000000000000000D1C8C200F1CC
      AD00C8B3A20070A2C00000DAFF0000DAFF0002DAFF0005DBFF0005DAFF0004D8
      FF0001D6FF0000D4FF0000D1FF0000CFFF0000CCFF0000C9FF0000C6FF0000C3
      FF0082C2C700F8BFA900FFE1D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F1FE004DC7EF005A90C400A3BED70074D0FF0042D0FF0000CC
      FF0000CAFF0000C8FF0000C6FF0041C7FA0084D4F900FFFAF100FFFAF100FFFA
      F100FFFAF100FFFAF100FFFAF100FFFAF100C0D6E9005C9FD4005DCFF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBDDCC00B89B
      7900AA8D6C00CCAE8D00DDC1A000E1C8AA00E6D1B700ECDCC900F2E8DE00BCDB
      D80046C4D7004EB0C100C8B79D00FAE9CC00FAE6C400F8E2BD00F6DEB700F3DA
      B200F0D5AD00EDD1A800EACEA500E7C7A000DDAD9300D9A68F00D9A88F00D8AB
      9000D7AD9000DCBBA10000000000000000000000000000000000F0CFB500C0BA
      A500C6C1BD0073A5C20002DDFF000DE0FF0018E1FF0020E1FF0025E1FF001EDF
      FF0016DDFF000BD9FF0000D5FF0000D2FF0000CFFF0000CCFF0000C9FF0000C6
      FF0027C2ED00C4BCB000FECDBC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F2FE004DC8EF00598EC200A4BED50078D3FF0044D2FF0000CE
      FF0000CCFF0000CAFF0000C8FF003DB9E60081CDED00FCF4E700FFF9EC00FFF9
      EC00FFF9EC00FFF9EC00FFF9EC00FFF9EC00C1D5E7005C9FD3005CD0F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDDFD000D6B9
      9500DDC19F00E1C8A900E5D0B600EBDBC800F2E8DC00BCDBD90047D0D8004FC6
      C200BCBBA300F6E4C700FAE7C500F8E2BD00F6DEB800F3DAB200F0D6AD00EDD2
      A900EACEA500E7CAA100E4C79E00E2C49C00E0C29A00E1BF9A00D9AB9000D8AA
      8F00D8AC9000DDBAA000000000000000000000000000FFF9F500FED4B000A8B2
      A300C9C9C90076A9C50013E4FF0026E6FF0038E8FF0047EAFF0049EAFF0045E8
      FF0035E4FF0022E0FF000FDAFF0000D5FF0000D2FF0000CFFF0000CBFF0000C8
      FF0000C5FF00A5B9B200FEC1A800FFFCFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F3FE004ECAEF00588EC000A5BED3007BD6FF0046D4FF0000D0
      FF0000CFFF0000CCFF0000CAFF004DC9F200B7A79800C99F8400F9EEDC00FEF7
      E600FEF7E600FEF7E600FEF7E600FEF7E600C1D5E4005E9FD2005CD2F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3E9DC00E0C7
      A800E5D0B600EBDBC700F2E8DD00FBF6F000EBE4D70062B6B900BCBCA300F6E4
      C700FAE7C500F8E2BD00F6DFB800F3DAB200F0D6AE00EDD2A900EACEA500E7CB
      A200E5C79F00DDBF9800C0AD8C00F4D9B200E6CAA400DFC19900E0C39B00DEBD
      9800D9AE9100DDB9A000000000000000000000000000FFF5EC00FED7B1009BB3
      A900CECECE007FB0CB0026EAFF0041ECFF005CEFFF0070F1FF0077F1FF006DEF
      FF0056EAFF003BE6FF0021E0FF000ADAFF0000D4FF0000D1FF0000CEFF0000CA
      FF0000C6FF0096B9B800FECBB700FFF5F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F4FE004ECCEE00588CBF00A7BED0007FD8FF0048D7FF0000D2
      FF0000D0FF0000CEFF0000CCFF0049D1FD00B3B8B300D7B69C00FBF0DB00FEF4
      E000FEF4E000FEF4E000FEF4E000FEF4E000C1D4E1005E9ED1005CD2F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFCFB00EAD9
      C400F1E8DB00FBF5EF00FFFAF200FFF7E900FEF2DE00FCECCF00FBE7C500F9E3
      BE00F6DFB800F4DBB300F1D7AE00EDD3A900EACFA500E8CBA200E5C89F00DDBF
      9800ADAE990053B7D8001AB4ED00B8A88A00D8BD9600E1C59B00E6C9A000E8CC
      A200EACEA400E8D0B500000000000000000000000000FFF2E600FED9B20094B3
      AA00D4D4D40087B5CF0039EEFF005CF2FF007FF4FF009BF7FF00A7F7FF0096F5
      FF0078F1FF0055EBFF0032E4FF0013DDFF0000D7FF0000D3FF0000D0FF0000CC
      FF0000C8FF008DB9BC00FED7C600FFF1EB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F4FE004FCEEF00578BBC00A8BDCE0083DAFF004AD9FF0000D5
      FF0000D2FF0000D0FF0000CEFF004BD4FF0091DDF800FEF2DA00FEF2DA00FEF2
      DA00FEF2DA00FEF2DA00FEF2DA00FEF2DA00C2D3DE005E9ED0005CD4F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3EA
      DE00FFFAF200FFF7E900FEF3DE00FDEDD000FBE7C500F9E3BE00F6DFB800F4DB
      B300F1D7AE00EED3AA00EBCFA600E8CBA200E5C89F00DDC09800ADAE9A0053B7
      D80003B7FE0000B9FF0000BDFF00679C9F00A28F7100B39D7D00CEB58F00E7D1
      AF00FBF4E90000000000000000000000000000000000FFF5EB00FEDBB30098B4
      A800D9D9D900B4D6E4006BEAF80072F6FF009DF9FF00C6FBFF00D7FCFF00BEF9
      FF0094F5FF0069EFFF0041E8FF001BE0FF0002D9FF0000D5FF0000D1FF0000CE
      FF0000CAFF009CBDBC00FFE2D500FFF7F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F5FE004FCFEF005C8AB700B5BBC00085DCFF004CDBFF0000D7
      FF0000D4FF0000D2FF0000D0FF004CD6FF0093DEF700FEEDD600FEEDD600FEED
      D600FEEDD600FEEDD600FEEDD600FEEDD600C2D1DC005E9ECE005CD4F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3E5D000FDEDD000FBE7C600F9E3BE00F7DFB900F4DBB300F1D7AF00EED3
      AA00EBCFA600E8CCA200E5C89F00DEC09800ADAE9A0053B7D80003B7FE0000B9
      FF0000BDFF0000C0FF0000C4FF0015C1ED00A0927600C6B69B00F2EBE3000000
      00000000000000000000000000000000000000000000FFFAF400FEDEB40095B9
      AB00AEE9ED00EEEEEE00E9EDF000C3EEF500BBF6FC00DBFDFF00FAFFFF00D1FC
      FF00A1F7FF0071F1FF0043EAFF0021E2FF0002DAFF0000D6FF0000D2FF0000CF
      FF0000CBFF00B6C6C000FFECE300FFFBFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F6FE004FD1EE00738AA600DDC5AC0089DFFF004EDEFF0000D9
      FF0000D6FF0000D4FF0000D1FF004FD8FF0096DEF600FEE8D000FEE8D000FEE8
      D000FEE8D000FEE8D000FEE8D000FEE8D000C3CFD8005E9DCD005CD6FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2E0C600F6DFB900F4DCB400F2D8AF00EED4AA00EBD0A600E8CC
      A300E5C89F00DEC09800ADAE9A0053B7D80000B6FF0000B9FF0000BDFF0000C0
      FF0000C4FF0000C7FF0000CBFF0000CFFF008ADFEC0000000000000000000000
      0000000000000000000000000000000000000000000000000000FEE4BE00D0BF
      A80061DDEB0065ECF400BFF0F200F3F4F400F3F6F700E4F8FB00DDFBFE00BDFB
      FF0093F6FF0069F1FF0041EAFF001BE2FF0002DBFF0000D7FF0000D3FF0000D0
      FF0023C3E900E0E0DA00FFEFE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F7FE0050D2EE007389A400DDC5AC008CE1FF0050E0FF0000DA
      FF0000D8FF0000D5FF0000D2FF0051DAFF0099DFF500FEE2CB00FEE2CB00FEE2
      CB00FEE2CB00FEE2CB00FEE2CB00FEE2CB00C4CDD6005F9DCC005CD6F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6E9D700EED4AB00EBD0A700E9CCA300E6C9A000E4C8
      A200DBC2A000D8C19B000CB8FB0000B9FF0000BDFF0000C0FF0000C4FF0000C7
      FF0000CBFF0000CFFF0000D2FF0000D6FF0018DDFF00F6FEFF00000000000000
      0000000000000000000000000000000000000000000000000000FEEED400F8DE
      B500DFC9BD00BEEAF5007BEAF6008BF1F700D0F4F700F6F7F700F4F7F800D0F2
      F80090EFFA0054EFFF0032E9FF0013E2FF0000DBFF0000D8FF0000D4FF0000D0
      FF0079BAC100FEFAF700FFEFE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F8FE0050D4EE007289A400DDC4AC008FE3FF0052E1FF0000DC
      FF0000D9FF0000D7FF0000D4FF0053DCFF009BE0F300FEDCC600FEDCC600FEDC
      C600FEDCC600FEDCC600FEDCC600FEDCC600C4CAD4005F9DCC005CD7F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFBF800EDD5B300E4C79E00E1C39B00E6CB
      A500F8E8D000F9E0BC0075C6D30000C0FF0000C4FF0000C7FF0000CBFF0000CF
      FF0000D2FF0000D6FF0000DAFF0000DDFF0000E1FF0090F4FF00000000000000
      0000000000000000000000000000000000000000000000000000FFFCF600FEE6
      B900DEC2A900F7F2EF0000000000C9EEF70091ECF80094F1F800CBF4F700F1F4
      F500EBF0F200A7E5F2004CE1F70008E1FF0000DBFF0000D8FF0000D4FF0022C6
      E700CAD4CE00FAF0EA00FFFBF900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F8FE0051D5EE005F85AD00C2B8B30091E4FF0053E3FF0000DD
      FF0000DBFF0000D8FF0000D5FF0055DDFF009FE0F200FED5C000FED5C000FED5
      C000FED5C000FED5C000FED5C000FED5C000C6C7D100609DCB005CD7F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF5EC00EAD3B300E3C7
      A000E3C69D00E5C99F00D8CBA8000BC7FB0000CBFF0000CFFF0000D2FF0000D6
      FF0000DAFF0000DDFF0000E1FF0000E5FF0000E8FF0018EEFF00F6FEFF000000
      000000000000000000000000000000000000000000000000000000000000FEF2
      DA00FDE8B800D5B8A500FCFBFA000000000000000000CAEEF70084E7F70070E9
      F700AEECF500E9EFF000E4EAEE008DDBEF0032D7F60000D7FF0010CEF4009DBA
      B600FFE9DB009FD3DC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4F9FE0052D6EE005283B300AFB3C20094E6FF0054E5FF0000DF
      FF0000DCFF0000D9FF0000D6FF0057DFFF00A1E0F100FECEBA00FECEBA00FECE
      BA00FECEBA00FECEBA00FECEBA00FECEBA00C6C4CE00609CCA005CD8F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFB
      F800F2E3CB00EBD0A700EDD1A50078D6DE0000D2FF0000D6FF0000DAFF0000DD
      FF0000E1FF0000E5FF0000E8FF0000ECFF0000EFFF0000F3FF0090FBFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FE00FEEFCA00F9E6B900D4B6A300F6F1EE0000000000000000000000000080C3
      DC001DD7F0003ED5ED0094E4F200E5EEF000E2EAED0094D0DD00A1B2AB00F7DD
      C700BED9D70018BCEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4F9FE0052D8ED005181B200AFB1BF0095E7FF0056E6FF0000E0
      FF0000DDFF0000DAFF0000D7FF005AE1FF00A4E1F000FEC6B300FEC6B300FEC6
      B300FEC6B300FEC6B300FEC6B300FEC6B300C7C1CB00619DC9005CD8F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFCF900FCF6ED00EDFCFF000CDCFF0000DDFF0000E1FF0000E5
      FF0000E8FF0000ECFF0000EFFF0000F3FF0000F6FF0009FAFF0081FEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFB00FEF0CB00FDECBA00DCC1A800DDC7BB00F9F5F30000000000C1D6
      E50033C5E300379CAD0024B0C9003FC7E200A6B6B200DABCA600FED6B500DCD8
      CB003CCCF40018BBEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4F9FE0053D8ED005180B000B0AEBD0097E8FF0056E7FF0000E1
      FF0000DEFF0000DBFF0000D8FF005CE2FF00A7E0EF00FEBDAD00FEBDAD00FEBD
      AD00FEBDAD00FEBDAD00FEBDAD00FEBDAD00C7BDC800629CC8005CD8F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007EF0FF0000E5FF0000E8FF0000EC
      FF0000EFFF0000F3FF0000F6FF000EF9FD007CF7F300E7FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFE00FEF4DA00FEECBC00F7E4B800DDC0A600DABFAC00E0C8
      BA00BEAEA40097B6B4008BA49D00B0A89500EDD1B000F4D5B30098D2D700F0FC
      FF00F0F8FB0095C7D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4FAFE0053D8EC00517FAE00B0AABB00ABE9FF007AE9FF006CE8
      FF006FE8FF0072E8FF0075E8FF0088EAFF00C1E2EB00FEB4A600FEB4A600FEB4
      A600FEB4A600FEB4A600FEB4A600FEB4A600C8BAC400639CC7005CD8F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDFDFF000CEDFF0000EFFF0000F3
      FF0000F6FF000EF9FD009FE9D900E9D4AF00F8EFE00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFCF700FEF2D600FEEAC000FEE7B800FEE5
      B700FEE2B600FEE0B500FEDDB400EADABA0096C9C50044A0B50016B2DF00F0FB
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4F9FE0054D8EC004E7EAE00C3AFB900D5CBD400CECDD600CCCF
      D700CFCFD700D1D0D700D3D2D700D9D2D600E2CACC00E0B5B600E0B5B600E0B5
      B600E0B5B600E0B5B600E0B5B600E0B5B600B5B5C700619AC4005CD8F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007EF9FF0000F6FF0009FA
      FF0079F8F500E9D6B400F3E3CA00FDFBF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFBF300FFF9
      F000FFF3E100FFF8F000FFFAF30000000000CCEAF60066D1F20015BEF100F0FB
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4F9FE0050DDEF00407AAC006799C200689AC200689AC300699A
      C3006A9BC3006A9BC4006A9BC4006B9BC4006C9CC5006C9DC4006D9DC4006D9D
      C4006E9EC5006F9FC5006F9EC500709EC6006E9CC4005997C2005BD7F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDFFFF006FFDFF00E7FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBF2FA00FCFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3FAFF0056F2FE002CD9ED002FE1F2002FE3F3002FE4F3002FE4
      F3002FE2F40030E2F30030E0F30031DFF40031DDF40031DCF50031D9F50031D8
      F40031D7F50032D4F50032D2F40033D0F40033CEF50054D1F3007DE0FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFD00FFF3EE00FFE8DE00FFE7DC00FFE6DC00FFEBE200FFF4EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEAB9F00FEAC9F00FEADA000FEAFA000FEB0A100FEB1A100FEB3A200FEB4
      A200FEB5A300FEB6A300FEB6A300FEB7A400FEB8A400FEB8A400FEB8A400FEB9
      A400FEB9A400FEB8A400FEB8A400FEB8A400FEB8A400FFDDD400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFEDDF00FEDBBD00FEDCBD00FEDDBD00FEDFBD00FEE0BD00FEE1
      BE00FEE1BE00FEE2BE00FDDFBA00FCDEB600FCDBB300FBD9B000FAE3CC00FFFE
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFE9
      D800FEDBBD00FEDDBD00FEDDBD00FEDFBD00FEE0BE00FEE1BE00FEE1BE00FEE1
      BD00FDDFB900FCDDB500FCDBB200FAE3C700FEFCF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00FFEAE100FED5
      C100FEC5AB00FEC4A900FEC4A900FEC4A900FEC4A900FEC3A900FEC3A800FEC6
      AE00FED7C700FFF0E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEADA000FEAFA000FEB0A100FEB2A200FEB3A200FEB5A300FEB6A300FEB7
      A400FEB8A400FEB9A400FEBAA500FEBAA500FEBBA500FEBBA500FEBCA500FEBC
      A500FEBCA600FEBCA500FEBCA500FEBBA500FEBBA500FFDFD500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEDDC00058B3ED0025ADFF0024ACFF0023ACFF0022ABFF0020A8
      FF001DA6FF001AA3FF0018A0FF00159DFF001E9DFA00D8D2BC00FAE4CB00F6DC
      C200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFD4
      BB003BAFF70024ADFF0024ADFF0022ABFF0021A9FF001EA7FF001CA4FF0019A1
      FF00169EFF00139AFF009BC1D000FBE7CD00F4D4B400FFFDFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFEBE100FECCB300FEC6AA00FEC7
      AA00FEC7AA00FEC7AA00FEC7AA00FEC6AA00FEC6AA00FEC6A900FEC5A900FEC4
      A900FEC3A900FEC3A800FED0BB00FFF3ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEB0A100FEB1A100FEB3A200FEB5A300FEB6A300FEB8A400FEB9A400FEBA
      A500FEBBA500FEBCA600FEBDA600FEBEA600FEBEA600FEBEA700FEBFA700FEBF
      A700FEBFA700FEBFA700FEBFA700FEBEA700FEBEA600FFE0D500000000000000
      0000000000000000000000000000000000000000000000000000B4E1EF00A3DA
      EB00A3DAEB00A3DAEB00A3DAEB00A3DAEC00A3DBEC00A3DBEC00A3DBEC00A4DB
      EC00A4DBEC00E9D5BC0033B4FB0000D2FF0004D5FF0005D6FF0003D5FF0000D5
      FF0000D3FF0000D1FF0000CEFF0000CBFF0000C7FF00AECBCB00F9E4CA00EFC7
      A000000000000000000000000000000000000000000000000000B4E1EF00A3DA
      EB00A3DAEB00A3DAEB00A3DAEB00A3DAEC00A3DBEC00A3DBEC00A3DBEC00D0CE
      C10023B6FF0001D3FF0006D6FF0006D6FF0003D5FF0000D4FF0000D2FF0000D0
      FF0000CCFF0000C8FF0052BAE800FBE7CC00EEC6A000B1D6DF00E5F4FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFDFC00FED9C600FEC8AA00FEC8AB00FEC9AB00FEC9
      AB00FEC9AB00FEC9AB00FEC9AB00FEC9AB00FEC8AB00FEC8AA00FEC7AA00FEC6
      AA00FEC6A900FEC5A900FEC4A900FEC4A900FFE3D80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEB2A200FEB4A200FEB6A300FEB7A400FEB9A400FEBAA500FEBCA500FEBD
      A600FEBEA600FEBFA700FEC0A700FEC0A700FEC1A800FEC2A800FEC2A800FEC2
      A800FEC2A800FEC2A800FEC2A800FEC2A800FEC1A800FFE1D600000000000000
      000000000000000000000000000000000000000000006CCCE60032BEF50033BE
      F50034BFF50034C0F60035C1F60035C2F60036C3F60036C3F60036C4F70036C4
      F70037C5F700CFD1BE0036B8FB001CDCFF003EE3FF0051E6FF0038E3FF0015DE
      FF0000D9FF0000D6FF0000D3FF0000CFFF0000CBFF00AFCCCB00F8E3C900ECC3
      9D0000000000000000000000000000000000000000006CCCE60032BEF50033BE
      F50034BFF50034C0F60035C1F60035C2F60036C3F60036C3F60036C4F700C6CE
      C30029BBFF0024DEFF0045E5FF004FE6FF0031E2FF000DDCFF0000D8FF0000D5
      FF0000D1FF0000CDFF0054BDE800FBE8CC00ECC29C0057C4E70041BBE8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFAF700FED4BD00FEC9AB00FECAAB00FECBAB00FECBAC00FECB
      AC00FECBAC00FECBAC00FECBAC00FECBAC00FECBAB00FECAAB00FEC9AB00FEC9
      AB00FEC8AA00FEC7AA00FEC6AA00FEC4A900FEC3A900FED9C900FFFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEB5A300FEB7A400FEB8A400ECAF9C00DFA99600DFAA9600DFAA9700DFAC
      9700DFAD9800DFAE9800DFAE9800DFAF9900DFAF9900DFB09900DFB09900DFB0
      9900DFB09900DFB09900FCC4A800FEC4A900FEC4A900FFE3D700000000000000
      000000000000000000000000000000000000000000004CD2E5002BCAF70034C0
      F60035C1F60035C2F60036C3F60036C4F70036C4F70037C5F70037C6F70038C7
      F70038C7F700CFD3BE0043BEFB0044E6FF0082EFFF00A6F5FF0078EFFF0039E7
      FF0005DFFF0000DBFF0000D7FF0000D3FF0000CFFF00AFD1CB00F7E3C800EAC0
      9A0000000000000000000000000000000000000000004CD2E5002BCAF70034C0
      F60035C1F60035C2F60036C3F60036C4F70036C4F70037C5F70037C6F700C7CF
      C30039C3FF0050E8FF008EF1FF00A3F5FF0068EDFF002AE5FF0000DDFF0000DA
      FF0000D5FF0000D1FF0055C1E800FAE9CC00E9BE980056C4E70036C3F600EAF9
      FE00000000000000000000000000000000000000000000000000000000000000
      0000FFFDFC00FED5BC00FECBAB00FECBAC00FECCAC00FECDAC00FECDAD00FECD
      AD00FEDCC400F0E9E000B9E2F1009BE1FC009BDFF900C4E5F000EDE8E300FEDA
      C400FECBAC00FEC9AB00FEC8AA00FEC6AA00FEC5A900FEC4A900FEDCCD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEB7A400FEB9A500FEBBA500F7B9A200F3B7A100F3B9A100F3BAA200F3BC
      A200F3BCA300F3BDA300F3BEA400F3BFA400F3BFA400F3C0A500F3C0A500F3C0
      A500F3C0A500F3C0A500FDC8AB00FEC8AA00FEC7AA00FFE4D700000000000000
      0000000000000000000000000000000000000000000078C8D7001FD9FA0035C2
      F60036C3F60036C4F70037C5F70037C6F70038C7F70038C7F70038C8F80038C8
      F80039C9F800D0D4BF004BC3FB0066EEFF00BBF8FF00F4FEFF00ACF7FF0057EF
      FF0009E4FF0000DFFF0000DBFF0000D7FF0000D2FF00B0D4CC00F7E2C800E7BC
      9600000000000000000000000000000000000000000078C8D7001FD9FA0035C2
      F60036C3F60036C4F70037C5F70037C6F70038C7F70038C7F70038C8F800C8D1
      C40041C8FF006EEFFF00C3F9FF00E2FCFF0090F5FF003AECFF0000E2FF0000DE
      FF0000D9FF0000D4FF0057C4E900FAE9CC00E6BA950056C4E60036C4F700BAEB
      FC00000000000000000000000000000000000000000000000000000000000000
      0000FEDDC800FECCAC00FECDAC00FECEAD00FECEAD00FECFAD00FEDABF00C7E7
      F2004FC6F30006B5F80004BAFA0003BDFB0003BDFB0003BCFB0004B7F90047C4
      F300C1E6F200FED9C200FECAAB00FEC8AB00FEC7AA00FEC6A900FEC4A900FFE7
      DC00000000000000000000000000000000000000000000000000000000000000
      0000FEBAA500FEBCA500FEBEA600EFB6A000E6B19B00E6B29B00E6B49C00E6B5
      9D00E6B69D00E6B79E00E6B89E00E6B99E00E6B99F00E6BA9F00E6BA9F00E6BA
      9F00E6BA9F00E6BA9F00FDCAAB00FECBAC00FECAAB00FFE6D700000000000000
      0000000000000000000000000000000000000000000089C6D30021DCF30036C4
      F70037C5F70037C6F70038C7F70038C8F80039C9F80039C9F80039CAF8003FC5
      EF003CCAF500D0D6BF0049C4FB0051EEFF0098F7FF00C2FAFF008CF7FF0045F0
      FF0008E8FF0000E4FF0000DFFF0000DAFF0000D4FF00B1D6CC00F6E2C700E4B8
      9300000000000000000000000000000000000000000089C6D30021DCF30036C4
      F70037C5F70037C6F70038C7F70038C8F80039C9F80039C9F80039CAF800C9D2
      C3003DC9FF004FEFFF008DF7FF00A2F9FF0068F4FF002AEEFF0000E6FF0000E2
      FF0000DCFF0000D7FF0058C7E900FAE9CB00E3B6910056C4E60037C5F7008BDD
      FA0000000000000000000000000000000000000000000000000000000000FFED
      E200FECDAC00FECEAD00FECFAD00FED0AE00FED1AE00F5E4D3006ACFF60005B7
      F80002C2FC0001C7FD0001C9FE0001CAFE0001C9FE0001C7FE0001C5FE0002C1
      FD0003BBFB0054CAF700F5E2D400FED5BD00D6E7EB00FECCB100FEC6AA00FEC6
      AC00FFF7F3000000000000000000000000000000000000000000000000000000
      0000FEBCA600FEBEA600FEC0A700E7B39C00D7AA9500D7AA9500D7AC9500D7AD
      9600D7AE9600D7AF9700D7B09700D7B19800D7B19800D7B19800D7B29800D7B2
      9800D7B29800D7B29800FCCDAC00FECEAD00FECDAD00FFE7D800000000000000
      0000000000000000000000000000000000000000000089C9D50028D9EB0037C6
      F70038C7F70038C8F80039C9F80039C9F80039CAF8003ACBF8003ACBF90047C1
      E50047C2E700D0D7C00062CCFA0029EDFF0053F4FF006DF7FF004DF6FF0022F2
      FF0001ECFF0000E6FF0000E1FF0000DCFF0000D6FF00BCDBC900F5E1C600E2B4
      9000000000000000000000000000000000000000000089C9D50028D9EB0037C6
      F70038C7F70038C8F80039C9F80039C9F80039CAF8003ACBF8003ACBF900D9D5
      BA0045CAFC0023EFFF0045F5FF004FF7FF0031F5FF000CF0FF0000EAFF0000E5
      FF0000DFFF0000D9FF0073D0E000F9E9CB00E0B38E0056C4E50037C6F7005CCF
      F900000000000000000000000000000000000000000000000000FFFEFD00FED3
      B700FECFAD00FED0AE00FED1AE00FED2AF00F5E4D30046C5F50004BCFA0001C8
      FD0000CEFE0000D0FF0000D0FF0000D0FF0000CFFF0000CEFF0000CCFF0000C9
      FF0001C6FE0002BFFD002FC1F60075D2F60046C4F500FED4BD00FEC8AA00FEC6
      AA00FED9C7000000000000000000000000000000000000000000000000000000
      0000FEBEA700FEC0A700FEC2A800FEC4A900FEC6AA00FEC8AB00FECAAB00FECB
      AC00FECDAC00FECEAD00FECFAD00FED0AE00FED1AE00FED1AE00FED2AF00FED2
      AF00FED2AF00FED2AF00FED2AF00FED1AE00FED1AE00FFE9D900000000000000
      0000000000000000000000000000000000000000000089CCD80039CDDC0031CE
      F90039C9F80039CAF8003ACBF8003ACBF9003BCCF9003BCDF9003BCDF9003DCC
      F60051BAD600CAD7C200D0D6C200A0D7D500A5DCD900A9E0DA00A5E1D9009EDD
      D6009BDCD7009ADCD70098DBD70097D9D700A5DBD200FAEFB500F3E0C500DFB1
      8C00F3FCFF000000000000000000000000000000000089CCD80039CDDC0031CE
      F90039C9F80039CAF8003ACBF8003ACBF9003BCCF9003BCDF9003BCDF900CBD8
      C200FDE0B300F9E3B700F9E6BA00F9EABD00F9ECBD00F9EFBE00F9F2BF00F9F4
      C100F9F5C100F9F4C300FDF4C300F8EAD400DEB28E0056C3E50037C6F70039C6
      F700F3FCFF000000000000000000000000000000000000000000FFEEE200FECF
      AD00FED1AE00FED2AE00FED3AF00FEDEC10064CEF70004BDFA0001CCFE0000D2
      FF0000D4FF0000D4FF0000D2FE0001D0FE0001CEFE0001CEFE0000CEFE0000CE
      FF0000CBFF0000C7FF0001C1FD0003BBFB0022BDF600FEDCC700FEC9AB00FEC7
      AA00FEC7AA00FFF8F50000000000000000000000000000000000000000000000
      0000FEC0A700FEC2A800FEC5A900E3B59C00D1A99300D1AA9400D1AC9400917E
      7200A48D7C00CBAB9200D1B09600D1B19600D1B29600D1B39700D1B39700D1B3
      9700D1B39700D1B39700FBD3AE00FED4B000FED3AF00FFEAD900000000000000
      0000000000000000000000000000000000000000000089CFDB0054B7C50025DB
      FA003ACBF8003ACBF9003BCDF9003BCDF9003BCEF9003CCFF9003CCFF9003CCF
      FA0054BAD30056D1F000D7D6BF00F5D4B000F6D6B300F6DBB900F6DBB900F7DC
      BB00F7DEBE00F7E0C100F8E2C300F8E3C500F9E4CB00F9E5CE00FAF3EE00E3BD
      A000C6EEFD000000000000000000000000000000000089CFDB0054B7C50025DB
      FA003ACBF8003ACBF9003BCDF9003BCDF9003BCEF9003CCFF9003CCFF90046D0
      F600D8CCB400DABC9E00AF957E00C6AD9500F9D8BA00F8D5B300F8D4B500F8D5
      B600EBCDB400E0C4AC00E5C9B300F6E7DC00EFDBCB0059C5E60038C7F70051BD
      DF00BFCBCA00E6DDD40000000000000000000000000000000000FEDDC400FED1
      AE00FED2AF00FED4AF00FED5B000C5E8F20005B6F80002CCFD0000D5FF0000D8
      FF0000D7FF0002D1FD001FC6EB0054B0C30058A9BC0038B8D90006C7FA0001CC
      FE0000CEFF0000CCFF0000C8FF0001C3FE0006BDFB00FEE2D000FECBAB00FEC9
      AB00FEC7AA00FFE4D70000000000000000000000000000000000000000000000
      0000FEC2A800FEC5A900FEC7AA00EBBCA100DEB49B00DEB69C00DEB79C009B87
      7800658E94007CC6CC00ACD0CD00C3C8B800DFC0A100DFC0A100DFC1A200DEC0
      9F00DEC09F00DEBF9F00FCD6B000FED7B100FED7B100FFECDA00000000000000
      0000000000000000000000000000000000000000000089D2DE0061ACB80024E1
      F8003BCCF9003BCDF9003CCEF9003CCFF9003CD0FA003DD0FA003DD1FA003DD1
      FA0054BBD4003ED0F90063C9E000E2C4A900BDA38C00BCA28B00D8C8BA00FEDC
      B900FED6B100FED5B000FBD6B800B99D8400B4977D00C0AC9B00F1DACA00D9D7
      CF0097E0FB000000000000000000000000000000000089D2DE0061ACB80024E1
      F8003BCCF9003BCDF9003CCEF9003CCFF9003CD0FA003DD0FA003DD1FA003DD1
      FA0062BBCF00DCD6C300E3DBD000EDE5DB00E4DECE00D5CAB100D5C9B100D5C8
      B000CDB9A600C0A89200BEA69200DAD1C500A9CDD00039C9F80038C7F7008CAC
      AD00AD917700B69E8800000000000000000000000000FFFDFC00FED3B100FED3
      AF00FED4AF00FED6B000F9D7B6009FB1B20018B7EF0002CBFC0001D5FE0001D7
      FE000BCFF80093A9A300EAC4A000FBD8B100FDDAB200F0C9A500BEA8970030B7
      E20001CCFD0000CEFF0000CCFF0000C7FF0002C0FD00EDE5DC00FECCAC00FECA
      AB00FEC8AB00FED4BF0000000000000000000000000000000000000000000000
      0000FEC4A900FEC7AA00FEC9AB00FECBAC00FECDAD00FECFAE00FED1AE00EBC5
      A5008AE4ED007BF0FF007DEFFD0090D6D80096CFD300A8D1CF00FBDCB900FEDC
      B300FEDCB300FEDBB300FEDBB200FEDBB200FEDAB200FFEDDA00000000000000
      0000000000000000000000000000000000000000000088D5E1005AB1BD0033E0
      F0003CCEF9003CCFF9003DD0FA003DD1FA003DD1FA003ED2FA003ED3FA003ED3
      FB004DC4E20046CBED003ED3FA0082B4B900C6AF9B00C1A9930074C8DC003CD0
      FA003CCFF9003BCEF90042CAF200BAA08800B5987E0094ACA9003CC9F80037C6
      F70068D3F9000000000000000000000000000000000088D5E1005AB1BD0033E0
      F0003CCEF9003CCFF9003DD0FA003DD1FA003DD1FA003ED2FA003ED3FA003ED3
      FB004DC4E20046CBED003ED3FA0055BBD3003DD2FA003DD1FA003DD1FA003CD0
      FA0097BBBB00C7B19E00BBAD9C003ACBF90039CAF80039C9F80038C8F80091B0
      B200B4997F00BFA89200000000000000000000000000FFF6EF00FED3AF00FED4
      B000FED6B000FDD7B100FDD9B100F9D8B400E2BB99008FA5A40034B9DA000AC6
      F60097ADA500FBDCB100FDDDB300FDDDB300FDDCB300FDE1BF00BAE1EE0012B6
      F50002CBFD0000D1FF0000CEFF0000CBFF0001C2FD00D3E4E700FECDAD00FECB
      AC00FEC9AB00FECAAE0000000000000000000000000000000000000000000000
      0000FDC5A900FEC9AB00FECBAC00E9BEA200DAB69A00DAB79B00DAB99B00DABA
      9C00B4ECEE007BF0FF007FECF90017C0F8002CB2DE000DA2D2006CBED100D9C5
      A400DAC29F00DAC29F00FCDCB300FEDDB300FEDDB300FFEEDB00000000000000
      0000000000000000000000000000000000000000000088D8E30053B7C3004DDA
      E60039D3FA003DD1FA003DD2FA003ED3FA003ED3FB003FD4FB003FD4FB003FD5
      FB0043D1F40052C0DA003FD4FB0083B7BD00CDB9A800C5AF9B0065C7DE003DD1
      FA003CCFFA003CCEF90043CBF300BFA79000B79C830089A9A90038C8F80037C6
      F7003EC7F700FAFEFF0000000000000000000000000088D8E30053B7C3004DDA
      E60039D3FA003DD1FA003DD2FA003ED3FA003ED3FB003FD4FB003FD4FB003FD5
      FB0043D1F40052C0DA003FD4FB0055BCD4003ED3FB003ED2FA003DD1FA003DD1
      FA009DC1C400CDBAA900C0B4A4003ACCF9003ACBF80039C9F80038C8F80095B4
      B700BCA18A00BAA08800000000000000000000000000FFF0E400FED4AF00FED6
      B000FDD7B100FDD9B200DCBB9E0065C1E400CCE8EC00FEE9CD00F3D3AC00D7B2
      9200F5D6AC00FDE0B400FDDFB400FDDFB400FDDEB400E8C7A700899B9F0032AF
      DE0003C6FB0001CEFE0000CEFE0000CCFF0001C5FD00B0E0F100FECEAD00FECC
      AC00FECAAB00FEC8AB00FFFAF700000000000000000000000000000000000000
      0000FAC5A900FDC9AB00FECDAD00E8BFA200D8B69A00D8B79A00D8B99B00D8BA
      9C00CCD8C9008BEAF4006EEBFE0000C0FF0000BCFF0028B0DC0007A0D1006ABE
      D100D6C3A200D8C29F00FCE0B400FEE1B500FEDFB400FFEFDC00000000000000
      0000000000000000000000000000000000000000000088DBE6004CBCC90086CF
      D6002BDEFB003ED3FB003FD4FB003FD5FB003FD5FB0040D6FB0040D6FB0040D6
      FB0040D6FB0056BDD4003FD5FB0084BBC300D5C3B500CAB6A30067C9E0003DD1
      FA003CD0FA003CCFF90043CBF300C3AC9800BA9F87008AABAB0038C8F80038C7
      F70037C5F700D2F2FD0000000000000000000000000088DBE6004CBCC90086CF
      D6002BDEFB003ED3FB003FD4FB003FD5FB003FD5FB0040D6FB0040D6FB0040D6
      FB0040D6FB0056BDD4003FD5FB0053BFD90042D1F6003ED3FB003ED2FA003DD1
      FA00A2C7CA00D4C3B400C4BAAD003BCCF9003ACBF80039C9F80038C8F80098B8
      BB00BEA58F00BAA28C00000000000000000000000000FFEDDF00FED5B000FDD7
      B100FDD9B200FDDAB200E1BB990015B3F00005B9F8002EC2F50091DCF800EAEE
      E200FDE8C400FDE2B500FDE2B500FDE1B500FDE0B500FDDFB400FDDEB400E9C4
      A000B1A799004DACC7000BC4F70001C8FD0002C1FC0091DCF700FECFAE00FECE
      AD00FECBAC00FEC9AB00FFF7F300000000000000000000000000000000000000
      0000F7C5A700FAC9AA00FDCEAC00F3C9A800EAC5A400EAC7A500EAC9A600EACB
      A700E5D2B20098E9E80020D0F40000C5FF0000C1FF0000BDFF002AB2DD0008A0
      D10053B8CC00E7D4AB00FDE4B500FEE4B600FEE3B500FFF1DC00000000000000
      0000000000000000000000000000000000000000000088DEE90045C2CF00C0C8
      C90025E7FB003FD5FB0040D6FB0040D7FC0040D7FC0040D7FC0041D8FC0041D8
      FC0041D8FC0056BDD40040D7FC0081C5D100DCCEC200D1BFAF0069CCE2003DD1
      FA003DD0FA003CCFF90043CBF300C7B29F00BFA68F008DAFAF0038C8F80037C6
      F70037C5F700A3E3FB0000000000000000000000000088DEE90045C2CF00C0C8
      C90025E7FB003FD5FB0040D6FB0040D7FC0040D7FC0040D7FC0041D8FC0041D8
      FC0041D8FC0056BDD40040D7FC0049CBEA004CC7E5003FD4FB003ED3FA003DD1
      FA00A8CDD100DFD2C600CEC7BC003CCCF9003ACBF80039C9F80038C8F8009BBB
      BF00C8B19E00C0AD9A00000000000000000000000000FFEEE000FED6B000FDD8
      B100FDDAB200FDDCB300E9C5A0002BB1E4000DD0FC0015DCFD001ED9FC0026CD
      FA005FCFF600B3E5F600F6EDD700FDE4B800FDE2B500FDE1B500FDDFB400FDDE
      B400FDE4C500F8D7B300E1B897008AA2A50040ACD200ABDAEC00FED3B000FECE
      AD00FECCAC00FECAAB00FFF8F400000000000000000000000000000000000000
      0000F2C3A600F7C8A900FACDAB00D9B69A00C1A68D00C1A88E00C1A98F00C1AB
      8F00C1AC900090E4E70014E9F60022CFF20000C5FF0000C2FF0000BEFF0022AC
      D800079FD00044ACC400F8E3B600FEE6B700FEE5B700FFF2DD00000000000000
      0000000000000000000000000000000000000000000088E2EC003EC7D500CACD
      CD0034E7F60040D7FC0040D7FC0041D8FC0041D9FC0041D9FC0041D9FC0041D9
      FC0041D9FC0051C4DE0046D2F3007ECFDF00E4D9D000DBCCC0006ECEE6003DD2
      FA003DD1FA003CCFF90043CCF300CCB7A600C7B29F0095B5B60038C8F80037C6
      F70036C4F70073D5F90000000000000000000000000088E2EC003EC7D500CACD
      CD0034E7F60040D7FC0040D7FC0041D8FC0041D9FC0041D9FC0041D9FC0041D9
      FC0041D9FC0051C4DE0046D2F30041D6FB0055BDD5003FD5FB003ED3FB003DD2
      FA00AED3D900E7DED600D7D2CA003DCDF9003ACBF80039C9F80038C8F8009FBF
      C200D0BDAC00C6B7A800000000000000000000000000FFF2E700FDD7B100FDDA
      B200FDDCB300FDDEB300F0CFA9004DB2D80025DCFD0034EAFF0042EEFF0045ED
      FE0041E1FD0048C6F100C2B6A800FBE4B900FDE4B600FDE3B600FDE1B500FDE3
      BD00A2E0F60075D4F800D2E9EA00FEE4C900F2C9A600E3BB9F00FED4B300FECF
      AD00FECDAD00FECBAC00FFFBF900000000000000000000000000000000000000
      0000EDC1A400F2C6A800F6CCAB00EEC8A600E7C4A400E8C9A600E8CAA600E8CD
      A700E8CFA800AAD7C30005E6FD001DEDF8002AD4F50000C6FF0000C2FF0000BF
      FF0028B3DC0008A0D00059BFD100FBE8B900FEE7B800FFF3DD00000000000000
      0000000000000000000000000000000000000000000088E5EE0038CDDB00D1D3
      D3004BE7F2003FD9FC0041D9FC0042DAFC0042DBFD0042DBFD0042DBFD0042DB
      FD0042DAFC0047D1F10050C6E00080D3E300EBE3DC00E3D9CE0071D1E8003DD2
      FA003DD1FA003CCFF90043CBF400D0BCAC00D0BEAE009DBABB0038C7F70037C6
      F70036C4F70043C6F70000000000000000000000000088E5EE0038CDDB00D1D3
      D3004BE7F2003FD9FC0041D9FC0042DAFC0042DBFD0042DBFD0042DBFD0042DB
      FD0042DAFC0047D1F10050C6E00040D7FC0056BDD4003FD5FB003ED3FB003DD2
      FA00B4D9E000EEE8E300E0DCD5003ECDF9003ACBF80039C9F80038C7F700A3C1
      C500D7C7B900CDC1B400000000000000000000000000FFF8F200FDD8B100FDDA
      B200FDDDB300FDDFB400F7DCB4006AB4CD0040DFFD0058EFFF006BF4FF0072F7
      FF0069F0FE00C7DBDE00FDF0D400FDEAC000FDE7BA00FDE6BA00FEEED100C1E9
      F6000EB9F70003C5FB0004C1FA0034C1F50093DCF800F7E9DB00FED2AF00FED0
      AE00FECEAD00FED1B40000000000000000000000000000000000000000000000
      0000E7BEA200ECC4A500F2CAA900DCBB9D00CEB29500D1B69800D1B99900D1BB
      9A00D1BD9B00D1BF9B0096C8B80007E5FC0020ECF7002AD3F30000C6FF0000C3
      FF0000BFFF0023AED80008A1D1005AC0D100FBE9BA00FFF5DE00000000000000
      0000000000000000000000000000000000000000000088E8F10031D4E100D8DA
      DA0087E2E90032E2FD0042DBFD0043DCFD0043DDFD0043DDFD0043DDFD0043DC
      FD0042DBFD0042DAFC0045D4F4007DD7EA00F1EBE600EAE2DB007FD3E6003DD2
      FA003DD0FA003CCFF90052C9EA00D3C2B200D8C9BC009FBDC10038C7F70037C5
      F70036C4F70035C2F600DEF5FE00000000000000000088E8F10031D4E100D8DA
      DA0087E2E90032E2FD0042DBFD0043DCFD0043DDFD0043DDFD0043DDFD0043DC
      FD0042DBFD0042DAFC0045D4F40041D8FC0044D1F4003FD5FB003ED3FB003DD2
      FA00B8DFE800F4F0EC00E9E5E0003ECDF90039CAF80039C9F80038C7F700A8C2
      C500DED1C600D4CBC000DFF5FE000000000000000000FFFFFE00FDDCB700FDDB
      B300FDDEB300FDE0B500FDE5BC0085B6C6005BE3FD007BF2FF0096F8FF00A2FA
      FF0092F7FF007BE6FC00A6E2F700D4F1FD00E1F6FE00C7EBF50069CDEF000BBA
      F70002CFFC0001D6FE0001D2FE0002C9FD0018BFF700F8E7D500FED3AF00FED1
      AE00FECEAD00FEDCC60000000000000000000000000000000000000000000000
      0000DFB99E00E6C0A200ECC7A700CBAF9400B39E8700B5A18900B7A48A00B8A7
      8C00B8A98C00B8AA8D00B8AB8E008BB9AA0009E3FA0020EAF60030D3F20000C7
      FF0000C4FF0000C0FF0028B2DB0009A1D0005AC0D100FCF5DE00000000000000
      0000000000000000000000000000000000000000000088ECF4002ADAE700E0E1
      E100D2E2E30026EBFD0043DDFD0044DEFD0044DEFE0044DEFE0044DEFD0043DD
      FD0043DCFD0042DBFD0041D9FC0061DAF500F1ECE700F1ECE700C7D7D40060D0
      EB005BCDEB005ECAE600AABBB600DACCBF00E0D4C9007EC1D20038C7F70037C5
      F70036C3F60035C1F600AEE6FB00000000000000000088ECF4002ADAE700E0E1
      E100D2E2E30026EBFD0043DDFD0044DEFD0044DEFE0044DEFE0044DEFD0043DD
      FD0043DCFD0042DBFD0041D9FC0041D8FC0040D6FB003FD5FB003ED3FB003DD2
      FA00ABE2F000F7F4F100F3EEEA0069CDEC0039CAF80038C8F80050C4E900CEC4
      B800E8DED600CCD0CC00AFE6FB00000000000000000000000000FEE7CE00FDDC
      B300FDDEB400FDE1B700FDE6C000A2BDC30074E2FD009CF2FF00C2FAFF00D2FD
      FF00BBFCFF0093F8FF006AEDFD0043DBFB001FC9FA0006C5FA0003D1FC0001D8
      FD0000DCFE0000DBFF0000D5FF0001CCFD008BDEF700FED6B200FED3AF00FED1
      AE00FECFAD00FFECE00000000000000000000000000000000000000000000000
      0000D5B29A00DFBBA000E6C3A400ECCAA800F1D0AB00F5D6AE00F9DBB100FCE1
      B400FEE5B700FEE8B800FEEAB900FEEDBA00C5EBCA000FE7FB0028F0F9003DDD
      F80000C8FF0000C5FF0000C1FF0029B4DC0009A0CF005AC4DE00FCFEFF000000
      0000000000000000000000000000000000000000000087EEF70024E0ED00E7E8
      E800E7E8E80035EEFB0044DFFE0045E0FE0045E0FE0045E0FE0044DFFE0044DE
      FD0043DCFD0042DBFD0041D9FC0040D7FC00CAE2E300F6F3F000F2EDE800E2D6
      CC00D8C9BC00D5C4B600DED2C600E9E0D900DCDAD40049C8F30037C6F70036C4
      F70035C2F60035C1F6007ED6F900000000000000000087EEF70024E0ED00E7E8
      E800E7E8E80035EEFB0044DFFE0045E0FE0045E0FE0045E0FE0044DFFE0044DE
      FD0043DCFD0042DBFD0041D9FC0040D7FC0040D6FB003FD5FB003ED3FB003DD1
      FA005ED5F600F2EDE700F7F4F200E7DDD600C1CBC600BDC4BF00CFBDAC00E3D8
      CF00EEE7E1008FC6D6007ED6F900000000000000000000000000FFF6EC00FDDC
      B300FDDFB400FDE2B800FDE8C200B7C2C00083DDFB00BAF0FD00DEFAFF00FBFF
      FF00D4FDFF00A4FAFF0074F6FF0046F0FE0023E9FE0004E3FE0000E2FE0000E1
      FF0000DEFF0000D9FF0001D0FE0047D4FB00FDDFBF00FED6B000FED3AF00FED1
      AE00FED1B100FFFCFA0000000000000000000000000000000000000000000000
      0000C7A99400D4B49A00DDBDA000CAB19500BAA58C00C2AD9200C5B29400C7B5
      9600CAB99700CCBD9A00CCBF9B00CCC19C00CCC29C00A3C9B1000EE4F8002AED
      F8003AD8F40000C9FF0000C5FF0000C2FE0028B4DB0009A0D0005AC7EA00FCFE
      FF00000000000000000000000000000000000000000087F2F9001DE6F300EFF0
      F000EFF0F00067EFFA0026EDFE002AECFE002AECFE0029EBFE0029EBFE0029EA
      FE0028E9FE0028E8FD0027E7FD0026E6FD0043E4F800D6E1DC00F6F3EF00F5F0
      ED00F3EFEB00F2EDE800F1EBE600E4E4DF0057D9EB0022DCFA0021DBFA0020DA
      FA0020D9FA0023D4F90085D8F900000000000000000087F2F9001DE6F300EFF0
      F000EFF0F00067EFFA0026EDFE002AECFE002AECFE0029EBFE0029EBFE0029EA
      FE0028E9FE0028E8FD0027E7FD0026E6FD0026E5FD0026E4FD0025E3FC0025E2
      FC0024E1FB0097E1E700F5F1EF00F9F7F500F8F6F400F8F5F200F7F4F100F6F3
      F000CADFDD002ED5F80085D8F90000000000000000000000000000000000FDE3
      C300FDDFB400FDE2B700FDE7C100D7CABD00DEF2F700FFFAF000E3F7FE00E0FA
      FF00C5F9FF0099F7FF006DF5FF0044F2FF001EECFF0003E7FF0000E4FF0000DF
      FF0000D9FE0002D0FD004FD6FA00FDE2C300FDD8B100FED6B000FED3AF00FED1
      AE00FEE6D5000000000000000000000000000000000000000000000000000000
      0000B59C8B00BEA38E00B199820097847100A08E7900BDA98F00C0AE9100C4B3
      9400C6B69600C8BB9800CABE9A00CAC09B00CAC29B00CAC49C00A4CBB00013E3
      F60030EEF80040DAF40000C9FF0000C6FF0000C2FF0025B2DD00099FD2005AC7
      EA00FCFEFF000000000000000000000000000000000087F4FC0016ECF900F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F6F6F500EFEAE700E8E1
      DB00E9E1DA00E7DED700EBE4DF00F6F5F400F7F7F70086E2F80015CBF9000000
      0000000000000000000000000000000000000000000087F4FC0016ECF900F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F0EDE900ECE4DF00EEE8E300E8E9E600C0DEE100F0EB
      E50000000000000000000000000000000000000000000000000000000000FFF8
      F100FDDFB500FDE1B600FDE6BE00FAE9CB00FEF1D500FEF5DE00FEF9EA00EAF8
      FA00ABEDFD007FECFE005BEBFE0037E9FE0016E4FE0002DFFE0001DBFE0001D5
      FD0019D1FC00A4E3EE00FDE0BB00FDDAB200FDD8B100FED6B000FED3AF00FED6
      B700FFFDFB000000000000000000000000000000000000000000000000000000
      0000AA998400A99B8500B1A48E00B9AC9A00CABCA900EBD8BD00EBD1AA00F0D9
      AE00F4DFB200F8E5B500FBEBB800FEF0BA00FEF3BD00FEF6BE00FEF9BF00D7F7
      CA001BE9F8003EF3FB0045E0F80000CAFF0000C6FF0000C3FF0023B1DF0008A0
      D2005AC7EA00FCFEFF0000000000000000000000000087F7FF000FF1FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087E8FF000FCEFF000000
      0000000000000000000000000000000000000000000087F7FF000FF1FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087E8FF000FCEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEF0DD00FDE0B500FDE5BB00FDE9C200FEEECB00FEF1D300FEF4DA00FEF6
      DD00FEF7E200E4F3ED009BE4F8005EDEFB003EDCFD0036D9FB0065DBF500C7E7
      E200FDE6C000FDDEB400FDDCB300FDDAB200FDD8B100FED5B000FED4B100FFF5
      ED00000000000000000000000000000000000000000000000000000000000000
      0000DBD0C400D9C2A000EFDDBA00F7EACE00FBF4DF00F2E8D500E3CCA700EAD4
      AB00EFDBB000F4E2B300F8E8B600FBECB900FEF3BB00FEF6BE00FEF8BF00FEFA
      C000DDF7C8001EE8F70039F1FA0055E3F90000CBFF0000C7FF0000C4FF0023B0
      DF0009A0D1005AC7EA00FCFEFF00000000000000000087F7FF0006F0FF0066F7
      FF0066F8FF0066FAFF0066FBFF0066FBFF0066FAFF0066F9FF0066F8FF0066F7
      FF0066F5FF0066F4FF0066F2FF0066F1FF0066EFFF0066EEFF0066ECFF0066EB
      FF0066E9FF0066E8FF0066E6FF0066E4FF0066E3FF0036D8FF000FCEFF000000
      0000000000000000000000000000000000000000000087F7FF0006F0FF0066F7
      FF0066F8FF0066FAFF0066FBFF0066FBFF0066FAFF0066F9FF0066F8FF0066F7
      FF0066F5FF0066F4FF0066F2FF0066F1FF0066EFFF0066EEFF0066ECFF0066EB
      FF0066E9FF0066E8FF0066E6FF0066E4FF0066E3FF0036D8FF000FCEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEECD000FDE2B600FDE6BD00FDEAC300FDEEC900FEF0CE00FEF1
      CF00FEF1CE00FDF0C900FDEEC300FDEBBD00FDE8B800FDE6B700FDE4B600FDE2
      B500FDE0B400FDDEB400FDDCB300FDD9B200FDD7B100FED5B000FFEFE2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0D7CF00D6BE9D00EEDBB900F6E9CC00E9DCC500DBC5A200E3CD
      A700E9D5AC00EFDCAF00F4E3B400F7E9B700FBEEBA00FEF4BC00FEF6BE00FEF8
      BE00FEF8BF00E0F4C60021E8F60041F2FA0053E2F90000CCFF0000C8FF0009C7
      FF0071CEEC0081DAF600CEF2FD00000000000000000087F6FF0000EFFF0000F1
      FF0000F3FF0000F4FF0000F6FF0000F6FF0000F5FF0000F4FF0000F2FF0000F0
      FF0000EEFF0000EBFF0000E9FF0000E6FF0000E4FF0000E1FF0000DFFF0000DC
      FF0000DAFF0000D7FF0000D5FF0000D2FF0000D0FF0000CDFF0066E0FF000000
      0000000000000000000000000000000000000000000087F6FF0000EFFF0000F1
      FF0000F3FF0000F4FF0000F6FF0000F6FF0000F5FF0000F4FF0000F2FF0000F0
      FF0000EEFF0000EBFF0000E9FF0000E6FF0000E4FF0000E1FF0000DFFF0000DC
      FF0000DAFF0000D7FF0000D5FF0000D2FF0000D0FF0000CDFF0066E0FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFE00FEEED400FDE3B700FDE6BB00FDE9BF00FDEBC300FDED
      C400FDECC200FDEBC000FDEABC00FDE8B900FDE6B700FDE5B600FDE3B600FDE1
      B500FDDFB400FDDDB300FDDBB200FDD9B100FDD8B300FFEFE100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E9E3DB00D2BB9B00EDDAB700DDCEB300CFBA9C00DAC6
      A300E3CEA800E9D6AC00EFDEB000F3E3B300F7E9B700FBEEBA00FDF2BC00FEF4
      BD00FEF5BD00FEF4BD00E6F1C2002AE8F40049F3FA0053E3FC0009CEFF0095E6
      F90065848B0075AEBB00D0F6FF00000000000000000087F6FF0000EDFF0022D6
      E50022D7E50022D8E50022D8E50022D8E50022D8E50022D8E50022D6E50014DF
      EF0000ECFF0099F7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087F6FF0000EDFF0022D6
      E50022D7E50022D8E50022D8E50022D8E50022D8E50022D8E50022D6E50014DF
      EF0000ECFF0099F7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEF3E100FDE4B900FDE4B700FDE6BA00FDE7
      BA00FDE8B900FDE7B800FDE6B700FDE5B700FDE4B600FDE3B600FDE1B500FDE0
      B400FDDEB400FDDCB300FDDAB200FDDCB900FFF6EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEEAE500CFB79800CFBEA100C0AD9400CEBB
      9C00D9C6A200E2CFA700E9D7AC00EEDDB000F3E3B300F7E8B600FAEEB900FDF0
      BB00FEF1BC00FEF1BC00FEF0BB00E9EDC10030E7F20042F2FD00A5F2FF006E8A
      8F006066680090D4E100EFFCFF000000000000000000CFFBFF0036EFFF0033F1
      FF0033F2FF0033F3FF0033F4FF0033F4FF0033F4FF0033F3FF0033F1FF0033F1
      FF0099F7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFFBFF0036EFFF0033F1
      FF0033F2FF0033F3FF0033F4FF0033F4FF0033F4FF0033F3FF0033F1FF0033F1
      FF0099F7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFBF500FEECD000FDE3B600FDE4
      B600FDE5B600FDE5B600FDE4B600FDE4B600FDE2B600FDE1B500FDE0B400FDDE
      B400FDDCB300FDDCB700FEECD800FFFDFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F3F100BBAA9200BBAC9900CBBB
      A400D7C7AC00E0D0B200E7D8B700EDDEBB00F2E4BF00F5E8C100F8EBC400FBEE
      C600FEF1C800FEF1C800FEF0C800FEF0C800ECEDCB0033E9FA008AF1FF0080AB
      B10098DAE300EFFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFCF700FEF1
      DB00FEEAC800FDE3B800FDE2B500FDE1B500FDE1B500FDDFB400FDE1BA00FEE8
      CB00FEF1E200FFFDFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3FDFF00CDFAFF00D7FB
      FF00F1FEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFCF900FFF9F000FFF8F000FFFEFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE981F00B09A2100B59E2500BAA5
      2B00C2AC3200C4B23B00B09D42009A926D00BCBAB400DFDEDE00DFDFE000DDDD
      DD00F8F8F800D8D8D800CACACA00EEEEEE00D2D2D200CCCCCC00B3B1B0009185
      8000887D770072695900161412000000000003020200080808000A0A0A000303
      0300A1A1A100C7C7C700C3C3C300FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0DC
      D300DFCDC400AA9C9600A4979100A4979100BFAFA800E1CEC600EEDBD200F0DC
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004BA2CC004DA6CE0051A7CF0053A0
      D0004E98BF004B919500417F7A003B6C6B003D6E7200427F920067B5B70080D9
      C6007FDDC90088B2A2007F816B007A865B006E974A006DAB42006EAE3F006DAE
      3D006DB03F0071B03F006FB43E0071B442007EB55700958F770093898300778B
      860057B3BF004AC3DC0043BAD40049D6EB00EAD9D200B6B69D00BCC39000B9C1
      9000B9C19000B9C19000B9C19100B8C28D009BB68D008CC3AA007ECAAE0077CD
      B6007CD9C0007CDAC10076D3BA006AB3A20062938900676868009B8E8800CAB9
      B200E5D2C900EEDBD200E7D4CB00B8B2AE00F0F4F700ECF2F300EEF4F500AFB3
      B30090868000CAB9B200EAD7CE00F0DCD300B9A32900BBA82D00C0AC3300BEAC
      3300B6A23100AB9A4900A59F8C00C8C8C900C3C3C300C5C5C500D3D3D300F1F1
      F100E5E5E500DEDEDE00F5F5F500F5F5F600B9BABA00EFEFEF00908770008576
      500089732500AE972C007A6824000E0C08002222210032323200343434001616
      1600B1B1B100B8B8B800EAEAEA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0DCD300D9C7
      BF009F8C7200A57B0F00A97D0C00A87E0E009A792900937F5F00A3968F00C1B1
      AA00DBC9C100EAD7CE00F0DCD300000000000000000000000000000000000000
      00000000000000000000000000000000000059C0DA0059BEDB0060BDD9005DAF
      A10063AB560068B144006DB142006EB443006FB444006DB1440066AC440066A9
      440065A6420063A5410069A8440068AC420068AC42006DAE41006EAF40006EB3
      410074B5470073B44C0074A84C007DA44C007E9D6100879085005CBFC1004BDB
      F4004FCEEB003274A4003A96BE0043CDE900F2DED500EBDAD100B1B59500BAC2
      9100B9C19000B9C19000B9C19000B6BC8F007CD0B7007FE1C8007EE0C90081DE
      C80080DEC70081E0C9007EE0C9007FE0C80080E1CA0076D2B800667977009488
      8200B0A19B00C8B8B000D4C2BA00A3A09F00F2F5F900ECF2F300ECF2F200F2F6
      F6008F9193009A8D8800C3B2AB00E1CEC600C1B13700BEAC3600BAA43000AC99
      3C009F967800A6A39800D1D1D000CFCFCF00E5E5E500F2F2F200FAFAFA00FFFF
      FF00FEFEFE00FFFFFF00FEFFFF00E4E4E400EFEFEF00C2C0B900AB983C00A48C
      22009C841F00927A1600B1992C00574A17001D1C1D004946440077706C007870
      6C00A9A3A100BCBCBC00F0F0F000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F0DCD300E7D4CB00BBACA5008B88
      7400A3831D00BA870200C48E0200C28D0000BE8A0000B8860000AB7F0C009A79
      2B00907A4F00978A8000B7A8A100D4C2BA00E3D0C800E9D5CD00EEDBD200F0DC
      D300000000000000000000000000000000005ED5E30064CCBD0061B5790061AF
      44006BB041006BB040006CB03E006BB03D006CB13D006DB13E0070B442006BB3
      3E006BB240006AB03F0068AF3E0069AD3F006AAE3F006BB03F006FB3400072B6
      46007CAF4F007B874B009D895700937E5A0098896E006BDFDD0054F5FF0051E6
      FE003983B500282D7A005F81D3004DDBF600F2DED500F2DED500E3D4CC00B1B1
      9000B9C29000B9C19000B9C28F00B7BC8E007ECDB4007DE0C8007DE0C9007EE0
      C9007CD9C20074D2BB0080E0C80080E0C80080E0C90072CCB6007EDEC500606B
      6500797270008C807B00998C86008C868700F2F8F800ECF2F500ECF2F600E0E7
      E900D6D7D6006C6B71008F837E00BFAFA800C0AC39008F7C24005C4C1300958E
      7800B4B3B500D1D1D000E4E5E400FAF9F900FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00DEDDDD0093895900AF9C3100AA94
      2700A48E2200A791250099811900B1A17E00E5D3CB00F2DED500F2DED500F2DE
      D500EFDCD300C0B9B600EAEAEA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000EEDBD200CAB9B200948C810080957D0082B2
      98008BBFA30096C19900A7B67000B8AB4600C5981400CB940200C6910400BF8B
      0100BA860000B18104009B792200917842008E7C5F00928371009F928B00B9AA
      A300D9C7BF00ECD9D000F0DCD300000000003D788F0064B04D0066A84A004877
      4D006AAF47006CB242006DB140006AAD3E006CB13F006DB341006CB43F006BB3
      3F006CB341006AB13F0069B03F006AB13F006CB340006EB5420077B948007EB8
      50008A955100BC9E6A009DB57B00B1C09100E9D6CA0087E8E3005FFBFD00409D
      BD001D2971001E2A55003043740046ACCC00F2DED500F0DCD300EEDBD200D9CB
      C400B0B58B00B9C19000B9C19000BABF91007AB49D007EE1C9007EE0C9007EE0
      C9007DE0C9007EDEC80079D3BD007CD8C20081E0C90077D3BC0078D7C00072BB
      A600939473008C8E770074726C0068666600F1F5F900C2C9BE00B3B89900ACB2
      8700B0B78900A7AE820095987D009A928D005C5422000403010000000000A1A1
      A100C9C9CA00D3D3D300F9F9F900F3F4F400E2E2E200F3F3F300FFFFFF00FEFE
      FE00FEFFFF00FFFFFE00FEFEFE00E0E0DF00ADA36D00B29D340099852C00C2AD
      3C00C3AE3800B59E2E00B09A2A00AC9C7A00D9C7BF00E5D2C900ECD9D000F0DC
      D300F2DED500EFDBD200DAD6D400FFFFFF000000000000000000000000000000
      00000000000000000000ECD9D000BEAEA600997D3E00959349008EAB7C0090C1
      A10095CDB00098D1B2009AD3B40099D2B4009CD2B100A4C08600B7AC4800C599
      1400CD960400C9920200C28D0000BD890100BA870100B5830100AB7E09009D7A
      2100927A4E00A1938B00C3B2AB00DBC9C100223F7F00548B5900396867004C7D
      60006CB140006BB140006FB03F0059946A005390810066A3500072B4480071B6
      45006EB640006DB342006DB243006FB5440073B6470075B94B007DBC520083C2
      5F0096B46E00A5C88500BBC99A00EDDACE00F1DDD400CECCBE0076CACD0061F5
      F70058ECFA0059EEFD0059EDF8003DACC600F2DED500E5D2C900D4C2BA00E1CE
      C600CABDB500B3B58D00B8C19100BDC4920070977D0081E4CB007DE0C9007EE0
      C9007EE0C9007DE0C90081E1CA0072C8B3007CD7C10081E0CA0077D2BC007FE1
      CC0085A28100BDC39100BBC29100A6A981009CA087008B926C00969C7600ABB1
      8300B8C08E00B9C19000BEC492008F8E7E001613080002000100000000005555
      5500EBECEB00B3B4B300EEEEEE00D6D5D500E5E4E400E0E0E000E4E3E300FAFA
      FA00FEFFFF00FEFFFF00D9D7CD00A59A6000A29339009C8C350093812A00A593
      3800BCA83700C5B23B00BBA7330094865E009E918B00AC9E9700BFAFA800D2C0
      B900E5D2C900F0DCD300DACCC700FFFFFF000000000000000000000000000000
      000000000000EAD7CE00B5A69D009E7E3600AF831200BB912400C7920A00CE9A
      0900C8A42600B9B45400A4C288009CD3B10099D2B4009AD3B4009AD3B4009CD2
      B100A0C59400A4B67200AA9F4D00553E0900551D3400AD494900B17D0300C18C
      0000BD890000B2830A00A07E2E009C8558001A2781003A5D6C00233E82005C9A
      4E0069B0400069AF4200609C55004591E300439DFE004D9AE300529190006AA6
      5D0078B3510079B64E0078B94B007BBA4D007BBB530081BF5D008DC669009ACF
      7C00A5D08D00CCC9A700F1DDD300EFDCD200F1DDD400E6D3CB0096C6B70071AB
      BA0049D6E0005DD9E00076D4E20062F6FB00F2DED500DECDC600B3A7A100B3A5
      9E00B9AAA300847F7800B4B78700B9C19100889573007CD9C3007EE0C9007EE0
      C9007EE0C9007EE0C9007EE0C9007FE2CA0071C5B0007FDFC80074CAB50081E2
      CB0077C3AC00B5BA8C00B8C19000B9C18F00BBC39100BCC19300B5BA8E00B9C1
      9100B9C18F00B9C19000B8C28F009B9F85004D461C00080709000C0B0C001111
      11009E9E9E00DEDEDE00B7B6B700E9E9E900BEBEBF00CACCCC00ECECED00FAFA
      F500E9E8E300B6B0920095905D007E8F90006E8BB9006C88BE00657D98006F89
      A00076806B008C8348008084600075808D00777C8B00817D7F00867B76009387
      8100B1A39C00D7C6BE00E4D2CA00EBE9E800000000000000000000000000F0DC
      D300E1CEC600A7988C00A57F2300AE9D7000C0C1C100DEDFE000CCC8BD00BF9F
      4F00CD960A00D49B0800CB971800C3991900BCB04A00ADB86D00A3BD7F009FC9
      9B0098C8AB00AC5DB600D31ED300A008A0001F0A1E00BF14BA0098935800C5A8
      3300CE9F1500D69D0700D99E0600D7AA3F001A2CB5002C4B89001F3793005B98
      52006CB346006BB2490056926F004698FA004587D90056A0F10058AEFD005998
      CE005790A1005587960072A36A008AC3650089C96B0099D07B00A8D18A00C4CE
      A600E3D4BF00F2DED500F2DED500F1DDD200F2DED400EDD9D10097BAAF004EA2
      AB0061FBFF00619FAC00B1D2DC0052D9EB00F2DED500E7D5CE0080AFA6009E9B
      9500A0938D0080A99F0066978200B8B98C00B5B68A0068AE99007EE0C9007EE0
      C9007EE0C9007EE0C9007EE0C9007FE0C9007CE1C9006EBBA60071CCB50082DC
      C6007FE0C90096B08D00B9C29000B9C19000B9C19000B9C19000B9C19000B9C1
      9000B9C19000B9C19000B9C19100B9C28D00BAA83D004B441D0013120F001010
      10000808080049484900A59F8600A29B8200BBB39200C1BB9F00BEB89800ADA0
      6200A9974200938228007E9AB9005B7CDD006881F000596DC900152443005081
      CE005585D0006793D1006C99DA006F9BDD00739FDF0075A0DD007F9ECD007A8C
      AB00827D7F00A6989200D6C4BC00D4CBC5000000000000000000ECD9D000C8B8
      B000918C800082A389008BAF860098AF9000C4CAC700DBDBDB00ECECEC00E4E4
      E400C2C0BB00D5D2CB00E0E0E200B6995600976D0A00654A0B00865D07007E5A
      0600231C0D000A020A006F086F006D056C000909090095149600A8A7BA00A7D9
      BE00AED5B700C8CCA900E5CEB00000000000193CED001A3FDA0033557D0070AE
      550072B5510075B954004A8A9200479CFF005196BE0075B188006DA8CB005D92
      BD005A86B2005179B0005683AC0075A5960078A19600B8B49A00ECD8CD00F2DE
      D500F2DED500F2DED500F2DED500F2DDD200F2DDD300F0DCD400B9C7BC006CF3
      F30062FFFF0052C8D30054CCD50054FFFF00F2DED500F2DED500A1AFA80075C5
      B10079A79D006AB9A50075C5B200627D6A00B7BF8C0087A689007FE2CC007EE0
      C9007EE0C9007DE0C9007FE0C80080E0C7007FDFC8007BD8C1006CB7A30075D3
      BB007EE0CA007ABEA300BCBF8F00B9C19000B9C19000B9C19000B9C19000B9C1
      9000B9C19000B9C19000B9C18F00BAC29100CFBD4E00D5C55C00BAAA46007B6D
      34006D614900705E16009F872300967F1D00C1AE4800CDBB4B00C6B34100B8A6
      3100B09A2A00958739006C8DC5007D93F300536ADE002C3B8600456AA600729E
      E000709DDC006FA0DC0071A2DE0072A2E0006E9DDD006594D9006B97D90084AD
      E50088ADE1007E849500B1A39C00DFCDC50000000000E7D4CB00AA9D94008593
      8000427895002E6D9F00427D9E0076AB9E00A2CBB400D5DED900FCFDFD00FDFD
      FD00FEFEFE00E2E8E5009F9785002F281B00111010000E0E0E00070707000000
      00000000000000000000B70BB700470647000D0E0D007F1E7F00CDB1AA00E0D6
      C400EEDBD200000000000000000000000000193CEC001A42F200385F9E0070A1
      66004D868D004D909E003A7EBE0046A3FF005A9AC900B7BF9900C8C8A700C9C8
      AE00C0BDAF00A7ADB700939EB4005B8CC10066BAF000C1B5AB00EFDBD200F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F0DCD400EBD7CD00A0CA
      BE0079FFFE0062E2E9005EE5F20063FFFF00F2DED500F2DED500F2DED500BEB5
      B200A3B7AE009ABFB20085A79F0066948900688C750099A47D0078CDB3007EE0
      C9007EE0C90080E2CC0080E2CE007CDECB007DDFCC0081E4CF006EBEA90068B0
      9B007DE1C9007FDFC8009AB68D00B9C19000B9C19000B9C19000B9C19000B9C1
      9000B9C19000B9C19000B9C19000BBC39100D8C76800D5C56000BEA94200D1BF
      A100E2D0BD00B7A14800C3B15100CFBE6400C9B96400B9A64500C3AF4500C3B1
      3C00BDA9370099924D00789ACF00768BE80013173D0038578F0079A6E2007FAC
      E3008DBAEB0095C0EE009AC5EF009BC6EF0095C0EC008AB7EA007AAAE3006698
      DA007BA7DF008CB3E8008B8D9A00CEBDB50000000000BAA89600B4891A00A18C
      2F00094FAE00033C8B00053F8F002A67A2008AC1970082AD8700B7C2B900C9CC
      CA00DCE1DF007FBE890016A11800059006000943090006070700020202000000
      00000000000008000800DC17DC005C105C0019161900B751B100F0DDD4000000
      0000000000000000000000000000000000001939E8001A47F8002E5EC1004B88
      BC003D8FF7003D8CF3003C86E700449FFF00639BCF00C6B6AF00E6D3CB00EFDB
      D200F0DCD400EFDBD200CBBAB3006B99C90062C5FF00B7B3AE00EFDBD200F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F0DCD400E6D3CB00D3C2
      B800AEBFB20083BFBA0083D8D9006FCAC900F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500EEDBD300C0C9C20081CEB90070AE99007DE1
      CB0074C9AE006D8F62006F7A3D00797A38007B833D007B91510079BE9E0069B0
      9C0083E8CE007EE5CA0083D2B400B9BE9000BBC19200BBC29000BAC29000BAC2
      9000BAC29100BDC39200BBC29000ADAC8C00C5B04100B9A44A00D9C5AA00F2DE
      D500F2DED500E8D5C700DAC7AB00DFCEB900E7D4C500C6B49000B5A35600C8BB
      5D00CABC63008089730082A8D9001B2758001A27450076A0E00092BBEA00A8CF
      F300B4D8F800BDE0FC00C3E3FE00C2E4FE00C3E4FD00BFDFFA00A9CFF2008DBA
      EB0074A3DF007EA8E2006988BB00A0938D0000000000DCB86C00D7A526009E88
      38000B52B2000A58A900054798000E49850037710600356D0500427518008183
      800063A3620004C1040001CB010003CB03000A4F09000C0C0C00291329001005
      0F000202020018051800EF25EF00AC1FAD00B848B400EEC9D400000000000000
      0000000000000000000000000000000000002147DE00224FE4003779E1003B91
      FF003B90FE00377EE9003D8FF600439BFF004F94D3009A8F8900B6A8A100C9B9
      B200D7C5BD00DCCAC200B6A69C004C99DF0064C4FF00B6B4B200EFDBD200F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F1DDD400E9D3C300D1B9
      A700BEA89000A7887300A3836400B98C5E00F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500C9C6BC007FD2BC0079AA
      7E0084792700837720007F7421007C742300756B1F00776E21007C6E1E008A83
      81008A8D88008FA69C0092B8AA0096A48F00A9A98C00AAAD8C00ACAE8D00B0B0
      9500B8B59B00BFBCA700C2B8AD00EBD8D000DCCAAC00EFDCD200F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500EEDBD200CCBBB400888B96007896
      B3008BA7C30095BCE200A9CEF100171E3300314B81008BB3EA00A5CAF100C2E2
      FD00C7E7FF00C9E8FF00C9E6FF00C4E5FE00C5E5FD00D6EEFE00D3ECFE00BFE0
      FA0089ADD70022344E00131A2700615B58000000000000000000F0DCD3008A9B
      BA000D50A8000D75C7000E7CCD0016589900478314004D8817003C7010000915
      0A0005C8050001E6010004F804000FC70F0015171500282828001B191A006619
      650076177600731E7400D823D800E47AD700EFD8D40000000000000000000000
      000000000000000000000000000000000000214FE900213BB7003157B000408F
      F9003B8FFF003477E0003A90FD003D92FE003C83DF00627A8D0089817C009489
      84009F928D00A79A940083869100469EF50064C0FD00B6B2B000EFDBD200F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F0DBCE00E8D3
      C500C7AF9200C4AEA100B9A08700CD9A6800F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F0DCD300BFB4AE007A79
      460082761F008073210087822E007E722000776D2300706C2800655F2900736A
      6A00847975008C807B00978A8500A0938D00AA9C9600B7A8A100C4B4AD00CCBB
      B400D2C0B900DBC9C100E9D5CD00F0DCD300F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500E5D2C900AFA19B007090C40088B4
      E700BCDEFB009DC3EC00729AD700324F8A00527AC00094BAE700BDDFFD00B7D9
      F800C6E4FC00CEEBFE00CBE9FE00B4D7F8007497BE00B1CCE200D9F0FE00D4EE
      FE0067788700060708000A0C0B00030404000000000000000000F0DCD3007596
      C7001459AD001268B700175FAC002969A800649436005E962B004C7E1F001644
      170012F3120011FD10003EFD3D002DBA2C0025242500725C6B004F2D4E009B33
      9C00D627D500722D7200CF7DC200F1DDD5000000000000000000000000000000
      0000000000000000000000000000000000002648D400203DBD00192188002851
      A9004290FC003476DA00388BFF00368CFD00387ADB003782E1004270B0004751
      77005B5771007B7176005B79A5004898EF005DB6F200ACA8A400E6D3CB00F0DC
      D400F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500DACC
      C400DAC9C400B9A99B00C9B2A300C2AD9D00F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F0DCD300E5D2C900B9AAA3006C6E
      530076A6790067AD96005E9B8B0068AEA1007AD1BD0078DBC5007ED9C50075C9
      B4006EAA9E006D968B006E7F780069726F007A757300827A7600887C77008D82
      7C00938781009E918B00C4B4AD00E9D5CD00F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F0DCD300D7C6BE0079777F0077A3DD00ABD0
      F500CEEBFE00BFE0FB0097BCE9009BBFEC00C1E0FB00C5E6FE0098C2ED00A1C7
      EF00C8E4FB00D2EBFD00CBE7FD009FC5EC00A0A4A6003B4E6D009CBFE800D5ED
      FD006F7D8600111210001E1E1E0015161600000000000000000000000000AFB8
      D0003A7ACF002666BB002463B9007191C400F0DCD300DFD3C200757563001416
      140029DD280009C409000EA50D00727B6700C1B2AB00EAD7CE00EDD1D300E7A9
      D300E6A0D400ECC4D30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000335CD2001C269300191F8F001924
      89002F5DBF003579DA00368BFF00368CFE003777D7003A82E7003B83E800407D
      DC0027479E001B267E003774CE003E96EF005EA6DE00958F8900BFB0A900E3D0
      C800F0DCD400F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F0DCD400EEDBD200E6D5CF00F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500E7D4CB00C1B1AA008A817D006EB9
      A9006CB5A20072C8B30082E3CD007EE0C8007FDFC9007FDFC9007DE0C8007FE0
      C9007EE0C8007CE2CA0081E4CE0082E2C90091A8830077712C007F7638008684
      610092989D00828B93009E959100DFCDC400F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500EEDBD200C7B7AF0030333D0080ABDE00B5D6
      F600D7EEFE00D6EEFF00D9EFFE00D8EFFF00CAE3EF005B738A0083B1E400A8CE
      F200CEE8FC00D4EBFD00C5E4FD0099BADE00CBC8BE002F3F54006791C6004B6B
      9B0053719E0018191B00383939002A2A2A000000000000000000000000000000
      0000BBB6BD00427BCE00C6C0C600F0DCD40000000000EEDBD200615A57000B0A
      0A00189A18001C2B370043738500627CA40078829700948A8600B7A8A100EAD7
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001921860019208E0019208D001922
      90001B298A003162B6003C8BFE003B8EFF003679D5003E8CF0003D88F0003785
      F1004879D30041418300456DBA004696EA004B89C4004B5A73008E888100B8A9
      A300DFCDC500F0DCD400F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500EAD7CE00C8B8B000918581006CA3960078D0
      BA0080E2CB0083DFC9007DE0C9007EE0C9007EE0C9007EE0C9007EE0C9007EE0
      C9007EE0C9007EE0C8007DDFC9007EE3CD0093B596008B8234008F8121009896
      5200B2C6CD00CCE9FF009CABBC00DBC9C100F2DED500EEDBD200E5D2C900DBC9
      C100D7C6BE00DDCBC300E7D4CB00E9D5CD00B0A39E000606070056718F00ABD2
      F600C9E6FD00D6EEFF00DCF2FE00ADC0C900292E3200405875008AB7E800B8D8
      F800D2EAFC00D3ECFD00BDE0FC00A9C1D800FEF8EB00A4BDDA0095B5D3005A6B
      7F004675C4002730430058585800454444000000000000000000000000000000
      0000C2C2CE006897DC00EAD8D0000000000000000000EAD7CE00484442000302
      02003E896C0089B2E500A2C7EC00A0C2E3006F869C000F0F100028252400C0B0
      A900EEDBD2000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000192A9B001926830019228A001922
      8700191F860025439C003D90FF003891FF004070C3005F61AA00555CA0004E6A
      B200674D7F007F4A6B00774D6F00675F8700364C9A001A2699002A4777008582
      7E00BCADA600E4D2C900F0DCD400F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500EEDBD200D2C0B9009B8E89006FA1950080E4CB007EE0
      C9007EE0C9007DE0C9007EE0C9007EE0C9007EE0C9007EE0C9007EE0C90080E0
      C90081E0C9007EE3CA0080E6CA007CDBC400819479007970430090845E009C97
      8400AEC5D500C4E1FF00A8BCCF00DBCBC300EAD7CE00D2C0B900B0A19B009D90
      8A00978A85009E918B00B3A59E00CCBBB40082797600070606000A0D11004B5D
      6C0089A1B2008B9CAA00505960000707080004060A007094BD0090BCEA00C4E0
      FA00D3EBFD00D0ECFE00BCDFFC00BCCADB00FFF9F000ACC5E600B3C6D900C1D3
      E80092A4C900CDC1C4004D494800292929000000000000000000000000000000
      0000F1DDD500EEDCD400000000000000000000000000EEDBD200423F3E002226
      2A0091B7E500B6D7E900A8B980008C986700AABFA7002A2C2B001F1F1F00706B
      4800C5B5AD00F0DCD30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000192BA70019299900192DAC00192F
      B000192CAB00254BAE003E8FFC003B91FF00585F9A0094526D0094536C008A4C
      6800663E5A00814C660092506C008A4F6F0036297A00192797001A2B9F00273D
      8C0089898400CEBEB600EFDBD200F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500E1CEC600AC9E970074958C0080E3C9007EE0C9007EE0
      C9007EE0C9007EE0C9007FE0C9007CE0C9007FDFCA007FE0C9007EE1C90082E2
      CA0076C3B1008FB4A900ADB7B000C2B8B200E2CFC800F1DDD400F2DED500EAD7
      CE00B7BDC800C6E5FF00A4BBCC00D6C4BC00CEBDB5009D908A00766E6D00534E
      4D0048444100675F5C0081777300978A85005A545100131414000E0E0E000000
      0000000000000000000000000000000000001119220086B2E1009CC4EF00C9E4
      FC00D3EBFD00CEEAFF00BCDFFD00C8D4E000FEFBF500A5C2E500B9CBDA00D6E3
      ED00AAB0BD00EAD7CE00EBD7CF00B0A19B000000000000000000000000000000
      00000000000000000000000000000000000000000000F0DCD300807C7F0098B0
      C10089AFDE00A7B354002A2A1C00010001009FA0100077761700111109002E2D
      26009F975A00ECD9D00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001930BB001933BC001939CD001C3B
      D8001C3BD3001C3FCF002A64D2003E99FF0059629E0090536F00975270009857
      7200884E700073537A009D6180008B587600382E890019289F001926A2001A2D
      AC00364F9700B7ABA400E8D5CC00F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F0DCD300D2C0B9007F8781007DDEC7007EE0C9007EE0C9007EE0
      C9007EE0C9007EE0C90080E0C90080E2CB007EDDC3006FC7B10073C7B2006D81
      7A00D9C7C100F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500ECD9
      D000ADACB400C6E5FC00A5BAD000C6B6AF00A5989200464243000C0B0B001515
      1500171717000A0A0A0008070700585350004C464400161616000F0F0F000000
      0000000000000000000000000000000000002D39480090BBED00A5CBF100CAE6
      FB00D3EBFE00CDE9FE00C0E2FE00C6D6E500F7F8F5009BBDDC00BBD0E200DCE7
      F000A7AEBC00E9D5CD00F2DED500F2DED5000000000000000000000000000000
      00000000000000000000EEDBD200EAD7CE00F0DCD300ECD9D00072767F00BBD2
      E300ABB887006F6F1700525252001C1B0700B0C2A00081908E00A7A551008E8D
      2700AEAA3E00F0DCD30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000192FA900192C9C001B2AA1001B29
      9D001A268900397EDB003E91FC003999FF005166A0009E5877009A5378009C5F
      8100585C93003F89E6005582D2004F75B50019299B001928A20019299F001929
      A6001F36B600858AA200E3D0C800F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500EEDBD200C8B6B00071B3A4007EE0CA007EE0C9007EE0C9007EE0
      C9007FE1C8007DE0C80074CEBA007AAE920094A580007FD3BC0083E7CF00849A
      9200E9D5CD00F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F0DC
      D300A9A7AE00A9C4E300A7C0DB00C4BBB7005953510010111000353535003131
      3100191919000D0D0D000505050000000000201F1F00141414000F0F0F000000
      0000000000000000000000000000000000003241530093BFEE00AAD0F300C9E6
      FB00D2EBFE00CBE9FE00C9E9FF00A2B6C700D7E0E900ADCFEB00AAC8E3007A85
      9600898A9800E7D4CB00F0DCD300F2DED5000000000000000000000000000000
      00000000000000000000E7D4C700B6A98C00A89A9400B3A59E002A2726000000
      00007473070048480B0041412C00A5AF5F0068778600A4C0D3008B878700ECD8
      CF00F1DED4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A2EA4001A2A960019238F001925
      8E00192A8A003E8DE9003D97FF004097FF00476FB9006C598B00876592006A70
      B6003B7DDC003C99FF003D93F0005097DF00192B96001928A0001928A3001926
      A9001C32BD006271B200E4D2C900F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F0DCD300BEAEAA0077D6BD007DE0C9007EE0C9007EE0C90080E0
      C90077D1BC0072C2AE008AAA8D00AAB28400AFBA8D007EDDC60082E6CE008A9B
      9400EEDBD200F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500D1C4C3009DB5CF00A5C2DB00B1AFB4000E0D0D0036363600313131000B0B
      0B0000000000000000000000000000000000000000000E0E0E000F0F0F000000
      0000000000000000000000000000000000003141520098C3F000AFD4F500CAE6
      FC00D0EAFE00CBE9FF00CBEAFF006C8396007A91AC00BFDDF000C4E3F7004458
      740094909800E4D1C900F0DCD300F2DED5000000000000000000000000000000
      00000000000000000000D2C1B9007874350067661A006966240069671D006060
      0E0092931300ADAC1000AEBF6C00D1EAF900B4CFE300A8C5D80091779B00D4C2
      BA00F0DCD3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A268D0019238D0019248D001925
      8F00192C8B004496ED00419EFF003E9AFF003982E2004197FB00418DF5003793
      FF003A95FF003E99FF0041A6FF0056A2E6001929920019279C001927A2001928
      AD001E34C5005B6DBD00EBD8CF00F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500D2C0BB0071CAB1007EE0C9007DE0C80080E1CC007ACE
      B5008CC1A200B0BA9100B0B78600ADB485009DB38E007CE0CA007EDEC800A19F
      9900F0DCD300F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F0DCD300AFADB700B5B0B800E4D6D10017171700323232000A0A0A000000
      00000000000000000000000000000000000000000000050505000C0C0C000101
      0100000000000000000000000000000000002C3948009DC6F100B1D6F600C9E6
      FD00CFEAFE00CAE8FE00C8E6FF009DBACC00829EB1009BBACB00B6D5E80091AB
      C600BAABA600E2D0C700F2DED500F2DED5000000000000000000000000000000
      000000000000F0DCD300847A7500232323000E0F030019190300131304000C0C
      0A000B0A0A000505050044556600C3E0FA00D0E9FC008189A000BE10C500B275
      A400ECD9D0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001924900019239000192390001924
      90001A2B8C00479BEF0042A0FF00409FFF00398CEE003A9EFF003C97FF003A94
      FF003E96FF003E94FB0047ABFF005AA9EB001A29940019289E001A27A5001C2A
      B500223FD0007785C700EFDBD200F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500ECD9
      D000DDCBC300D7C6BE00DBC9C1008AA59F007EE0CA0079C2AB008BAD8B00B2B7
      8600B5B98E00A8BC9F00A1AEB100B5B98C0079B699007EE2CA0070B7A400D3C1
      BA00F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500E9D6CF00F1DDD500F2DED5001B1B1B001E1E1E00010101000000
      0000000000000000000000000000000000000000000000000000050505000101
      01000000000000000000000000000000000011181F009BC1E700B0D4F600C7E5
      FC00CCE8FE00C9E7FE00C8E6FF00AFCEE000A6C2D6009FBCCD00A2C3DA009BA0
      AF00DBC9C100E9D6CD00F2DED500F2DED5000000000000000000000000000000
      000000000000F0DCD300615956001111110002020200070707004B4644005D57
      550019191800391139004909490070648A00939FB3009F17A200DA02DA00BD23
      B900DFCDC4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001925880019258D0019248E001924
      8D00192889004799E60043A6FF0043A5FF0045A2FF003EA3FF00409CFF003A96
      FF003A8DF5003987E90044ABFF0054A2E6001B2595001D2C9D001E2BA8002134
      BD002E4CD300B5B1CD00F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F0DCD300E7D4CB00CCBB
      B400A6989200978A85009E918B009A8E89009AAA8800A5AC85009DA79300A7BA
      C400BAD5EB00C7E5FF00A2B3BA009FAF83007DDAC30081E2CB0069898000D6C4
      BC00F0DCD300F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5001616160012121200000000000000
      000000000000000000000000000000000000000000000C0C0B000A0808000000
      0000020004000902150002000800000100000306080088A7C400AED2F500C2E2
      FC00C8E7FE00C8E6FF00C7E6FF00B5D4E800C4E3F50099B5C90094A8C6009084
      7F00C1B1AA00E9D5CD00F2DED500F2DED5000000000000000000000000000000
      000000000000000000009085800018181800161616001919190091868100EEDB
      D2008C827D00C132C000D609D500DE0EDE00CE0ECD00E811E800E513E500D30E
      D300BC9EA800F0DCD30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B2795001B2690001A2488001B26
      8A001A298B004185CD0051B5FF004EB0FF0047AFFF0045A2FB003A90F7003990
      F9003587EF003B8DED004094F200325AAD001C2798001F2C9E002230AC00263C
      C8005969CC00EEDAD400F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500EEDBD200D9C7BF00B5A6A0009588
      83005A5251004842420059515100766B6900989E750099AFC200C8E5FF00C6E3
      FF00C3E1FF00C2DEFA009BA8890079C4AB0081E2C8006AB0A00072B3A300CCBB
      B400F0DCD300F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500111111000C0C0C00000000000000
      0000000000000000000000000000000000000000000048454400766C67000401
      0B004A178F006F20D0005515A9001E0740000301040042525F00B1D7F900BDDE
      FB00C6E5FE00C6E6FE00CBEAFF007E8F99008FA3AC007A8BC1006B32CC007134
      BC009A8A9100D9C7BF00F0DCD300F2DED5000000000000000000000000000000
      00000000000000000000E7D4CB005F595600393736006E666300ECD9D0000000
      0000EEDBD200BA5DB000E11BE100FA3AFA00EA23EB00D208D200D40BD400ED35
      EE00B949B100E9D5CD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F2C95001D2993001B2692001A25
      8C00192686002547920069BEF7005AC4FF0054B3FA004090E7003B8FF000368B
      F6003F91FC004083E1004A89DD003D78DA001F319300202C9D002332B1002C43
      C500BFB4CF00F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500E3D0C800B3A59E00807571004B44
      42000A0A0A000808080012121300161718006C735D00BDD7EC00C2E1FF00C2E1
      FF00C6E5FF00B1C4D1007DB69A007EE2CA0074C9B3007CDCC30075CDB700BAAA
      A500ECD9D000F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000908080008080800000000000000
      000000000000000000000000000000000000000000006F696600E8D6CD00583C
      71008131E2007825DC007621DE006B1ECD00300C6000090914009CB7CF00BDDF
      FC00C4E4FE00C7E7F7006F7E8500030404001A1531007040D100893CE5007F2D
      E3007D45B600CFBEB600F0DCD300F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECD9D00051404C00C41AC400FB3AFC00ED19ED00DC07DD00C231BD00D413
      D500DD2CDC00DBC7C10000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027359C00223097001F2E95001D2B
      94001A2990001A257E0028499A00447EC900294EA300408CE5003995FA003896
      FF003373CD006B9AE1006894D500418BE800458BDC0020329A002033AF006C6E
      BC00F1DDD400F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500C4B4AD0085797400110E0E000808
      0800080808001D202500B3CCE300C2E0FB0098AFC2008598B000C1DEF400C5E1
      FD008DA0A50076B9A6007DE3C90080E0C70080E0C9007AE0CA0079DEC400A79D
      9900E9D5CD00F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000201010003030300000000000000
      00000000000000000000000000000000000008070700CCBBB400F0DCD300B99C
      B800812FE4006B16D5006D19D6007620DC007521DC004D18960027223D007B8F
      98008090A4004C37800026094E00230D44007331C4009345F300A056F6009449
      EE007425D300CDB9BC00F0DCD300F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0DCD30054504D003B163B00EB1FEB00FC2CFC00E815E800CC97B900D02B
      CE00E718E700DBB0C40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F40AA002A3AA200263397002130
      92001D2F8C001C2A89001A2486001B2D8D003264BC003E9CF9003B9AFF003A96
      FF003893FF00368DFC00398BF600398CF0004CAAFF00335CB5002838A200D8C6
      CB00F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED50092837E0029242300080808000808
      0800080808008192A600749DC2007BA5CB00BDDAF600C1DEF4008799AE0098AC
      BA00749689007EE5CB007EE0C9007DE0C90080E0C90079D8C10081E6CE008C9A
      9300E5D2C900F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000E0D0D0001010100000000000101
      010000000000000000000000000001000000635A5700F0DCD300F0DCD300BFA5
      B9007F2DE1006C17D400711DD900731EDB007724DD007D29E3007226D1003C11
      78005515A5007925DF007622DD00701DD6008533E7009748F400A156F7009A4F
      F2007826DD00D1BCC100F0DCD300F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1B2AA0032313000A327A300FA30FA00F32BF300D492C100EAB4
      D400E028DE00E9C5D00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D53C0003548B5002D3DA2002834
      960022308D001E308B001B2B86003C78CC003C7ACF00295AAC003D9CFF004594
      EC004A90E1003C8DF8003A8DF8003F7ABD004C8BD1003053AC004D539B00D2C1
      B900E6D3CB00EDD9D100F0DCD400F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500473E3C00352F2E001F1C1B000808
      08000F101100B1CCEC00AAC4E2009FBCD900B7D5F000C3E1FF00C4E3FD008498
      B10078747D0078BCAA007DE1C9007FE0C9007EDFC70077CFBA0080E4CC0087A2
      9800E1CEC600F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500A396920005030300000000000000
      0000000000000000000001000000221D1A00E4CEC300F2DED500F0DCD300C1A7
      BA007E2DE1006D19D6007B28E0008130E400802EE3007F2DE3008533E8008735
      EA007522DB008835EA007825DC007827DC007A28E0009343F1009C4FF5009748
      F3008034D900E4D0CD00F2DED500F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1CFC700C89FB600F534F500F82CF800DE95CB000000
      0000EED6D2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A68C4004158BD00394CBB003040
      A50027389000213189001D2E820023448500243C89001D3786004499F900304F
      6F0076878B005996EC003C93FE00305373007C8892002C4191004A4D8B00A295
      9000B5A6A000C4B4AD00D5C4BC00E4D2C900EFDBD200F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000808080008080800080808000808
      08002F333800C7E7FE00C0DFFA00C0DDFD00C2DFFD00C7E4FE00C3E2FF00CAE8
      FF00A3BBD600808381007FE2C80080DFC80074D0B9007EDBC4007FE2CA0084AA
      A000E1CEC600F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500A6958E001E1D1C000000
      00000000000000000000453C3700D0BBB200F2DED500F2DED500F0DCD300BFA5
      B7008030E400701BD8008334E4009348ED00954DF0009145EF008C3FEB009041
      EE008D3DEE007D2DE3008233E200873CE400731EDB008837E9009748F4008C3B
      ED009C62D300EEDBD200F2DED500F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0DCD300E969DF00F521F500E9C2D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6D2D5009E97C1004656B400394B
      BC002E3FAD0026379B0021328E001D2996001B2A90001C278A003066BD004388
      DC005D85B0003F76C5003994FF00408FE8005682B5003964AA0023287D006461
      8100847A8000928682009F928D00B5A6A000D3C2BA00EDD9D100F2DED500F2DE
      D500F2DED500F1DDD500F2DED500F2DED5000808080008080800080808000808
      080034394100A2B8C8009CB3CC00C4E2FF00BBC8D500686B6C00B5D1E5007C8B
      9E00768799009B92920070B9A50080E1C8006BB5A1007EE2CA007EE1CA007BA9
      9C00E1CEC600F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500E6D2C900B4A2
      9A00998A8300C9B4AA00F1DCD300F2DED500F2DED500F2DED500F0DCD300BCA3
      B5007D2EE100731EDA008738E6009C54F200A560F800A760F800A25BF7009B4F
      F4008836EA008B39EC008E45E9008A3FE5006F1CD7007926E0008937E9007D29
      E200B791C700F0DCD300F2DED500F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0D9D400E9B7D200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500CEB9CB00545E
      AD00344BBA002C40A80025368900203184001C2F8A001B2B92001B288D003266
      BB003672D1003575D5003675D7003A85ED003E8EF6004088E200203380001A24
      78001D287800383C820058538200867A8500AC9F9900DECBC300F0DCD400F2DE
      D500F2DED500F1DDD500F2DED500F2DED5000908080008080800080808000808
      08001E2127008E949B00AAC2D800C2E0FF00BFDFF700B7D0E200BFDBF4002528
      2C0008080800897C7A0075998E006EB4A0007AD9C20080E0C9007FE1C9007DAC
      9E00DFCDC400F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F0DCD300BCA7
      AF007C2BE0007824DE008738E6009F58F400A864F700AA67F800A762F800984C
      F2006F1BD6008A39EB009C56F1008438E3009548EF007522DB007C29E0007223
      D100C9B7B500F0DCD300F2DED500F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500F2DED500D3BF
      CC004354B800324BBB002E3EA40025328F00213092001C2B81001A2885001929
      9100192B8D00192A900019298D001A298D00213892002E57A90022398B001927
      8700192783001B257E001A2A85001F2A8800736E9900DECCC400F0DCD400F2DE
      D500F2DED500F2DDD500F2DED500F2DED500CCBAB400A7999400766A67003732
      330009080800ADC1D000A0B9D700C8E8FF008FA4BC00798A9B0091A4BB000F10
      110008080800786D6C005D6A630076CEB8007EE0C9007DE0C8007EE1C90078A8
      9C00E3D0C800F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500B8A69D0000000000D0BFB700DDCB
      C300E1CEC600DFCDC400CBADB4008F596900AA7C9A00B9AAA300C8B8B000D7C6
      BE00E1CEC600D7BDBE007A364C00638D46004AAEEB0039799200761C4A008C21
      5800311925005E173A001F181B00A98C98008A2156006B1943005E3A4C00717C
      AE008696BD006B1C45009D457000DDCBCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFD4CC00D3975D00D9854D00BD5833009D766F000000
      000000000000000000000000000000000000309577001795C500D9E8E900F6F3
      EF00E5E0DC00CBC7C30067BECE002FCEEF005FE1F80092F5FF0061E2FA0020C6
      E4006DE8FC006EEDFC00A0FAFF008CEEFC0075ECFB0043DAF7002CD4F2002CD5
      F30030D6F5003BDBFA0046E2FE0050E7FE005AE9FF0063ECFF0077F4FF008FF9
      FF004CE5F90078EBF70056E5FC002ED4EF00D4DCD800CED4D000DCE1DF00C4CB
      C600EBF0EF00EFF3F200F6F8F900EEF1F100CAD2CE00A0ABA500958A8500D7C6
      BE00EFDBD2006953BE002C24C900363ED8002E13DF002D00DF004050C2005D7B
      CB00320CE0003001DF00301DCF003B3CC0004026AA00998AA100E9D5CD00F2DE
      D500F2DED500F2DED500F2DED500F2DED50089654000B2999B00B9AAA300C1B1
      AA00C6B6AF00C4B4AD00964A7F0066740D00784A3F00A68F9300B0A19B00BBAC
      A500CAB9B200BD97A900706C1B008A6A99007F82DB005BC3ED003A2D2500841B
      56004F474A002C2B2B0026202E006B6869002B091C001E061300756C6E00881C
      59007F1A5300400D2A008A1D5A008D235E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8B26700F5C27700FDF3CF00FBE2AB00B54D20009E8F
      8F0000000000000000000000000000000000B39C14002F939900218ABE0089B1
      BD00AAB8B90077D2DE0054E6FB0034D8F10063E1FA0088F0FD004EDDF60030CF
      EA0062EAFB0089F0FD009DDECB00B0DDC800A5EEE80084F0FC003DD7F4002AD3
      F10028D1F10031D6F60043E1FE0051E5FF005CEAFF0068EEFF0068F3FF0093F7
      FF0063F0FD0053DCF50064E9FC0035D5F100E1E7E500C1C7C200E9EEEC00BDC3
      BE00EEF2F100F0F4F300F6F9F900F5F6F700DCE2E000C5CEC9009FA19D00C8B8
      B000EEDBD200E5D2D0003E24BE002F2BCE003331DD002C0EDB0066A7AE00B3E0
      E0008A8AEA002C00E1003A59B000A7DAD7004E3CCC007E6BA500E3D0C800F2DE
      D500F2DED500F2DED500F2DED500F2DED500934440007A632D00945D7600A477
      9200A5769300904C75007A5D2C00605C29004D96800076484B007A394B00915B
      7500B5A6A000C5B5B0007F5751009561D1009070D60071D0F4004C7A4F000901
      07006C5F7C009688AA00C2A7E70070579100473E5300352B430082807F00510F
      3700935F7D0067274E0088185D00A35180000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9E2DA00F3A24000F9D38F00FAD59200F4B46100DD7621008E55
      530000000000000000000000000000000000D38A0300DDA3040096A5450056C9
      CE0073E7FB00AAFDFF007CF2FE0054E4F90069E6FB0072EBFC0031CEEA0056E0
      FA0051DCEF009DF0EE00E1EBDE00FFFDF900D9E2CC00A3E2D7007AEBFC002FD5
      ED0027CFEF002ED3F20040DDFB0052E6FF005DEBFF0067EFFF006DF1FF0080F5
      FE0078F6FF0039D2EE006BECFC0036D5F200CDD2CF00BBC1BC00E8EDEC00BEC6
      C000D2D9D600D7DEDB00E7EBE900F0F3F300EBF0EF00DDE4E100BCC6C000BDB0
      A900F0DCD300F2DED5009984C2002915C300333AD6002E1CDC006AA8B300C3E4
      E800E1EBF800320DE0003C4EC100ABDBDA00908CDF005842AB00DFCDC400F2DE
      D500F2DED500F2DED500F2DED500F2DED500932D670095493E007E692100756C
      1D00756A1E00958E4800D6B8B200A19690004DA6B10057A4A600767B36007471
      2B009A6F8300BDADA600AE919C009083D4008EAAE80084D3E10054966D0089AB
      CC00CDB7EC00C0A4E600C8B0EA00AD89DF00D5C3EF00B89AE1005C4879001E16
      2900A09D9C005C0D420077125500B17698000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9E4DE00F3A74600FDE6AE00FBDDA100EB7C1800D8620C00935E
      5D0000000000000000000000000000000000D38B0000E89E0000E59A0000AE97
      140082D7C70093F3FF009DFAFF006EECFE0070EEFD005BE4FA0035CDEB002ECD
      EB0088F2FA00C7E5D900FFFFFF00FFFBF400F6EFE900D3D9C500A2EBE10053DE
      F5002ECEED002ED1F0003CDAF70051E6FF0061EDFF006CF0FF0076F4FF0069ED
      FD0089F8FF002ED3F0006DEBFC0037D7F300BDC3BF00C9D1CC00AFBAB400B0BB
      B600B7C1BC00B6C0BB00B7C1BC00D5DDDA00EBF0EF00EBF0EF00C7D0CB00C5B9
      B200F2DED500F2DED500E6D3CF003C23B9002F2ACD00302DDE005784BC00BFE2
      E600F7FCFC004C36E300342AD200A3D6D500BDBFEC00432FAC00DFCDC400F2DE
      D500F2DED500F2DED500F2DED500F2DED500BC7EA40096374A00D1AAAB00D7B8
      B700DBC0BE00C38F9200CCA2A4009C51590046818A0070ACE9009561D1009461
      CE008D779300B1A39C00C6B6AF008BAF900088C0A00063A990003CACD70057B7
      ED00CEB8EC00B18EE100C5ADE900B391E100DDCDF100CCB5EB00B797E3008E6F
      B8004341410040082F004F1F4000A04A84000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECAD5A00FBE2AD00FEF2C700F8CF9200C0592500AA99
      990000000000000000000000000000000000E39A0100D68E0000E2970000E79A
      0000BEC06E0082E0DE009DFBFE0087F9FF0072F1FE0045D8F10020C7EB003AD6
      F000A9EAE500F7F9F600FFFFFC00FBF8F100F5ECE600FDF9F400C0D4BE0094F0
      FD002ED2ED0032D3F2003CD9F50051E3FE0066EDFF0075F2FF007CF7FF0062EA
      FA0082F1FC0035D8F40067E6FD004BDBF400E2E8E600B5BFB900B7C2BD00E5EC
      EA00DEE4E200D6DCD900D6DEDA00AFBBB500D0D8D500E8EEED00C2C8C300EAD7
      CE00F2DED500F2DED500F0DCD3008B79B8002714C3003237D9003944D3009AD0
      CE00F5FDFC00533DE5002E05DD008BBBCE00C6C5F100402BB000E1CEC600F2DE
      D500F2DED500F2DED500F2DED500F2DED500D1ADB9009E486A0089566600D0A8
      AC00D5B3B500A4525F0098394900983949004A4646007DD6F6008D99E200946A
      D40084A8B7009D9A8D00B5A6A0007EA1880052A3980040B5ED0041B6ED0041B6
      ED00A4B4EB00B08DE100B08DE000B99AE400968AA500BFB1D300C8B0E900BB9C
      E4005B41800000000000A2819400A75B91000000000000000000000000000000
      000000000000000000000000000000000000B6C0BF009B9489008E7B6B008A75
      64008C7B6C00958F8600A8B3B400000000000000000000000000000000000000
      00000000000000000000E1C69B00F3BE7C00FEF5D700F8DDB200A13B24000000
      000000000000000000000000000000000000D88F0000DC940000D4890000DD92
      0000E8B14000C6DBBC008DE1CC0099FBFF007CF4FF0040D8F4000BBCE00085F2
      FE00D0E8DB00FFFFFF00FFFEFB00F4ECE600FAF6F100F9F3EF00E9D8CB00A8DF
      CC005CE0F80033D0F00045DDFA0051E2FE0067EDFF0078F4FF0080F8FF0070F5
      FF0067E6F70043DDF2005CE2FC0046DBF600CBCEC900ACBAB200D1DAD6009398
      96001A1B1B00070808003F424100B3BFB800B4C0BA00D1D5D100CDC0B900E3D0
      C800E5D2C900E5D2C900E5D2C900CABBB700302A96003132D600302CE1004538
      DC008478EB002F05DF002F00E0003E2BD9005955DB004A429200E3D0C800F0DC
      D300EEDBD200EEDBD200EEDBD200EEDBD200BC89A700BF8C9A0077779600642C
      400096364B0096364B006122310096364B005F232F006F9B6E0096E0EE009AE6
      FA0087BB950059926A009E997B008F935A0055A9A7004BBBEE004BBBEF004CBB
      EF006EB4E900B18EE1009C70D800A891C000666945004C4C4200C4B4D900C5AC
      E800A47FD70027262500DAC5CC00AB6298000000000000000000000000000000
      00000000000000000000C5D2D300968575008D6C4F009C7E61009B7D5F009778
      5A0094735600906F5100846247008E8276000000000000000000000000000000
      00000000000000000000D7DFDA00E6914000FDF7E400D9845700A9847D000000
      000000000000000000000000000000000000E0AD4C00DC940000C57D0000B971
      0000BE770200F4EFE800CAD6BA0076C7BD0074F1FF002DCCEB0035D2EC009BD7
      C400F5F2EE00FBFBFB00E8E3DD00EEEAE700EDE9E800E0CEC700E5D2C900C0CB
      B20099F3FD003DD8F50054DEFB005CE3FB006CEDFF007BF5FF0087FBFF008FFA
      FF0053DFF50051E2F50058DCFB0048DAFA00E7D5CD00B5B4AD00CDD4D1005255
      54003A3A3A000D0D0D0000000000343835008A878300958A8400A2958F00A698
      9200AC9E9700AC9E9700AC9E9700AA9C96003D38350013163700282E87002C1F
      B3002F1ACB00321DD3003121C7002B279F0025255200423D3900D2C0B900CEBD
      B500C4B4AD00C1B1AA00C3B2AB00C8B8B000C79FB900C4979F00807496005F5D
      78005D1C340094324E004F203000552F3A004D1A28001E4951005B9663005DA0
      80003FA1AF0033A8D9007B8F3F008A607200795743006B9F890057BBDB0056C1
      F00057C1F000A490DF009363D5006F6C4A00A9B17100BABD94007B767F00C9B3
      E700B397DA003D3B3A00E0D3D400BA86B0000000000000000000000000000000
      000000000000C4CFCF008D705900A88E7300A08568008E6D4F00896648008661
      4300815B3D007F593B008B684B008F6D4F00866E5C0000000000000000000000
      00000000000000000000C9D7D800C1855000E0BC9800B1451A0098989400A3A7
      A30000000000000000000000000000000000F0E3DD00DBA74400C17A00009651
      0000964F0000BA9B6C00C2BEB30087AD990068C3F4001CA0D50057ABB4008B8C
      7300B9B6AD00C5C3BD00BDB9B300BAB6B500AA9E9700A6989200AE9F9900CBBB
      B200A8D5C30074ECFA0041D8F30065E6FC0073EFFF0082F5FF0094FCFF009DFE
      FF0065E3F9005BE0F60059DEF7003ED6F700F2DED500F2DED500D8CBC500A7AD
      AA00272727003D3D3D000B0B0B00000000001B1A1900514B4800635C59007068
      6400756C6800786F6B00756C6800746B6700544E4B000A0A0900020202000000
      00000304030004060700020301000303020022222100403C39009B8E88008F83
      7E00887C7700867B7600887C77008C807B00E5DED800A657710068A0CB008A83
      A3007A59690046142D00320E210061575D0088848A00AAA3BE0046B2EC0038B1
      EC0039B1EC0039B1EC0068865D005B00350078016300681C4600857D670066B7
      C20061C7F20087A5E8009365D3008B954600A9B17100C1C39A00B6B3A200A495
      B7008F81A3000A0A0A00CEC7C600AA86D9000000000000000000000000000000
      0000CEDDDF0090755E00B49E8500A1856700997A5C0097785A00937355008F6E
      50008A674900856042007F583B00825C3F008D6B4D00856D5B0099968F00A7B0
      B000000000000000000097826E00A0846A00A1846B00A1856B0098795D009474
      58008C7A6B00000000000000000000000000E1CEC600CDC1BA00D8A24300C078
      0000A45E0000A9702400BBC09F0094B39C0099CDF300AFDDFB0088B7BF007B77
      6E00807B74007F7C760085827C007A76660074745E006C725200737459009D91
      8A00CCBEB400ADE7E20059E6F90058E0F7006AE6FA008FF7FF00A4FDFF00A9FF
      FF007EE5EA004DD8F4004FE0F70058CAD700F2DED500F2DED500F2DED500E2D1
      C900B3A7A100393736003F3F3F00101010000000000000000000000000000000
      0000010101000202020001010100010101000101010000000000000000000000
      00000000000000000000010100000A0A0A001E1E1E004F4B490056504C003834
      310027222100211C1B00231E1C002F292500944267005470A70055C1F0008B5A
      8000994F6E008D7C8800503A5200A492B600EFE8F900E1D5F40091B9ED0044B7
      ED0044B7EE0045B8EE0076715100590032007C1963005D00390057092F008579
      66006CC4DC0077BFEF0083688C00929E4800A9B17100C1C39A00D9D5C200BEB5
      C6004B465000A29E9A00BEA3DC00A67EDC000000000000000000000000000000
      0000A4998C00B29B8300AC947800A48A6D00A3886B00A08567009D816300997B
      5D00937456008D6C4E0085604200845F42009B7C610098795D009B7D61008C6A
      4D0088756400A5AFB00091776000B5A08600BCAA9200C6B7A1009C7E61009B7E
      6100876F5C00000000000000000000000000D9C7BF0098949400879CAB009CA2
      7B00B1913500C7840300F2E3C700D2DFC200A2C3A200B1DCF000ABD7EC00619A
      95005E8C7D006F968C0080ACAA0085B1C5008AB4D0008BB7D3008EB3B9007C93
      8300B2A49C00D4CDBF009CE9E60059DFF60048DAF10063E3FB0090D4D000A5A8
      7500AD6A1C0052B3B4004BDCFB00AECDC100F2DED500F2DED500F2DED500F2DE
      D500F2DED500CDBCB50038353400393939002C2C2C00181818000A0B0A001822
      34002F446400486691005477A8005376A600425C840028374D002D3A4D003C4A
      600041536A003746590019212A00171616001A1A1A000C0C0C00000000000000
      0000000000000000000000000000000000009A60840068729D007B2E5E008E26
      55008B24540068466000AA98B000DAC9F000D5C2EE00E2D5F400C8B6EC005DB9
      EE0050BEEF0054B8D60082735B0055002E007B196200590033005D003A005815
      2F0080A08F0076D2F50064664800929E4800A9B17100C1C39A00D9D5C200A9A2
      A400928D8B00CCB7DF00B391E100AD85D200000000000000000000000000CFDE
      DF0096795F00C4B39C00AF987C00AF987C00AD957A00A9907300937356008A66
      4900876346008A6749009B7D62009C7E64007E5639007D55380096775A00AA90
      74009676580082644C008E715800B7A28800C1B09A00CABCA7009C7E61009C80
      6300876F5C00000000000000000000000000DCCCC5009BDAFB0096DBFF0090D8
      FF007FD0FF007DC6F0008AC5E300BFDBEA00C9D1D00080B7B800B7E0E300C3E5
      FF00C3ECFF00C5E7FD00C1E5FA00B9E0F600B0DAF200ADD7EE00A4CFEB00A0CB
      EA008E938500D6C4BC00E1D7C700B6E3D9005CCCE00063674700B6651100CA7B
      1900AF5C09007293710087D5D600DECCC300F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500E1CFC7004A4542001C1C1C0033373C005C7FB20072A0
      DE0083AEE60090B8EB0096BCEE009CC0F100A7C8F6009EC0F0008BA9E000819E
      EC007D97EA007F9EEC008DB1EC00556C88000F0F0E00030303000A0A0A001313
      1300191919001B1B1B001919190011111100A75A7E007DD6F6006A3566007022
      530071164B0037032F008C6C9B00DDCFF200C9B2EA00D8C6F000CCB6EC0098A8
      E8005CC4F1005DC1E60088815E0053002A00741C560068004B006D0152005900
      330071434A007FD1E400799E7E00929E4800A9B17100C1C39A00D9D5C200D3CC
      C700D6C6E100BFA3E600B892CF00C49FC800000000000000000000000000B6B5
      AD00B7A28D00BEAB9200B9A58C00B9A58B00B7A188009A7C6000C1AE9A00AD95
      7C00A0846A00B7A28900AC947B0089654800825C3F00A1856A00B59F8500AA90
      74009C7F61008C694B008F6D5000B8A48A00C6B5A000CEC1AD009C7E61009E82
      6600876F5C00000000000000000000000000E6D3CB00C3ECFA00BCF2FF00C5F6
      FF00C6F8FF00C1F6FF00B4F2FF00AAEAFF009FE1FF00C3F8FF00B2E1E40080B3
      B20087C0B40084BEB2008ABAB700ABC4B300C9DED800C4E8F600B8E2F400AFD6
      EF008CB1B300BCAEA500EAD7CE00F0DDD300D7C5BB00904F30009E4B0100B862
      0400A85100009B804E00BDB2A800AE9F9900F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500EEDBD200AFA19B007395BF0097BDEC007EA8
      E10077A3DF0078A3DE0075A1DD006488C3003C4B86001E256000212662007189
      E40096AFF6008DA5F4007992EA0093BAF100343C4700333333002D2D2D002121
      2100343130004A4543005854530037363600863971007DD6F6009991B4008B4B
      760095718C0080558700BEA1E600BDA1E600CEB8EC00BFA3E600CAB3EB00B696
      E30076B3E90068CAF20088A28700580C30006715430084276C006C0151005F00
      3D0055032D007EB2AC0086C0B200929E4800A9B17100C1C39A00DCD8C800DDD0
      E300CCB6EB00C39EC900D6BBD500DAC8E700000000000000000000000000ABA0
      9100D2C5B400C2B09900C3B29C00C3B29B00AE977C00D8CDC000CEC0AD00AD96
      7B00A78D7300D1C4B300A9907400A2866900C5B49F00BDAA9200AC947800A78D
      70009F82650096775900A0846900B8A38A00C8B9A500D2C6B3009C7E6100A083
      6800876F5C00000000000000000000000000ECD9D000C0E2EC00B2EDFF0095D2
      F800CED3D100D2C5A000B6892C00B8B09700DEF0F600E2EEF200EEEBE400ACA6
      A10093A7B500C4F2FE00BBF0FF00D9D2D100F1DDD300C6C6B00095C3DC00AFD4
      F0009FC6E40093927F00D0BFB700D9C7BF00B7A8A1007D3D2600863400009844
      00008F430000866333008F837E007A7B6D00F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500EAD7CE00AEA29D00A5C5EA00C3DAF6008BB1
      E6007DA8E2008EB6E8008FB6E80088ADE2006484BD00334583001B1F5800262C
      67005567BF008AA2F1009AB0F3008DACEC004A5768005E575400A99C9500DFCD
      C400F1DCD300F2DED500F2DED500D8C6BE005F8FC6007EBEE200905B8D008418
      5A00793C6D00976E9C00CCB5EB00B695E200835E9D0089718C00886F9500AF8F
      D9009C83DE0075CCF30078BCB90066393E00530029007F31620076085E006300
      430054002B006C6B790092D4DD00929E4800A9B17100CBCBAB00E1D6E700D8C7
      ED00C192A700E3CFDA00DFC9D700E1CCDC00000000000000000000000000AFA2
      9000E1D9CC00CCBDA800CEBFAC00CDBFAB00B39D8300F8F6F300ECE7DF00E1D9
      CC00DED5C700D9CEBF00BCA99000C9BAA600CDBEAA00C6B6A200F7F5F200F7F5
      F200EBE5DC00DDD4C600CBBDA900B49E8400CEC1AF00D5CABA009C7E6100A186
      6B0088705C00000000000000000000000000E5D2C900B6C8D300CAF8FF008BD3
      FF00969D9F00B07E2B00A15B0000D5C1A600FFFFFF00FFFFFE00FFFEFC00F7F4
      F2007486940088D1FB00BEEAF700EBD8CF00F2DED500EEDBD200B3C2BE00B9DD
      EF009CC8E6007B8B8100978A85009D908A0089746C006B200800762600007F30
      00007C2900006E430F006981760088B6CF00F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F0DCD300DDCBC3009387820098B2D100DAE7FC00B2CD
      F50086AFE90086ADE40093B9EE00A5C5F400A4C4F2008DB5E8005573AD001B1F
      530011113900778CDC00A2B7F40093B0EB008091AC00A0938D00DDCBC300F0DC
      D300F2DED500F2DED500F2DED500F0DCD300902A6A007D0F5C007C105B008214
      5C0061064D00AB86C100C0A5E600BA9BE40048213300798B1E0086963600949C
      5900968A89005B72870080D7F60077886B004F00230062014000741557006E01
      5400590034005B194000A0E9FA00929E4F00B6BB8700E6DFE700DAC3D900C08C
      9200CFABA900AB616200A8595F00966F8200000000000000000000000000B9AF
      9E00E9E2D900D5CAB800D8CDBC00D8CCBC00BDAA9200F7F6F200ECE7DF00E1D9
      CC00F0ECE600E2DACE00CEC0AD00D7CCBC00C8B8A200EAE5DD00F9F8F600F5F3
      EE00F1EDE700EDE8E000E9E3D900E5DED300E1D9CC00CFC2AF00CDBFAE00A78E
      73008B766400000000000000000000000000BBACA500888A8D00C7F6FF009CE0
      FF0076969D009E56000093581600FFFDFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0078B7E500B1EBFF00C2DBE600F0DCD300F0DCD300E5D2C900ACAA9600B3DA
      EB0096C6E2004E84A8006566430072584D00692A1B00641A0000701E00007322
      00006F2100005C2715006AA8DD00A0C8E800F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500EEDBD200CCBBB4004843400037414E00C9DFFA0090B1
      E000434E61003B3E4300435163006B8DC000ABC9F600BAD2FA009ABDEE006A8C
      C500191D500047549700849BEB00A8C3F200A1C3F300828EA000C8B8B000EEDB
      D200F2DED500F2DED500F0DCD300E9D5CD00B980A100851360007D0F6000AD77
      A000B996B000A274A600D0BBED00C2A7E7006C466500798B1E008696360094A0
      4D00A2AB6400AAAF780094C9C9008AD6E10061393C00640144007C2062006900
      4C006E0154005E003A00A3CDE500A1B27600DED0CE00CA9DA400B5747300BC86
      85009C6F7500837C90007687A3006B90B300000000000000000000000000C6C2
      B600EBE5DD00DFD6C800E2DACD00E1D9CC00CDBEAB00E4DDD300F9F8F600F6F4
      F100FCFBFA00F0ECE500E0D8CB00DBD0C100CABAA500EDE9E200FDFCFB00F9F7
      F500F5F2EE00F1EDE700EEEAE200E9E3D900D5CAB900DDD3C600F0ECE700AA92
      7900A0998F00000000000000000000000000898B8B0054A1B70093DEF900B0ED
      FF006DAAC700B36C0000CEB49200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A4CEED00BAF1FE00D9D3D200F2DED500ECD9D000C8B8B00088866F0074A4
      C8006BA7D100647A9D009D6626008D5122005A1100006B1C0000732200007829
      00007A2400007A360C006BA0C400C4E5ED00F2DED500F0DCD300ECD9D000E7D4
      CB00E7D4CB00ECD9D000ECD9D000B7A8A1000A0A0A004F607700AFCEF700647B
      9C001B1A18001111110021202000252626007490B800BFD6FC00BFD6FA0097BB
      ED005876B1001C225800576BBB00B7D1F800BBD3F90089ABD600B0A39C00E9D5
      CD00F2DED500F0DCD300E7D4CB00C4B4AD00AC649300830F6200830F6200820E
      62007814630075287200CDB7EC00CCB7EB00A27EB700707423008696360094A0
      4D00A2AB6400AFB57C00BCC19400A2DDE50091C5DA00700B5B00680748008637
      79007B2FA00079096F009FABCC0096C1D1008C8D9B008D95A5008AA0B30084B4
      CB0082D6F30082D9F6008EA8BD0098495500000000000000000000000000D1D7
      D200E7E0D700EBE5DC00ECE6DE00EBE6DD00E5DED300C7B7A200E0D7CB00E9E3
      DA00ECE6DF00F9F8F500F2EFE900E3DBCF00CEC0AC00D9CFC100FEFEFE00FDFC
      FB00F9F7F500F5F2EE00F4F1EC00EAE4DB00D0C3B000C7B8A300C1B09B009378
      6200C6D4D6000000000000000000000000006FCCE40020D0FB0043B0E50090D0
      E800B8892500BB780900FDFBF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFD
      FC00CABB9B009CBCC800E3D0C800F2DED500E7D4CB00ADA19100A27C4B00876F
      5C0082705800A4672300682E3D0087534B00813F1D00762200008B370000913E
      00008F3B00008E41070087706300959D9300ECD9D000D9C7BF00C1B1AA00B0A1
      9B00B1A39C00C6B6AF00DBC9C1008C817C00151A20009CBEEC00B8D2F8008BA2
      C6000A0A0A00161616000D0D0D000A0A0A002C353F00BDD7FD00C6DAFB00B9D2
      F90087B2E60032437F00708FC600BAD2FA00C0D6FB009BBFEF0099989B00E5D2
      C900F2DED500E9D5CD00C1B1AA0093868100C294B000BC87A900922F79007E0A
      6600750A620065015600B58EC500CEB9EC00BFA3DE007A6B51008696360094A0
      4D00A2AB6400AFB57C00BDC09300C6CDB000ABE7F1008F90B8006E0154007E34
      AA00834CCF007B1F8D00772F6C009CE7FA009C959E009D4443009D4443009D44
      4300A3969C00ABEFFC00ABEFFC00A18F9C00000000000000000000000000D6E6
      E800DCD3C600F8F6F300F5F2EE00F4F1EC00ECE7DF00E2DACE00CDBFAB00C0AE
      9600BAA68D00F2EFEA00F7F5F200F7F5F100D8CDBD00C3B29B00CEC0AD00CDBF
      AD00C8B9A500C3B29D00BDAA9400B8A48C00B39C8400AA937B00A4958300C9D5
      D500000000000000000000000000000000006BF4FF001CCFFF0083834800B081
      2600C3851300E3D6C000FAFFFF00A4D4E400FFFBEC00FBE9C400FDF7EB00CAE9
      F6008EA08400B68B4D00E1CEC600F2DED500E9D5CD00A592660065325200B169
      100079383400A3671D00935A470073416B00BA8048008E3B0000B05B0500BA64
      0A00B0570500A453090073343E00BE955700CEBDB500A4979100887C7700736A
      6600736A66008D827C00B1A39C00645C58003D4E6400A9C8F500C8DDFC007F8D
      A500626F81005D5C5B00B1B1B100333332002F353D00C6DCFD00C6DAFB00C3D8
      FB009CBEEE006388C60085ADE600B7D0F900C1D7FB00A6C6F3008C99AC00E5D2
      C900F2DED500DDCBC300A3958E00A8ABA400AD649B00DECFD200E2D6D5009029
      7900B1709F00C7A9BA0089437C0094599400BFA1CD00D1BEE7008E8F570094A0
      4D00A2AB6400AFB57C00BDC09300CACBAB00D3D7C600B7EEF700917EA9007606
      67008240BF007D2B9E006D0152006E3B64007ACFEF00A2C3D000A15D5D009A47
      480071B9DA0085DAF6009CDEF1009A515F000000000000000000000000000000
      0000D8DBD500F2EEE900FAF9F700F7F5F200EEE9E100E4DCD100DAD0C000D0C3
      AF00C6B59F00C7B7A200F4F1ED00F8F6F300F8F6F300C3B29B00B6A18700AA90
      7400A78E7100A79B8900CBDADC00000000000000000000000000000000000000
      0000000000000000000000000000000000004FE9FF0052E5FE00D2950C00D190
      0500ECDEC500FFFFFF00CCDFE70049D0F700AA7C1D00E4990000CB8A0E00D4D2
      C3004ED6F100A68E4800E1CEC600F2DED500EEDBD200958376007C4B5D00AF7A
      54001303C6007F4A7E00AA766500C4927900B7723200BC6C1100D3832500DE8D
      3200BA6D2000AF701E002F0E9C00BC9C7B009E918B0057504D00191716000707
      07000505050023201F008277730045403E00667FA100B5D1F700A0ACC0003D3D
      3C00DAE2EE009FB5D50077829000646E7A00AEC1E000C7DBFC00C7DBFC00BFD6
      F90093B8EC0072A0DC0081ABE400ADCBF600BED5FA00AAC8F4008FA0B800EAD7
      CE00F2DED500D7C6BE00BCB5B000B6C0BA00E9D2CD00B473A100C8A1BB00E3DA
      D700B77DA7009B418900E7E1DB007F3571007A396E008B5B81009C7D9200B8B6
      8F00B9A68E00B18B8A00A87491009A5B9A008F4690004E84C00030A0E100720D
      68007D0874007F37B0006D02540061013F006D7699008CDEF8009F858B009D44
      43005F92B80064C8F20079C6E700924C5E000000000000000000000000000000
      0000D8E8EB00E0DDD400F8F7F400F3F0EA00EAE4DB00E1D9CC00D8CDBC00CEC0
      AD00C4B39D00BAA68D00E5DED400F5F2EE00FDFCFC00C3B29B00B6A18700AA90
      7400B8AB97000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005FF1FF005CF3FF00B0A96100E1C7
      9900E6F3F7008BCDE20039C6EF002CD5FF00B5B55C00C37B0000C47A01007691
      74002CDBFF0076C0D600E5D2C900EEDBD200E5D2C900BBAA88008B627F00D9B0
      8300654CB4009679AE00E8C08C00C17D4D00984B0D00B0958300D4CFBD00BEBA
      AE00B7824800844F7000BB929300C4B1A0004A45420013131300363636004646
      46003D3D3D001E1E1E00201E1D00494340007D9BC300BFD6FA00D6D7D600EBEB
      EB00D3E0F6006D78890072737400BFD4F700B6CEF500D1E1FB00D3E3FD00CADC
      FB00ADCBF4007AA4E0006A94D9008CB3E900BAD3F800AECBF3009DA8BC00EEDB
      D200F2DED500D8C6BD00C8CAC600E1E7E600E9D6CE00E5DBD700C4A2B800AF6E
      A000E4DBD700C69DBC00E3DAE000DBCAD700D0B6CA00C8A8C700BD94C100B180
      BC00B088D200AE8BE000A575CA00964B94005874B2006356940037A7E5007A14
      69007D016B00802BA2007A33A40061013F005F163D00429FD300895862009D43
      430050A4D3005FC6F1007CD5F500937C90000000000000000000000000000000
      000000000000D8E7E900E4E1D800F6F3EF00F0ECE600DED4C600D4C7B500CABC
      A700C1AF9800BCA89000EBE5DE00F5F2EE00FBFAF800C3B29B00B6A18700AA90
      7400C4BCAC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081E8F4004CEEFF0034B1DB0046C7
      EE001ECEFD002AD3FC004DEDFF0056F3FF00A3B18500AB8D4A00BA891B0003A7
      E5000BD4FF0066D1ED00ECD9D000E3D0C800BBACA5009D90880091803F00CBA0
      7A00D7B29A00C0A19200E2B694009C6F5D009BB0CC00C2ECFF00D9F5FF00D0ED
      F700A8897F00DABDA400D4C1B3009F948A001515150050505000686868006262
      620052525200404040000C0C0C000C0B0A008BA9D200C8DBFA00FAF6EE00F9F9
      F900BFD5F5003E3F4100C4C2C100D6E2F600CCDDFC00DEEAFE00DDE9FD00D7E5
      FC00DCE8FB00CFE0F900BDD5F600C4D9F700D8E6FB00C0D6F600BEB8B900F2DE
      D500F2DED500DBC7BF00D9DDDB00F9FBFB00E8DAD300DED4D200AD7094009A3E
      4C00BC838900E4D8F200E0D3F300DBCCF100D6C5EF00D1BEED00CBB2E700B990
      CB00A668A500B77E9E00C799AB007172A3006168A2008A205C0061BAE8007253
      9A007D016B00802191008A55D2006F21740056012D00815D6C006388AA005BA2
      CC006B98BA0074A2C2008995AC00934F61000000000000000000000000000000
      00000000000000000000D8E8EA00DEE0DB00E9E2D900F1EDE700F0EBE500EDE8
      E200E8E2D900E2DACF00E1D8CC00DBD1C200D2C5B400B7A38A009F8366008965
      470086634700928A7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5DBDC0047E9FE0023C3F7000FD0
      FE0041E9FF0080FCFF0089FFFF0068E2FF0089D5FE0066B5E8002D9BCF0016B5
      F40004D5FF009AD4E100F0DCD300DDCBC3009A9679008D8A7500A5A07C00CEC4
      B700C3AB8D00B79F8000B8B4AA00A0C7E5007FC2F700CCECFF00B9D9EA00BBCA
      D100C1BB8A00D4C3B300C5BDA6008BA4AE003F3F3F0050505000363636001D1D
      1D000F0F0F000C0C0C0003030300000000008AA5C800CCDCF900FEFCF700DCE6
      F400C9DAF600E6E5DE00FFFEFC00D1DFF600D4E3FC00E7F0FE00DFEAFD00C6D3
      EA00E2EEFE00ECF2FE00EDF4FD00EEF3FD00E5EFFD00A9B7CD00E7D4CB00F2DE
      D500F2DED500DAC8C000C4C2BE00EBF0EF00E3D8D600A75D9800B6798700C189
      8900F9F7FD00EFE5EF00DDC4D400CFAFCB00BF96C500AD7DBF009D69C0009660
      C100AA699500C697A80075709F005B89BF008B1F580088427A007DD6F6007C91
      C1007C046C007B096E009D70D500925DB90055002C008F6F7400B48B8600AF6F
      6E008E6979007E92AD007AC2E20080D8F6000000000000000000000000000000
      000000000000000000000000000000000000D8E6E800D7DDD800D1CFC500C8C3
      B600C1BDAF00CAC7BD00F6F3F000FEFEFE00F8F7F500D3C6B400A68C7000805A
      3C007D5538008F7E6F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0DCD30092E1ED0016C7FA0030DD
      FF008DFEFF0092FBFF0035D2FA006FD3FD008DD5FC0096DDFD00A1E1FF007DB3
      FF003CCBF700C6BEB900EEDBD200E0D1C100C8CEA400F2F2F200DEDFDA00635D
      4B00606D7F009CB9E700A2CAF5007EBAEE0077BEF500C4E4FB00A3B6BA00FEF9
      F600CCD0AD00D5C5BA00D4CBB50086BCD4003B3B3B001B1B1B00030303000000
      0000000000000101010001010100000000007489A500C7DBFB00E0EAF700C4D9
      F900D6E1F200FEFDFA00FBFBFA00C4D8F800DCE7FD00EAF1FE00DEEAFE006870
      7E0043495100A1ACBD00CBDAEF00C1D0E400717D8D0068636100F0DCD300F2DE
      D500F2DED500E3D0C700B1B6B000C0C9C500A4559100A6586500A75B6200B784
      A100BA8DB600BA92C600BB99DB00B899E400B493E200AD84D4009D68C0009146
      92008F2F57006E81AE0054C0F0007C4E82008B1F59008A225F00907CA8006790
      C5006D409400790364008A3A8E00B594E3005B0A38007544530000000000D9C7
      BF00E4CFC600D2ACA800BC818400A67481000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAE7E700EDE8E000F3EFEA00E7E1D700D5CBBA00C3B29C00B29C
      8300997B5E00A39E940000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500DDD8D50028D4FD004DE6
      FF0093FEFF003EDEFF0000A9EA0082D3F900B6F0FF00B7F2FF00A2D5FF0095BA
      FF0091C4F200C4B8B300EEDBD200EFDCD200CCCC9F00F6F6F600625C53003040
      4900A7DBFB007E8BE7007A81E800AFDDFD0072B6EF00A0C0DD00917B7B00F4F7
      F000E3E4CD00DBCCBD00E0D6C800B4C4C8000E0E0E0002020200000000000101
      01000101010001010100000000000B0B0B004A576900C6DCFD00C4D9FB00C5DA
      FB00DDE6F300FFFEFC00E4ECF700C7DBFB00E3EDFE00E9F1FD00DCEAFE00363A
      41000000000000000000090A0B000607070015151500C1B2AB00F2DED500F2DE
      D500F2DED500ECD8CF00CCCAC500E4E9E800A2536700AB626700DAC7E900D9C8
      F000D5C2EF00D0BCED00CCB6EB00BF9CD200AD7EC100A16FC7009A66C3008460
      89007093BD006D9AC50061C7F1005DB6E400598AC200891B5B0088185D006290
      C70085317C009E608800730D5C009D65A100AD86B90078465400C4B4AD00D9C7
      BF00E5D2C900E7D4CB00E7D4CB00E5D2C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5DEDC00E3DCD000E3DCD000D7CDBC00CABCA800B39E
      8400999083000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500EEDBD20071D5E90033DE
      FF0072F9FF0013BDF2005CC2F500B5EFFF00C6F8FF00D5FDFF00CBFAFF00A8E9
      FF00A0E3FF00C5CBD200F0DCD300F2DED500E1D2BF00DADBBC004D423A005775
      8D009FCFE700B5DFF700C8E2FF00B2E3FD008FCBFF005283A3001F171100F0EE
      EB00DADBB800E4D5C300EFDCD000E8D9C9000000000000000000010101000101
      010001010100010101000000000021212100635F5E00BACFEE00C5DBFC00C4D9
      FC00D8E3F600F8FAFC00CADBF900DAE7FD00EAF2FD00E3EDFE00B3BFD1000203
      03000101010000000000010101001E1E1E0079706D00F0DCD300F2DED500F2DE
      D500F2DED500F2DED500DED1C900E9EEED009B454400DEC6D100EDE5F800E9DE
      F600D5BAD300C5A0C400B78BBF00B28CD600AF8CE000A573BE00923D640074AF
      D5008B426C007A8FB7006DCEF3005EC6F10062C8F2006CAFDB007E4684006992
      C9009C588700D0BDB700AB7193009A609300CAB2D30083526400B69B9400DBC7
      BF00E5D2C900E5D2C900E5D2C900E3D0C8000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEC7
      CE0087B5C50087B1BE00A5B9BD00AFBDBD00CACDC500AAC4C800C0B39E005E76
      740021748C000D7293001F5C740094A5A9000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F0DCD300B4D2D90023CF
      FD004DECFF0042CAF7004CBAF3007CD1FA00A4DBE7009DA08E00A6E6FF00BEF3
      FF0098BFBC00C8BFBC00F0DCD300F0DCD300DDCBC3009D9480004A5C67002443
      680093B9D500C6E9FE00E2FCFF00D1EFFF006B838E000D111300080808008782
      6C00C7C39B00F1DDD300F2DED500F2DED5000101010001010100010101000101
      01000101010000000000050505002B2B2B00AFA29B00CCC4C4008D9AAB008398
      B500C4D8FB00CBDDFB00D9E6FC00E8F2FD00E6F0FD00D9E7FD00454A52000000
      00000000000005050500232323005E595600E8D5CC00F2DED500F2DED500F2DE
      D500F2DED500F2DED500F0DBD200DFD2CB009E484800D3B2C300D6BDD800C7A3
      C600C8AEE100C7AEE900C2A8E700BEA1E600AC77B4009453A90091365D007EC3
      E3008D3B65008A4975007D8AB4007EB6DA007AD4F50082D8F600739CCB007753
      9E00B898A100DBC9C100E7D4CB0099627900AC849400C3A7A400C3A69F00B695
      8F00B2908900AD898300A6817B00AB8781000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053BEE6001FBE
      EE002FC9EE0029C0E70015A4D100168CB60063CFF60024C4FD0017A2DB003AC5
      DD0038D8FE0023C9FE000CADEB004C6774000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500E0D8D40029CE
      F60053D9F2003AA9BD003FECFF0050D5FF0089D0F6006781850065ABDA00A9EA
      FF0071878300C0B2AC00EEDBD200F0DCD300D8C6BE005452540070A4D200A9DA
      FE00B3E0FE005D84A800496A8B00BED8E100200E07000A0A0A000C0C0C003F39
      2D00E8D5CB00F2DED500F2DED500F2DED5000101010001010100010101000101
      010000000000000000002121210031303000E0CEC600F2DED500B2A39D005258
      6200BFD7F900D4E3FC00E6F0FD00E7F0FE00DEEBFE006B737E00000000000202
      0200141414002E2E2E00605A5700E3D1C800F0DCD300F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F0DCD300A3525300E2D4F100DED0F200DACA
      F000D5C3EF00D1BDED00C8ACDE00A96C9E009E6DC600A15C8E009D8FA7008AB2
      D1008F2753008E2555008C2257008C618F009CE6FA0092B7D60074BFE6008A34
      7E00CAB9B200E1CEC600E7D4CB00976E6A00E1CEC600E9D5CD00EEDBD200F0DC
      D300F0DCD300F0DCD300F0DCD300EEDBD2000000000000000000000000000000
      00000000000000000000000000000000000000000000ACDBEC0034D5FB0040DE
      FE0022C8FE0041DFFE002DD0FE001AC1FE008FDEFE007EDDFE0016BFFC0045E0
      FD0038D8FE0023C9FE000A89BA0077919A000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500EEDAD20068DC
      F4000785B7003BA8B50070F7FF0039D3FD0092D7FF0067BEF90088D3FE00B4F0
      FF0095DEFF00B7B3B400E9D5CD00F2DED500D3C5B4001B1619008CB4CD00D6F3
      FF00AFD0E900719EC60089B4D800A8BAB900170E0E0010101000111111006659
      4B00F0DDD300F2DED500F2DED500F2DED5000000000000000000000000000101
      010001010100161616004747470081787400F0DCD300F2DED500F2DED500E3D0
      C800A8A8B000C6D7EE00DAE7FC00C7D3E4004D535D0008080800191919002B2B
      2B0022212100635C5900998C8600C6B6AF00EAD7CE00F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5009D444300D3B2BF00E8DFF600E4D8
      F400DDCDED00BD8CAB00AA73A900AE8ADE00A15C9100C08B960095C4DC0095B8
      D2008F2A57008D2456008C2157008B1E5900904379008189B7007E8FC400A56A
      8F00D6C4BC00E5D2C900CAB0A900B6989100E5D2C900ECD9D000F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000000000000000000000000000000
      00000000000000000000000000000000000000000000B6DFED002ED1FA0040DE
      FE0027CBFE0041DFFE0029C9F600119DCD00C5E8F300D8F4FE0036B0DA002876
      8E0028839C002B758E0072919C00000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500F2DED500C4DD
      E1003BC0D30000658E0002B8F30025C6F8004AB9EF0085CFF800C7FAFF00C6F9
      FF00B4EFFF00A4ABB200E7D4CB00F2DED500E6D5C80044392600242A2F00BBE2
      F800A4C7DF0096BFE500AFDDF700667279001616160017171700493D3800D5C4
      B300F2DED500F2DED500F2DED500F2DED5004A46440027272700161616001A1A
      1A0039393900505050004E4A4900E6D3CB00F2DED500F2DED500F2DED500F2DE
      D500F2DED500D9C8C100978F8D00403D3B0009090900171717000F0F0F000505
      0500010101000C0C0C00403C3A00998C8700D4C2BA00F0DCD300F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5009D444300D6B3B900E6D4E000C390
      9E00B1779800BD9CDA00BEA1E500B17FB8009E465D00CDCED100A3EAFB0082D9
      F60051BEEF005AC0EE0085376E008A1D5A008753890084DAF600844A9400C5B1
      AD00DDCBC300DECAC100A4827D00E2D0C800E9D5CD00F0DCD300F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007BCEED002BBA
      EA001EB7E30024ACD60056ABC800A5CBD600549FB9003991AE00649CAE00CCDD
      E100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500F2DED500EFDD
      D4009CEEF5004076730034E8FF0014D0FC0004C6FB002CBFF50098D8FA00DDFF
      FF0099E2FC0061C0DE00ECD9D000F2DED500F0DCD300908E84002C2789002224
      25001A1A1A0020222400252627001D1D1D001E1D1D00221E1C00B7A89600F2DE
      D500F2DED500F2DED500F2DED500F2DED500E6D3CA008C827E0053504F004342
      42005351500080787400E5D2CA00F2DED500F2DED500F2DED500F2DED500F2DE
      D500F0DCD300DDCBC300A0938D0034302F000202020011111100292929003434
      34002D2D2D0019191900030303003A353300BAAAA300EAD7CE00F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5009D4443009E464500B77F9300CCB1
      DD00CFB9EC00CDB7EB00C9AFE300A6597200D9BEBE00AFB9C80088DCF7005DC5
      F10069CBF3006BCDF300807EAB008A6897008BD4F0008DBDE2009E588900D4C2
      BA00E3D0C800A47F7900E0CFC900E8D5CD00EEDBD200F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500F2DED500F2DE
      D500D9DDDC0084C6C50068AAA30082FEFF004EF0FF000DD0FE0036BFF40093D8
      F9000FBEF40084D6E900F0DCD300F2DED500F2DED500D7CBBA009A8EDB005851
      BC004540AD0047355E004E2F600030283D002D2422007E675300ECDACE00F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500EFDBD200DFCD
      C500ECD9D000F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500EEDBD200C8B8B0004B454300020202002323230056565600666666006161
      6100525252003F3F3F000D0D0D0000000000897E7900E5D2C900F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5009D444300B87C8800E0D2F200DED0
      F200DDCDF100D0B3D600B67A8C00E6D8D200C5969F00887193006EBAE10078D3
      F5007BD5F50083D9F6008DDFF80091DEF6008D77A6008A358200C1A6AA00DFCD
      C400CAAFA700BFA29B00E5D2C900EAD7CE00F0DCD300F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2DED500F2DED500F2DED500F2DE
      D500F0DCD300D0D0D000849994005C94960098FFFF006BF9FF002FD7FF001AC5
      F50066F1FE00E5DED900F2DED500F2DED500F2DED500F2DED500F0DDD200D7CA
      C0009F92CE00786A8600796468007D6B5D00B6A69000EAD8CA00F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DED500F2DE
      D500EAD7CE00AB9D97000A09090016161600515151005A5A5A00404040002525
      2500131313000C0C0C0003030300020202005A535100E1CEC600F2DED500F2DE
      D500F2DED500F2DED500F2DED500F2DED50000000000FFFFFF00F7EFEF00E7DE
      D600D6CEC600CEC6BD00CEC6BD00D6CEC600DED6CE00E7E7DE00F7EFEF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFFFF700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700C6C6C6009494
      94009C9C9C00ADADAD00C6C6C600D6D6D600E7E7E700EFEFEF00F7F7F700FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00E7E7E700F7F7F700C6C6C6009C9C9C00848484008C8C8C00A5A5A500E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A6C4D008365
      46007E5F400074553600694A2D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5D4
      CF004C6186002B4572008A7B84008C6D6C00FFFFFF00F7EFEF00D6CEC600B5A5
      94009C8C7B00948473009C8C7B00A5948400B5A59400BDB5A500D6C6BD00E7DE
      D600EFE7E700EFE7E700E7E7DE00DEDED600DEDED600DEDED600E7DEDE00EFEF
      E700F7EFEF00F7F7F700FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094CEE70031A5CE003184
      9C00316B7B004A637300636B73007B7B7B0094949400A5A5A500BDBDBD00D6D6
      D600E7E7E700EFEFEF00F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600A5A5A5008484
      84007B7B7B00B5ADA500A5948C00BD9C9C00AD949400948484006B636300B5B5
      B500F7F7F700F7F7F700F7F7F700FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000A48A6C009F846600886A
      4B00826445007D5E3F00775839006C4D30000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D4CF004C61
      86003A7AA80083C9E5003B588300AEA9B200F7F7F700DED6CE00BD9C6B00C684
      2900DE941800E7941800D6943900CE9C5200B5947300A5948400A5948400ADA5
      9400B5ADA500B5ADA500ADA59C00AD9C9400A5948C00A59C8C00ADA59C00BDAD
      AD00C6BDBD00D6CECE00E7E7DE00F7F7EF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000008CCEDE004ABDDE00BDE7
      F70039BDEF0029ADDE00188CB500187B9C00296B8400426B73005A6B6B007373
      73008C8C8C00A5A5A500BDBDBD00CECECE00DEDEDE00EFEFEF00F7F7F700F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700ADADAD0094847B00C6A59C00E7B5
      B5006B636300B5948C00CEAD9C00FFC6C600FFCECE00FFCECE00947B7B009494
      9400C6C6C600ADADAD00A5A5A500C6C6C600F7F7F70000000000000000000000
      00000000000000000000000000000000000000000000B39C7F00AA917400987C
      5D00886A4B00846647007F60410077583900000000008D705100705133000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5D4CF004C6186003D92
      C2009AE8FF00C1F2FD007DBDDF0033538000EFEFE700D6AD7300FF9C0800FF9C
      0800DE8C2100CE9C5A00D6AD7300DEA55200E7A54A00D6A552009C845A007363
      5200736352007B5A42007B523900734A3100734A3100734A310063524200735A
      5200847363009C8C7B00B5ADA500D6CEC600EFE7E700F7F7F700000000000000
      000000000000000000000000000000000000000000008CC6DE0021A5D600E7F7
      FF0094E7FF006BD6FF0063D6FF005ACEF7004AC6EF0029ADDE001894C6001884
      AD0021738C004263730052636B006B737300848484009C9C9C00B5B5B500C6C6
      C600DEDEDE00E7E7E700EFEFEF00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00D6C6BD00C6A59400F7BDBD00FFCECE00FFC6
      C600DEADAD00C6A59400D6AD9C00FFC6C600FFC6C600FFCECE00947373006B63
      6300948C8400AD8C8C00736363006B6B6B00ADADAD00F7F7F700000000000000
      00000000000000000000000000000000000000000000BAA48A00B9A48900A68C
      6E00997D5E0094775800886A4B008466470000000000BCA78D008D6F50000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5D4CF004C6187003E9ACB009BE9
      FF00C1F2FD0090D9F7005ABEF1002591D500E7E7DE00E7941800FF9C0800BD7B
      29009C8C8400D6CEBD00E7DED600DED6CE00BDAD9C00B58C5A00A56B2900B56B
      1800BD5A1000BD5A2100BD5A2100B55A2100B55A2900B55A2900A53910008431
      08006B3118005A4231007363520094847B00BDB5AD00DEDED600F7F7F7000000
      0000000000000000000000000000000000000000000084C6DE0039B5E700ADDE
      EF00B5EFFF006BDEFF0073DEFF007BDEFF0073DEFF007BDEFF007BDEFF0063CE
      F70052CEF70039BDEF0029A5D600188CAD0021738C00396B7B004A6B73006B6B
      73008484840094949400ADADAD00C6C6C600DEDEDE00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700E7E7E700BDA59C00CEAD9C00EFBDB500FFC6C600FFC6
      C600FFC6C600E7B5AD00EFB5AD00FFC6C600FFC6C600FFC6C600C69C94009C84
      7B00E7B5A500FFC6C600EFB5B5008473730063636300D6D6D600FFFFFF000000
      0000000000000000000000000000000000000000000000000000C0AC9300B9A4
      8900AA907300A08567009E836400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5D5D0004C678E003F9CCD009DE9FF00C0F2
      FD0090D8F7005ABDF10024A2EC001B66A600E7CEA500FFA51000FFA510008463
      4200A5948400D6CEC600DED6CE00BDADA500AD7B4200C66B1000D66B1800CE63
      4200C65A4200BD634A00C6634200C65A4200CE634A00CE634A00D66B5200DE73
      5A00B55A2900A54210006B2910005A4A390084736B00B5A59C00DED6CE00F7EF
      EF0000000000000000000000000000000000000000006BBDDE004ABDEF0073C6
      E700DEFFFF007BDEFF0073DEFF007BDEFF0073DEFF005AD6F7004AC6EF00299C
      CE002184B50039A5CE004AB5DE0052C6E70052CEEF0042C6EF0029A5CE00188C
      B500187B9C00296B84004A636B00636B6B008C8C8C00C6C6C600F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700B5B5AD008C8484008C7B7B00C6A59400DEADA500FFC6C600FFC6
      C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6BD00EFBD
      B500FFBDBD00FFC6C600FFC6C600FFBDBD008C7B7B00DEDEDE00000000000000
      000000000000000000000000000000000000000000000000000000000000B9A4
      8900B39C8000A48A6C0000000000000000007455360000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5D0004D6D9500409FD1009EE9FF00C0F1FD008FD8
      F70059BDF10024A2EC001B6BAB007386A200E7CEAD00FFA51000FFA518008463
      390094847300BDB5A500B5A58C00C6842900CE630800BD5A2900B5522900B54A
      2900AD4A21008C633900B54A2100B54A2100B54A2900B5522900BD523100C65A
      3900CE634A00D66B5200AD5229007B290800523929007B6B5A00AD9C9400DED6
      CE00F7F7F7000000000000000000000000000000000063BDD6005AC6F7004ABD
      E700D6F7FF008CEFFF007BE7FF007BE7FF007BE7FF004ACEEF0029BDDE0021AD
      D6000884B500006B9C000073A5000873A500299CC6007BDEFF007BE7FF0084E7
      FF0063D6F70042BDE70031ADDE00189CC600425A630084848400BDBDBD00D6D6
      D600E7E7E700EFEFEF00FFFFFF0000000000000000000000000000000000FFFF
      FF00BDB5AD00B59C8C00DEA5A500B5848400C6A59400D6AD9C00FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00E7ADAD009C949400EFEFEF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A68D6F008F72530074553600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5D6D1004D739D0041A2D4009FEAFF00C0F1FC008ED8F70058BD
      F10023A2EC001B6FB200738AA90000000000E7D6B500FFA51800FFA52100946B
      39007B6352009C846B00CE841800BD4A0800AD421800AD421000A53908009C39
      08009C3100005A632900943900009C3100009C390800A5390800AD421000AD42
      1800B54A2900BD523100CE634200BD5A31008C3108005A3121007B6B5A00B5A5
      9C00DEDED600F7F7F7000000000000000000000000006BBDDE006BCEF70021AD
      DE00BDE7EF00BDF7FF007BE7FF0084EFFF0084EFFF0084E7FF005AD6EF0031BD
      DE0031BDDE00108CBD000073A500299CC6006BD6F70084EFFF007BE7FF004ACE
      EF0031B5DE00219CCE0031A5CE0021A5D60018848C004A6352006B6B6B007B7B
      7B0094949400C6C6C600F7F7F70000000000000000000000000000000000DED6
      D600C6A59400E7ADA500FFBDBD00FFBDBD00FFB5B500F7B5B500FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00BD8C8C008C8C8C00D6D6D600CECECE00C6C6
      C600EFEFEF000000000000000000000000000000000000000000000000000000
      00008C6E4F00705133000000000000000000A287690000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D6D1004E79A50043A5D800A0EAFF00BFF1FC008ED7F70058BCF10022A1
      EC001B74B800748FAF000000000000000000EFE7D600FFAD3100FFAD2900B57B
      39005A422900CE7B1000AD390800A53908009C3100009C3100009C3100009C31
      00009C31000039631800635208009C3100009C3100009C3100009C3100009C31
      0000A5390800AD421800B54A2900BD5A3900BD5A290084290800523929008473
      6B00BDB5B500EFE7E700FFFFFF00000000000000000063BDDE007BD6FF0021AD
      E7007BCEE700DEFFFF0084EFFF0084EFFF0084EFFF008CEFFF0084EFFF0052CE
      EF0039C6E70031B5DE000084B50031ADD60094F7FF008CEFFF007BE7FF0029B5
      DE0008A5CE00089CCE00008CBD00007BB5000094BD0021AD5A0029AD420029A5
      4A005A946300BDBDBD00F7F7F70000000000000000000000000000000000C6AD
      A500D6AD9C00FFB5AD00FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500F7B5B500F7B5AD00F7B5AD00FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500A57B7B005A5A5A008C7B73008C7373006363
      6300BDBDBD00FFFFFF0000000000000000000000000000000000000000000000
      0000BCA78D008D6F500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E7FAC0043A8DC00A1EBFF00BFF1FC008DD7F70057BCF10022A1EB001B79
      BE007494B50000000000000000000000000000000000E7A54200FFAD3100FFAD
      39009C631000AD4208009C3100009C3100009C310000A5390000A5390000A542
      0000AD42000021630000106308004A5A0000A5420000A5390000A53900009C31
      00009C3100009C310000A5390800AD4A2100BD523100C65A4A007B290800634A
      42009C8C8400D6CECE00F7F7F700000000000000000052B5D6007BD6FF0042BD
      EF0042B5DE00E7FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CF7FF007BEF
      FF004ACEE70042CEE70021A5CE00088CBD0073E7F7008CF7FF008CF7FF008CF7
      FF0052CEEF0018ADD60010ADD600008CBD00008CC60010AD7B0021BD390021A5
      3900639C6B00E7E7E700FFFFFF00000000000000000000000000FFFFFF00CEAD
      A500CEAD9C00F7ADA500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500F7ADAD00DEBDBD00EFDEDE00E7D6CE00CEB5AD00CEAD9C00DEAD9C00FFAD
      AD00FFB5B500FFB5B500FFB5B500F7ADAD00DE9C9C00EFADAD00FFB5B5007363
      630084848400EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3CDC500D3BC
      B500D3BCB5000000000000000000000000000000000000000000000000000000
      00006E92B500579FCC00BFF1FC008CD7F70056BCF10021A1EB001C7EC4007599
      BB000000000000000000000000000000000000000000E7B57300FFB53900FFB5
      3900F79408009C3100009C310000A5390000AD420000AD4A0000B54A0000B54A
      0000B55200003963000000630000006300009C520000B54A0000AD4A0000AD42
      0000A53900009C3100009C3100009C3100009C5A3100AD635200AD4A31006329
      18007B6B5A00BDB5AD00EFE7E700FFFFFF00000000005ABDDE0084D6FF0052C6
      F70029ADDE00C6EFF700BDFFFF008CF7FF0094F7FF0094F7FF0094F7FF0094FF
      FF006BE7F70052CEE7004ACEE7000894C60039BDDE0094FFFF0094F7FF0094FF
      FF0084EFFF0029B5DE0021ADD600089CCE00008CC600009CB50018B542004273
      4A00B5B5B500F7F7F7000000000000000000000000000000000000000000E7DE
      DE00C6A59C00CEAD9400F7ADA500FFADAD00FFADAD00FFADAD00FFADAD00EFA5
      A500BDADAD00F7F7F700000000000000000000000000E7D6D600CEADA500CEA5
      9400EFADA500FFADB500FFADAD00FFADAD00FFADAD00FFADAD00FFADAD00CE94
      940063636300D6D6D600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C4AAA50097777500785555008B6C69009A7F
      7200937771007D5B5B008F6F6D00AE918D00E3CDC50000000000E1CCC4000000
      0000BAA4A1006590B6004E9CCF0056BBF10020A0EB001B82CA00759EC1000000
      00000000000000000000000000000000000000000000EFD6AD00EFAD5200FFB5
      4200F7AD4200A5390000AD420000B54A0000B54A0000BD520000BD520000C65A
      0000C65A0000526B000000730000006B0000006B0000A55A0000BD520000B54A
      0000B54A0000AD420000A539000094310000736339008C634200AD635200AD52
      2100634A4200A5948C00DED6D600FFF7F7000000000063BDDE0084D6FF0052C6
      FF0039BDEF0084CEE700DEFFFF008CFFFF0094FFFF0094FFFF0094FFFF0094FF
      FF008CF7FF0063DEEF005AD6EF0031BDDE00009CCE0073E7F7009CFFFF0094FF
      FF008CF7FF0042C6E70029B5DE0010A5D6000094CE00009CCE0008A56B004273
      4A00ADADAD00EFEFEF000000000000000000000000000000000000000000EFEF
      EF00CEC6BD00C6AD9C00CEA59400FFADAD00FFADAD00FFADAD00FFADAD00AD8C
      8C00E7E7E7000000000000000000000000000000000000000000EFE7E700CEAD
      9C00CEA59400F7ADA500FFADAD00FFADAD00FFADAD00FFADAD00FFADAD00FFAD
      AD00AD9C9C00EFEFEF0000000000000000000000000000000000000000000000
      000000000000CCB3AD008766650099796B00D3BB9600FAF1BF00FEFAC700FFFF
      D000FFFFD400FFFFD800E2DBC100B09B900080605E00AD928F00B9A7A700A990
      8F00CBBEBE00C4B5B5006898C100268CD1001C87D00075A2C700000000000000
      0000000000000000000000000000000000000000000000000000E7B56300FFBD
      4A00FFBD5200CE6B1800B54A0000BD520000C65A0000C6630000CE630000CE63
      0000736B0000007B0000007B0000007B000000730000426B0000C65A0000C65A
      0000BD520000B54A0000AD420000A5390000526329006B6331008C634200A54A
      1800633121008C7B7300CECEC600F7F7F7000000000052B5DE008CD6FF005ACE
      FF0052C6FF004ABDE700EFFFFF009CFFFF0094FFFF0094FFFF0094FFFF0094FF
      FF009CFFFF0084EFF70063DEEF005ADEEF0018ADD60031BDDE009CFFFF009CFF
      FF0094FFFF0052D6EF0039BDDE0021B5DE00009CCE00009CD600009CA5003973
      4A00A5A5A500EFEFEF0000000000000000000000000000000000EFEFEF009C94
      94007B6B6B00B5948C00E7AD9C00FFA5A500FFADAD00FFADAD00DE949400A5A5
      A500F7F7F700000000000000000000000000000000000000000000000000E7D6
      CE00C6AD9C00D6A59400FFA5A500FFADAD00FFADAD00FFADAD00FFADAD00D69C
      9C00E7E7E7000000000000000000000000000000000000000000000000000000
      0000AE918D0088655E00DABB9000FCECB600FEF8C400FFFBC700FFFECC00FFFF
      D100FFFFD700FFFFDC00FFFFE100FFFFE600EEEAD600A28A84008F727200C6B7
      B700AF9A9A00BDAAAA00DECDC9007FAACC0082ACCD0000000000000000000000
      0000000000000000000000000000000000000000000000000000DEB58400FFBD
      5A00FFBD5A00FFBD5A00BD520000C6630000CE630000CE630000CE6B0000D66B
      000021840000008400000084000000840000007B000052730000CE630000CE63
      0000C65A0000BD520000B55200008C520000316318005263290073633900945A
      3900733110007B6B6300C6BDBD00F7EFEF000000000052BDDE0094DEFF0063CE
      FF0063CEFF0042BDE700CEEFF700CEFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF007BEFF7006BE7F70052D6EF0018A5D6006BDEEF009CFF
      FF009CFFFF0063DEEF0042CEE70031BDDE0010A5D60010A5DE00089CC600316B
      73008C8C8C00DEDEDE0000000000000000000000000000000000D6BDB500D6A5
      9400FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500A57B7B00C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      0000CEADA500CEAD9400EFA59C00FFA5A500FFA5A500FFA5A500AD7B7B00ADA5
      A500EFEFEF00F7F7F7000000000000000000000000000000000000000000AE91
      8D00906C6100F2D39D00FCEEB700FDF4BF00FDF2BC00FEF7C300FFFECC00FFFF
      D300FFFFD900FFFFE000FFFFE500FFFFEA00FFFFEF00FFFFF100AB9590008C6F
      6F00B9A7A700B49B970000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA54200E794
      3100FFC66300FFC66B00DE842100CE630000CE6B0000D66B0000DE730000DE7B
      000094840000008C0000008C0000298C0000DE7B0000DE730000D66B0000CE6B
      0000C6630000316B00005A630000216300001063080031631800526329007B63
      39008439080073635A00C6BDB500F7EFEF000000000063BDDE0094DEFF006BD6
      FF006BD6FF004AC6F7006BC6E700EFF7FF00EFFFFF00DEFFFF00CEFFFF00C6FF
      FF00B5FFFF00B5FFFF009CFFFF0073EFF70073E7F70042C6E70018A5DE0029AD
      DE0039BDE70042BDE70039C6E70031BDE70018ADDE0021ADDE0018A5DE00187B
      9C006B6B6B00C6C6C600F7F7F700000000000000000000000000C6A59400D6A5
      9400FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A5007B636300CECE
      CE00FFFFFF000000000000000000000000000000000000000000000000000000
      0000DED6D600CEAD9C00D6A59400FFA5A500FFA5A500FFA5A5007B5A5A006363
      630094949400BDBDBD00F7F7F700000000000000000000000000CCB3AD008863
      5C00F1CE9700FCEAB300FDEFB900FCEAB300FDF0BB00FEF9C500FFFFCE00FFFF
      D500FFFFDB00FFFFE200FFFFE800FFFFEE00FFFFF400FFFFF700FFFFF600AB95
      90008E717100C0A9A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE943900C65A
      0000FFBD6300FFC67300FFC66B00D66B0000DE730000E77B0000E77B0000848C
      0000B58C000042940000738C0000EF840000EF840000E77B0000DE7B0000DE73
      0000297B00000073000000730000006B00000063000018630800396318006363
      29009442080073635A00BDB5B500EFEFEF00000000005ABDDE009CE7FF0073DE
      FF0073DEFF0073D6FF0042C6EF0052C6E70073C6E70084CEE700B5E7EF00CEEF
      F700EFFFFF00EFFFFF00E7FFFF009CF7FF007BEFF70073E7F70031B5E70031B5
      E70039BDE70029B5E70029ADE70029ADE70029B5E70029ADE70029B5E700109C
      CE00425A63009C9C9C00E7E7E700000000000000000000000000C69C8C00DEA5
      9400FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C0073636300C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      0000F7EFEF00C6AD9C00CEA59400FF9C9C00FF9C9C00FF9C9C00EF949400AD73
      7300846363006B6B6B00E7E7E70000000000000000000000000088676600D7AC
      7E00FBE3AB00FCEBB400FBE4AB00FCE8B100FDF1BB00FEFAC600FFFFCF00FFFF
      D500FFFFDC00FFFFE300FFFFE900FFFFF000FFFFF600FFFFFC00FFFFFA00F7F4
      EA00896B6900D4BCB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE840800C65A
      0000DE842100FFCE7B00FFCE8400F7B55A00D67B000031940000639400007394
      0000A5940000739C0000C6940000F7940000F78C0000EF8C0000EF840000B57B
      000031840000007B000000730000007300000063000000630000216310006352
      18009442080073635A00BDB5B500EFEFEF00000000005ABDE700A5E7FF007BE7
      FF007BE7FF007BE7FF007BE7FF006BDEFF005AD6F7005ACEF70052CEEF004AC6
      E7004ABDE7005ABDE700B5DEEF00EFFFFF0094F7FF007BF7FF005AD6F70039BD
      EF0073DEF7006BE7F70063DEEF004AC6EF0039B5EF0039B5EF0039B5EF004ABD
      E700217B940073737300CECECE00FFFFFF000000000000000000C6A59C00D6A5
      9400FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00735A5A00ADAD
      AD00F7F7F7000000000000000000000000000000000000000000000000000000
      0000FFF7F700C6ADA500CEAD9400F79C9400FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C005A5A5A00E7E7E7000000000000000000C6ADA8009B746400F9D8
      9D00FBE5AD00FBE6AE00FADFA600FCE8B000FDF0BB00FEF9C500FFFFCE00FFFF
      D500FFFFDB00FFFFE200FFFFE800FFFFEE00FFFFF400FFFFF800FFFFF700FFFF
      F200CEC2B600A285820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE840800C663
      0000CE630000F7BD6B00FFD68C00FFD68C0084AD390008A51000D6940000CE9C
      0800BD9C0800E79C0000FF9C0000FF9C0000FF940000FF940000F78C0000EF84
      0000D67B000010840000007B000000730000186B000018630000395A00003163
      1800944A080073635A00C6BDB500EFEFEF00000000007BCEE700ADF7FF0084EF
      FF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF0084EFFF007BE7
      FF007BE7FF007BE7FF0042C6E700A5D6EF00EFFFFF00BDFFFF00ADF7FF006BCE
      F7008CDEF70094F7FF0073EFF7005ADEF70039BDEF0042BDEF0039BDEF008CDE
      F70031A5CE004A5A6300A5A5A500EFEFEF000000000000000000EFDEDE00D6BD
      B500CEAD9C00D6A59400EF9C9400FF9C9400FF9C9C00FF9C9C008C6363008C8C
      8C00EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000C6ADA500CEAD9C00F7949400FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C005A5A5A00E7E7E7000000000000000000A68A8700D0A57E00FADE
      A500FBE4AC00FADDA400FADDA400FBE6AE00FDEFB900FEF8C300FFFECD00FFFF
      D300FFFFDA00FFFFE000FFFFE600FFFFEB00FFFFEF00FFFFF200FFFFF100FFFF
      EE00F7F5E00083636300EBD6CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE942900D66B
      0000CE6B0000E7841800FFD69400FFD69C00FFD69C0029B5310018B5310018B5
      390073B52900FFAD2100FFAD2100FFA51800FF9C0800FF9C0000FF940000F78C
      0000EF8400007384000031840000297300008C6B00007B5A0000296300002163
      0800945208007B6B5A00C6BDB500F7EFEF00000000007BCEEF00B5F7FF008CF7
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7
      FF008CEFFF008CF7FF0084EFFF004AC6E70073C6E700A5DEEF00BDE7F700CEEF
      FF00D6EFFF00E7FFFF00CEF7FF00BDF7FF0094DEFF007BD6FF005AC6FF00B5E7
      FF00A5DEEF0029738C008C8C8C00E7E7E7000000000000000000000000000000
      0000E7E7E700BDA59C00CEA59400F7949400FF949400FF949400B57373006363
      6300D6D6D6000000000000000000000000000000000000000000000000000000
      0000FFF7F700C6A59C00CEAD9400F7949400FF949400FF949400FF949400FF94
      9400FF94940084848400EFEFEF000000000000000000886A6A00EFC18700FADD
      A400FBE3AB00F9D79D00FCEBB400FEFBC800FEFACB00FFFCD500FFFEDC00FFFF
      DA00FFFFD700FFFFDD00FFFFE200FFFFE600FFFFE900FFFFEB00FFFFEB00FFFF
      E800FFFFE400A68F8800D7C1BA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E79C3900D673
      0000D66B0000DE7B0000C6A53900FFDE9C00FFDEA500D6D69C0021BD4A0031C6
      520029C65200A5C65200FFC65A00FFBD4A00FFB53100FFA51800FF9C0000FF94
      0000F78C00008C8C0000188400004A7B000000730000006B0000006300001063
      0800845208008C7B6B00CEC6BD00F7F7F700000000007BCEEF00BDFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF008CF7FF0073E7FF0052D6D60029C69C0029BD
      AD0029ADAD004AB5B50073CED60094DEE700ADDEF700C6EFFF00CEEFFF00EFF7
      FF00EFF7FF0039A5C600ADADAD00EFEFEF00000000000000000000000000F7F7
      F700B5ADA500BD9C8C00EF949400F7949400F7949400F7949400EF8C8C005A52
      520094949400EFEFEF0000000000000000000000000000000000000000000000
      0000F7EFEF00BDA59400D6A59400FF949400F7949400FF949400EF8C8C00E794
      9400EFA59C00EFEFEF00000000000000000000000000987E7E00F7C88B00FADC
      A200FBE2AA00FCEAB300FCECB600FBE3AB00FCEAB200FDF2BC00FEFAC600FFFF
      DD00FFFFE900FFFFD800FFFFDD00FFFFE000FFFFE300FFFFE400FFFFE400FFFF
      E200FFFFE000C3B3A600C6AEA900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7B57300EF8C
      0000DE730000E77B00007B9C1000ADCE8400FFDEAD00FFE7B500B5DE9C0063CE
      630031CE630039CE6B00D6DE8400FFD67B00FFCE6300FFB53900FFA51000FF9C
      0000FF940000E7840000528C000008840000007B000000730000006B00002163
      00009C5218009C948400DED6CE00F7F7F7000000000094D6EF00B5FFFF0094FF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF009CFFFF009CFFFF0094FFF7005AEF94004AE7
      730031CE5A00008C080018BD5A0021C67B00008C420000945A0018A57B0039A5
      A50052ADD6005AB5CE00E7E7E700FFFFFF000000000000000000FFFFFF00CEC6
      BD00C6A59400EF948C00F78C8C00F78C8C00F78C8C00F78C8C00F78C8C00AD6B
      6B005A5A5A00ADADAD00EFEFEF00000000000000000000000000000000000000
      0000D6C6C600C6AD9C00E7948C00F78C8C00F78C8C00F78C8C00846B6B009494
      8C00E7E7E70000000000000000000000000000000000A8919100F7CC9000F9DA
      A000FBE2A900FBE6AE00FADCA200FBE6B000FCECBA00FCEDB700FEF5C000FFFC
      C800FFFFE200FFFFDE00FFFFD700FFFFDB00FFFFDD00FFFFDE00FFFFDE00FFFF
      DC00FFFFDB00C9BBA700C2AAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFDEBD00FFA5
      1000DE730000D684000021B5310021BD4A00E7DEAD00FFE7BD00FFE7C600B5E7
      A50052D6730042D66B0042CE6B00E7EF9C00FFDE8400FFC65A00FFB53100FF9C
      0000FF9400004A940000428C00006B7B0000217B000000730000006B0000636B
      000094633900B5ADA500E7E7DE00FFFFFF00000000009CDEEF00C6FFFF0094FF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00ADFF
      FF00A5FFFF00A5FFFF009CFFFF0094FFFF0094FFFF009CFFFF007BF7D6004AE7
      7B004AE7840018AD3100109C100031CE520000840000008C000000840000216B
      29008C949C00DEE7E70000000000000000000000000000000000F7EFEF00C6AD
      9C00D69C8C00EF8C8C00F78C8C00F78C8C00F78C8C00F78C8C00F78C8C00EF84
      8400845A5A005A5A5A00ADADAD00E7E7E700FFFFFF000000000000000000EFEF
      EF00B59C9400D6A59400EF8C8C00F78C8C00F78C8C00F78C8C009C6B6B005252
      52009C9C9C00EFEFEF00000000000000000000000000A28B8B00F7C68800F9D8
      9E00FBE1A800FCEAB200FEF9C600FFFFD500FFFFE400FFFDE800FDF3C500FEF6
      C100FFFCCB00FFFFE500FFFFD200FFFFD400FFFFD600FFFFD700FFFFD700FFFF
      D600FFFFD500C9BBAA00CAB3AE00000000000000000000000000000000007D5E
      3F00745536006F5032000000000000000000000000000000000000000000E794
      2100EF84000063A5210021BD420029C6520039CE6B00EFE7BD00FFEFCE00FFEF
      D600B5EFAD0063DE8C008CE79C00FFFFCE00FFEFA500FFD67300FFBD4200FFA5
      1000FF940000EF8C0000CE8400004A84000010840000846B0000006B00008C6B
      100094846B00CECEBD00F7F7EF00000000000000000063C6DE00DEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF0094FFFF00C6FFFF00D6EF
      FF00B5EFF700C6F7FF00CEFFFF00CEFFFF00C6FFFF00BDFFFF00ADFFFF006BF7
      AD004AEF840042DE73000894100010A52100008C00000084000000840000216B
      210094949400E7E7E7000000000000000000000000000000000000000000C6AD
      A500CEAD9400E78C8400EF848400EF848400EF848400EF848400EF848400EF84
      8400EF848400845A5A005252520084848400BDBDBD00DEDEDE00DEDEDE00AD9C
      9400CEA59400E78C8400EF848400EF848400EF848400EF848400EF8484009C63
      6300635A5A00C6C6C600FFFFFF000000000000000000A28A8900F0C08900F9D6
      9B00FADFA500FCECB500FFFBC700FFFFD800FFFFE700FFFFF600FFFDEE00FDF0
      BA00FEF5C000FFFDDB00FFFECB00FFFFCE00FFFFD000FFFFD000FFFFD000FFFF
      D100FFFFCE00B6A29600DDC7C1000000000000000000000000008A6C4D008365
      46007E5F400074553600694A2D0000000000000000000000000000000000F7D6
      A50094AD310018B5310021BD4A0031CE630039CE6B005ADE7B00EFEFCE00FFF7
      DE00FFF7DE00E7F7DE00FFFFEF00FFFFCE00E7EFAD00CED67300FFBD4A00FFA5
      1800D69C0000F78C0000EF8400005284000000840000527300004A7B0000A56B
      3100B5AD9C00DED6CE00F7F7EF00FFFFFF00000000007BC6E700B5E7F700CEFF
      FF009CFFFF009CFFFF009CFFFF0094FFFF0094FFFF00B5FFFF00D6F7FF0042A5
      C6006BB5C60073BDDE006BBDDE006BBDDE007BCEE7008CD6EF00ADE7F7009CEF
      DE0052EF8C0052EF840029BD4A0000840000008400000084000000840000217B
      2900848C8400DEDEDE000000000000000000000000000000000000000000E7D6
      D600CEAD9C00D6948C00EF848400E7848400DE948C00DE8C8400EF848400EF84
      8400EF848400EF848400B56B6B00735252005252520063636300947B7B00D694
      8C00E7848400EF848400EF848400EF848400EF848400EF848400EF848400E784
      84008C6B6B00D6D6D600FFFFFF000000000000000000BCA5A200D6A67D00F8D3
      9800FADBA100FCEAB300FEF8C400FFFFD400FFFFE100FFFFEB00FFFFEB00FDEF
      BF00FCEEB700FFFED800FEF6C200FEF9C500FEFBC700FFFCC800FFFCC800FFFF
      CD00F8F2C100A38B8B00EDD9D0000000000000000000A48A6C009F846600886A
      4B00826445007D5E3F00775839006C4D30000000000000000000000000000000
      0000E79C310063BD420029C6520031CE63004AD6730063DE84008CE79C00F7F7
      DE00FFF7E700FFF7EF00D6F7D600FFFFCE0063DE7B0039CE6300B5BD4A00ADAD
      210052A51800D6940000EF840000DE7B0000427B0000107B0000AD7B1000A594
      7B00C6BDB500DED6C600EFE7E700FFFFF70000000000E7F7FF0042B5DE00DEF7
      FF00D6FFFF00D6FFFF00D6FFFF00D6FFFF00C6FFFF00EFFFFF005AB5D60094AD
      B500EFEFEF00FFFFFF00F7FFFF00EFF7FF00DEEFF700BDDEEF0094D6E7007BC6
      DE0063DEAD0052F784004AE7840010941800007B0000007B0000007B00001873
      1800848C8400DEDEDE000000000000000000000000000000000000000000FFFF
      FF00DEC6BD00DEC6BD00EFD6D600E7D6CE00C6AD9C00CE9C8C00E77B7B00E77B
      7B00E77B7B00E77B7B00E7848400E77B7B00DE7B7B00DE7B7B00E7848400E77B
      7B00E77B7B00E77B7B00E77B8400E77B7B00E77B7B00E77B7B00E7847B00DE7B
      7B00A5949400EFEFEF00000000000000000000000000D6C1BB00BB988700F7C6
      8900F9D79C00FBE5AD00FDF2BD00FFFDCB00FFFFD600FFFFDC00FFFFDC00FCE9
      B500FDEFBB00FFFCCD00FCEEB700FDF0BB00FDF2BD00FDF3BE00FEF9C500FEF7
      C300DCCDAF00BFAAA700000000000000000000000000B39C7F00AA917400987C
      5D00886A4B00846647007F604100775839000000000000000000000000000000
      0000FFF7E700CEA5290042BD42005AC6520094BD4A00D6C64A00B5E79400C6F7
      B500FFFFE700FFFFF70000000000FFFFDE0063DE840031CE630029C6520052B5
      3100FF940000F78C0000E77B0000DE730000C6730000A5941000AD8C6300CEBD
      B500DEC6A500D6C6BD00DED6D600F7F7EF0000000000000000009CD6EF0063BD
      DE006BBDDE0073C6DE007BC6E7008CCEE700A5DEEF0073CEE70073B5C600E7E7
      E700FFFFFF000000000000000000000000000000000000000000000000000000
      0000EFFFF7006BF794005AF78C0039CE6300007B0000007B0000007B0000106B
      1000848C8400DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000E7DEDE00C6A59400D6948400E77B7B00E77B
      7B00E77B7B00E77B7B00E77B7B00E77B7B00E77B7B00E77B7B00E77B7B00E77B
      7B00E77B7B00E77B7B00E77B7B00DE8C8400D69C8C00DE847B00E77B7B00C684
      8400DEDEDE000000000000000000000000000000000000000000B6A1A000E3AE
      7D00F8D19500FADDA300FCE9B100FDF3BE00FEFBC700FFFDCC00FFFDCC00FBE4
      AC00FEF9C500FDEEB800FBE5AD00FCE8B000FCE9B200FDF1BB00FEF5C100F7E5
      B200B39E9A00E1CCC500000000000000000000000000BAA48A00B9A48900A68C
      6E00997D5E0094775800886A4B00846647000000000000000000000000000000
      000000000000FFEFD600D69C2100E79C08004AD67300ADC65A00ADDE8C00FFD6
      7300D6F7AD00EFF7BD0000000000FFFFF700BDEFBD0039CE6B0029C6520018BD
      3900E7940000EF8C0000E77B0000DE7B0000DE840800BD945200CEC6BD00E7E7
      D600E7BD8400CEC6B500D6CEBD00EFEFE7000000000000000000000000000000
      0000F7FFFF00E7F7F700D6EFF700C6E7EF00BDDEEF00ADDEEF00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5F7CE005AF78C005AF78C0018A531000073000000730000106B
      1000848C8400DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000C6B5AD00CEA59400D6847B00DE737300DE7B
      7B00DE7B7B00DE737300DE737300DE7B7B00DE7B7B00DE7B7B00DE7B7B00DE73
      7300DE7B7B00DE7B7B00E7737300B5737300A58C8400C6A59400DEADA500EFE7
      E700000000000000000000000000000000000000000000000000E2CEC700B7A0
      9B00F0B57900F8D39800FADEA400FBE6AF00FCEDB600FDF0BB00FDEEB800FDF0
      BA00FCECB500F9DAA000FADCA300FBE3AB00FCEDB600FDF1BB00FBE6AF00CAB4
      A200CEBAB6000000000000000000000000000000000000000000C0AC9300B9A4
      8900AA907300A08567009E836400000000000000000000000000000000000000
      00000000000000000000FFEFD600D69C2100ADB53100BDB53900DEBD420094E7
      9C00A5E79C00B5E79400B5DE8400C6EFC600FFEFD600E7E7B50029BD4A0063AD
      2900E7940000EF840000E77B0000DE841000BD945A00D6CEBD00EFE7E700F7EF
      EF00E7C68C00D6BD9400D6C6B500EFE7DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7FFF7007BF7A5005AFF94004ADE7300007B0800007300001063
      10007B847B00DEDEDE0000000000000000000000000000000000000000000000
      00000000000000000000FFF7F700C6ADA500CEA58C00DE737300DE737300DE73
      7300DE737300D68C8400D6847B00DE737300DE737300DE737300DE737300DE7B
      7300DE737300DE737300DE737300BD6B6B005A5A5A00C6C6C600FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000D5C1
      BD00C3A69A00F1B67A00F8D29700F9D99F00FADEA500FBE2AA00FBE4AC00FBE5
      AE00FADCA200FBE2AA00FBE6AF00FCEAB300FCE9B200FADFA600D1BAA400C3B0
      AE00EEDAD200000000000000000000000000000000000000000000000000B9A4
      8900B39C8000A48A6C0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFF700E7A54200FFA51800ADBD4A00E7B5
      310094D67B00ADCE6B006BD67B0052D66B005AD67B00EFE7AD00EFDEA50073BD
      4A00D6940000FF9C1000C6841800AD8C6300C6BDAD00DEDED600EFEFE700E7E7
      DE00DEB57300CEAD7B00CEC6B500EFE7DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEFFDE005AF7940063FF940029AD4200006B0000106B
      1800737B7300D6D6D600FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00D6BDB500CEAD9C00CE8C8400D6737300DE6B
      7300BD737300CEAD9C00CE948400D6737300D6737300D66B6B00D6847B00CEA5
      8C00D67B7300DE6B7300D6737300DE737300846B6B00CECECE00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7C4C000C1ADA800E3B28500F6C68800F9D59A00F9D89E00FADBA100FADD
      A400FAE0A700FBE2A900FBE3AB00FADBA100F1CD9900CCB7A800CAB9B600EFDB
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A68D6F000000000000000000000000000000
      00000000000000000000000000000000000000000000EFD6B500E7A54A00D69C
      2100E7A51800CEAD29007BBD4A00C6AD2100FF9C0000BDA51800F7C66300FFD6
      8C00FFC67300B58C4200947B6300A58C7B00BDADA500CEC6BD00D6CEC600CEC6
      BD00DEA55A00C6A57B00D6CEBD00EFEFE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CF7B50063FF940052EF8400087B10001073
      1800737B7300D6D6D600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600CEAD9C00CE9C8C00D68C
      8C00D6C6C600C6AD9C00CE9C8400D66B6B00D66B6B00D66B6B00C6737300C6AD
      9C00CE948400D66B6B00D66B6B00CE737300CEB5B500F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6D3CC00C8B8B700CFB2A100E2B58C00F3C38C00F6C58700F7C8
      8B00F7CB8E00F7C88B00EAC59B00D7BBA400C6B6B500DAC8C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C6E4F007051330000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EF
      DE00EFCE9C00E7B56B00DEA55200E79C3900DEA54A00DEAD6300DEBD8400E7CE
      B500E7CE9C00FFC66300E7B56B00C6A57B00B5A59400B5ADA500BDB5A500C6AD
      8C00E7942100C6B59400E7DED600F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEFFEF006BFF9C0063FF9C0039C65A000863
      08009CA59C00E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7EFE700EFE7E700F7F7
      F70000000000C6AD9C00CE9C8C00CE6B6B00CE636300D6636300A5737300BDAD
      A500CEAD9C00CE847B00D69C9C00EFDEDE00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1D0CA00D4C5C200CBBCBC00CFC2C200D5CA
      CA00D2C6C600C8BABA00D2C2C000DFCDC800EFDCD30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BCA78D008D6F500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFE7D600EFCE9C00EFBD7B00EFA54A00E7AD5A00E7A54200E7A5
      3100DEC69C00E7DED600F7F7EF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADFFC6006BFF9C006BF7940073BD
      8400DEDEDE00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6BDB500CEAD9C00CE8C8400CE848400D6948C00E7CECE00F7F7
      F700F7EFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E400CBCBCB00ABABAB008A8A8A00757575005E5E5E006E6E
      6E0090909000B9B9B90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6E700314A
      AD00002194000821940008219400082194000821940008299400082994000829
      9C0008299C0008299C0008299C0008299C0008219C0008219C0000219C000021
      A50000219C0000219C0000219C000021A5000021A5000021A50000219C000018
      94002942A500ADB5DE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4D2
      D200A29FA1007875770066616300645F61006A6465006E68690070696C00645D
      60005956520058535000665A5A0081737400B3A7A500DDD7D200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6CEEF000021AD000829
      B5000831B5001031B5001031BD001839BD001839BD001839BD001839B5001839
      BD001839BD001839BD001039BD001031BD001031BD001031BD000831BD000831
      C6000831C6000831BD000829BD000029BD000029BD000029C6000029BD000021
      B5000021AD0000189400ADB5DE00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABA8A0007570
      6F0090868C00B6ABB500C9B9C400DCCCD300DECBCE00E5D0D300D9C1CD00D4BF
      C700B0A79E00AC9E920096727200815758006E4A420084716400B5B7AB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00F7F7F700FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003152CE000831C6001031
      CE001039CE001839CE002142CE002142CE002142CE002142CE002142CE002142
      CE002142CE002142CE002142CE001842CE001842D6001842D6001042D6001042
      D6001039D6001039D6000839D6000839D6000031D6000031D6000031D6000029
      CE000029BD000021AD002942A500FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C968B00AEA8A100BCB7
      B600F1EAEF00F7ECF600E4D4DF00E6D4DB00E4D2D300EAD4D600DDC2CC00C9B3
      B800B5ADA000B5A89A00D2AAAC00CF9DA100A3797200654B3F006E706400AAB6
      B000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700DEDEDE00BDBD
      BD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500ADAD
      AD00BDBDBD00CECECE00DEDEDE00EFEFEF00F7F7F700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000029CE001031D6001839
      D6001842DE00214ADE00294ADE00294ADE002952DE002952DE002952DE002952
      DE002952DE002952DE002952DE002152DE002152DE00214ADE00184AE700184A
      E700184AE7001042E7001042E7000842E7000839E7000039E7000031DE000031
      DE000029CE000021B50000189400FFFFFF000000000000000000000000000000
      0000FFFFFF00C6BDBD00948C8400B5B5B500D6D6D600E7E7E700EFEFEF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAB2B200B1ACA900EFEBEA00EBE9
      E900EDECF000DCDBDF00DDD7DC00E7E1E200DAD4CF00D3C9C200D1BEC100D4C7
      C500DEE1D200BEBEB200BDA4AE00B3909E00BF9EA200A28E89004E4E48007078
      7800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E7009C8473008C4A
      3100844A290084422900844229008442290084422900844229007B4A31007352
      42006B635A007373730084848400A5A5A500C6C6C600E7E7E700EFEFEF00E7E7
      E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600E7E7E700F7F7F700FFFFFF0000000000FFFFFF000831DE001039DE001842
      DE00214ADE00294ADE003152E7003152E700315AE700315AE700315AE7003152
      E700315AE700315AE7002952E7002952E7002952E7002152E7002152E7002152
      E700184AE700184AE700104AE7000842E7000842E7000039E7000039E7000031
      DE000031D6000029BD0000219C00FFFFFF000000000000000000000000000000
      0000FFFFFF008C5A3100B54200007B2100006329100073635A009C9C9400C6C6
      C600E7E7E700EFEFEF00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000928B9000F7F1F600F2F1F500EDEE
      F200E5E8EC00E1E4E800E5E7E800DDDFDF00D1D2CE00DAD6D100CCBAB900D7C8
      C500D6D9CA00C6C7BE00C7B5C200B092A500B7979C00C1A8A400827B72006663
      5F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD522900C6421000D64A
      2100DE523100EF5A3900F75A4A00FF635200FF635200FF635200CE4A2100D64A
      2100D64A2900A53918007B42210063524A00737373009C9C9C00A5A5A5009494
      94008C8C8C007B7B7B0073737300737373007373730073737300737373007B7B
      7B0094949400BDBDBD00EFEFEF00FFFFFF00FFFFFF000831DE001842DE00214A
      E7002952E7003152E700315AE700395AE700395AE700395AE700395AE7004263
      E700849CEF00C6CEF700E7EFFF00FFFFFF00FFFFFF00E7EFFF00BDCEFF007394
      F700295AEF001852EF00104AEF00104AEF00084AEF000842EF000039E7000039
      E7000031D6000029C60000219C00FFFFFF000000000000000000000000000000
      0000FFFFFF00946B3900BD390000C6633100D6845200AD4A10008C2900006B21
      0000633929007B736B00ADADAD00D6D6D600E7E7E700EFEFEF00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000C9C4CD00EEEAF500E5E4EE00ECED
      F700E8EBF300E8ECF100E9EDF200DEE3E600DADFE200E6E1E300CCB6B800DFC9
      C400B5ADA000AFA7A000C7AEBC00C5A1B200B28A8C00D4B0A600AD978500705E
      4D00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD390800D64A2100DE52
      3100EF5A4200FF635200FF6B5200FF735A00FF735A00EF6B4A00D68C5200CE5A
      3100FF635200FF635200E7523900BD4210005A422900315A310021632100186B
      1800187B180021942100188C1800188C1800188C1800108C1000107310001863
      1800395239007B7B7B00CECECE00FFFFFF00FFFFFF000831DE001842DE00294A
      E7003152E700315AE700395AE7004263E7004263E7004263E7008C9CEF00F7F7
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7FF00849CF7001852EF00104AEF00104AEF000842EF000842E7000039
      E7000031D6000029C6000021A500FFFFFF000000000000000000000000000000
      0000FFFFFF0094633100AD310000D6A57B00FFFFEF00FFE7BD00F7BD9400DE94
      5A00C6632900A5420800842900005A2100006B524A0094949400BDC6C600DEDE
      DE00F7F7F700FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000BBB5C000EFEBF700F2EDFC00FFFB
      FF00FBFAFF00F0F1F500E7E7ED00E6E5EE00E6E4F000D7C9D500C6A4AA00EEC7
      C500BDA29400AD918600B88E9500CD979E00C68A7E00EBB49900B58D6A006947
      230077533B00754A350086563A008B5F4800AC8F8B00CDBEBC00000000000000
      00000000000000000000000000000000000000000000C6421000DE523100EF5A
      4200FF635200FF735A00FF736300FF7B6300FF846B00CE5A2900FFE7AD00D684
      5200F76B5200FF6B5A00FF635200EF5A42009C5A180042B542004AC64A002994
      2900218C210052C6520052C652004ABD4A0042BD420039B5390029AD290021AD
      2100088408005A635A00BDBDBD00F7F7F700FFFFFF001039DE002142E7002952
      E700315AE700395AE7004263E7004263E7004263E700BDC6F700FFFFFF00FFFF
      FF00E7EFFF0094ADF7006384EF003963E7003163E7005A7BEF008CA5F700E7EF
      FF00FFFFFF00FFFFFF00ADBDF7001052EF00104AEF00084AEF000842E7000039
      E7000031D6000029C6000021A500FFFFFF000000000000000000000000000000
      0000FFFFFF00945A2100AD310000D6A58400FFFFE700FFEFCE00FFEFD600FFF7
      CE00FFEFC600FFD6AD00F7AD7B00DE844A00BD5A21009C3908007B3108006B52
      4A00D6D6D600FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000AAA6AC00F4EDFA00ECE1F100FFF5
      FF00FFFDFF00FFFDFF00FEF0F400F0E0EB00EDDDEF00D1B5C900D5A0AE00DA9B
      9D00CB928300D1948000DD958900DE8C7B00CF735000BE6B3800995B1F008755
      19008A5B2800905B2800A763220094521100895520008A673C00AF9A7A000000
      00000000000000000000000000000000000000000000C6522900EF5A3900FF63
      5200FF735A00FF7B6300FF846B00FF8C6B00D6633900EFB58400FFE7B500F7C6
      9400E7634200FF736300FF6B5200FF635200A563210052C652005AC65A0073AD
      5A0084B56B004AB54A0063CE63005AC65A0052C6520042BD420039B5390029AD
      2900189C1800526B5200C6C6C600FFFFFF00FFFFFF001039DE00214AE7003152
      E700395AE7004263E7004263E7004A6BE700BDC6F700FFFFFF00FFFFFF00A5B5
      F7004263E7004263E7003963E7003963E7003963E7003163EF00295AEF00295A
      EF0084A5F700FFFFFF00FFFFFF00ADBDF700104AEF00104AEF000842E7000839
      E7000839D6000031C6000021A500FFFFFF000000000000000000000000000000
      0000F7F7F700A5632100AD310000DEAD8C00FFFFE700FFE7C600FFE7C600FFE7
      BD00FFE7BD00FFE7BD00FFEFC600FFEFC600FFD69400FFCE8400E78439008429
      0000BDBDBD00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6BCC900FFF9FF00D2BC
      C100AB938D00DAC0B400FEE3D900FFEDE900FFE4EF00D4A7B800F5B1C200C97A
      7D00D7877000E38B6700D4725000B64A2000CC591C00BC520B00AB5F1300B278
      300094612300965C1A00BD6C1700BC650700A45B0000945C0F006E4B19009F8A
      6A000000000000000000000000000000000000000000D6947B00E7523900FF6B
      5A00FF736300FF846B00FF947300EF845A00DE845200FFDEA500FFDEA500FFDE
      A500D65A3100FF846B00FF735A00FF635200B563290063CE630042AD4200BDDE
      AD00FFFFE700429C420073D673006BCE6B0063CE630052C6520042BD420039B5
      3900189418006B7B6B00D6D6D600FFFFFF00FFFFFF001039DE00294AE700395A
      E7004263E7004263E7004A6BE70094A5EF00FFFFFF00FFFFFF008CA5EF004A6B
      E700426BE700426BE7004263E7003963E7003963E7003163EF00315AEF00295A
      EF00215AEF007394F700FFFFFF00FFFFFF007B9CF700104AEF001042E7000842
      E7000839D6000831C6000021A500FFFFFF000000000000000000000000000000
      0000F7F7F700AD632100B5310000E7BDA500FFFFEF00FFE7CE00FFE7C600FFE7
      C600DED6BD00FFDEB500FFDEB500FFDEB500FFC66B00FFDE7B00EF9C5A007329
      0000CECECE00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8CED400AF8D
      8700B6917700CDA68000C0967100D8AC8F00F3C1B500DA9E9F00D68D9700C36C
      6800EB876400DE6F3700CC531500E2611800E25B0700EA6F1700CB772500B67B
      33008D5F250090581700E58A2F00CF660000D1710000B1640000976321006E4B
      1F00A48866000000000000000000000000000000000000000000C6633900FF6B
      5200FF7B6300FF8C6B00FF946B00CE633100FFCE9C00FFCE9C00FFCE9C00FFD6
      9C00D6734200FF8C6B00FF7B6300F7634A00947B310073D67300399C3900FFFF
      F700FFFFF700CEE7C600399C39007BD67B006BD66B0063CE630052C6520039BD
      3900187B1800B5B5B500EFEFEF0000000000FFFFFF001842DE002952E700395A
      E7004263E7004A6BE7005A73E700F7F7FF00FFFFFF00A5B5F7004A6BE7004A6B
      E7004A6BE700426BE700426BE700FFFFFF00FFFFFF003163E700315AEF00295A
      EF00215AEF002152EF00849CF700FFFFFF00F7F7FF002152EF00104AE7001042
      E7001039D6000831C6000021A500FFFFFF000000000000000000000000000000
      0000EFEFEF00B56B2100B5390000E7C6AD00FFFFF700FFEFD600FFF7CE00BDD6
      CE0021A5CE00EFDEBD00FFE7C600FFD69C00FFAD2900FFD68400EF9C63007329
      0000CECECE00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFEDED00C297
      8200BF905D00F2C07E00FDC98300F6C08100E2A47B00B5715A00BF756F00AE57
      4700D0642E00D75E0F00DD5A0300F76D0D00FE6C0800FC7C1D00FFF4A600FFFC
      BF00FFEBBD00FFFFD500FFEA9700FF922900E06F0000D4740300A9641500804F
      1700956D4300BA9C7F0000000000000000000000000000000000FFF7EF00CE63
      3900EF735200FF8C6B00CE5A2900EF9C7B00BD8C8400BD8C8400EFAD8C00FFBD
      9400D6734200FF8C7300FF7B5A00BD4A18007BCE6B0084DE840063AD6300FFFF
      FF00FFFFFF00FFFFFF0084B5840063C663007BD67B006BCE6B005AC65A00299C
      29006B8C6B00DEDEDE00FFFFFF0000000000FFFFFF001842DE003152E7004263
      E7004A63E7004A6BE70094A5EF00FFFFFF00EFEFFF00526BE7004A6BE7004A6B
      E7004A6BE700426BE7004263E700FFFFFF00FFFFFF003163E700315AEF00295A
      EF00295AEF002152EF002152EF00E7EFFF00FFFFFF006B8CF700104AE7001042
      E7001042D6001031C6000829A500FFFFFF000000000000000000000000000000
      0000E7E7E700BD6B2900B5420000EFCEB500FFFFF700FFF7D600EFE7D600109C
      CE00008CCE00BDD6C600FFEFCE00FFC66300FFBD5200FFEFCE00DE8C52006B21
      0000CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFF7EF00D5A4
      7E00B17D3000C58F2A00D79E3100EBAD4700FFC06F00FFC08700D9957800C575
      5000CE631900DE640000EC6C0100F8720300FF6F0500ED731500A6581600FFEE
      C300FFFFEE00FFF4DB00D3703600F0731F00F2770F00DD6F0500BE6711009E5A
      17008F59240089613E00000000000000000000000000FFFFFF00EFEFEF00CEC6
      C600AD634A00B54218004A214A0000006B00000873000008730010086B007B4A
      6B00D6633100D65A3100846318006BC663007BD67B008CDE8C0073A56B00FFF7
      EF00FFF7E700FFF7E700FFEFDE005A944A0073CE730073D6730052BD52003984
      3900D6D6D600FFFFFF000000000000000000FFFFFF001842DE00315AE7004263
      E7004A6BE700526BE700CED6F700FFFFFF009CADF700526BE700526BE7004A6B
      E7004A6BE700426BE7004263E700FFFFFF00FFFFFF003163E700315AE700295A
      EF002152EF002152EF002152EF007B9CF700FFFFFF00B5C6F700184AE700184A
      E7001842D6001039C6000829A500FFFFFF000000000000000000000000000000
      0000DEDEDE00BD6B2900B5420000EFD6C600FFFFFF00EFE7DE00189CCE0039AD
      CE0029A5CE006BBDCE00FFEFC600735A390031738400B59C6B00E76B10008439
      0000CEC6BD00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000DFB3A600DBA7
      7800DDA54600E4A92E00E5AA2500EBAB2E00F1AC4500EEA95A00F9B68500E492
      5B00DE6F1300F1740200F87C0600F2710000F56C0000DB650C00AF692E00FFEF
      D100FFFFF700FFEEE100AF4C2000DF5E1500EC6E0F00E46E0700D36C0F00BF6A
      1C009F591D0087552B00D3B6A10000000000FFFFFF00EFEFEF00B5B5B5004A4A
      4A0018181800000000000000100008217B001029940010299400082994000010
      7B0031184A00635A5A00638C6300319C310073D6730094E7940084A56300DED6
      BD00739CAD00428CAD006394AD009CB5A5004A94310042A54200427B4200D6D6
      D600FFFFFF00000000000000000000000000FFFFFF00214ADE00395AE7004A6B
      E700526BE7005273E700EFEFFF00FFFFFF00738CEF00526BE700526BE7004A6B
      E7004A6BE700426BE7004263E700FFFFFF00FFFFFF00315AE700315AE700295A
      E7002152E7002152E7002152E700426BEF00FFFFFF00F7F7FF00184AE700184A
      E7001842D6001039C6000829A500FFFFFF000000000000000000000000000000
      0000D6D6CE00C6732900B5420000FFE7D600EFFFFF00109CCE0029A5CE00FFF7
      D60094CED600109CCE00FFEFCE00ADA59C00316B7300DEA56B00FFE7B500F7B5
      6B00DE8C4200CEA58C00DED6CE00E7E7E700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000E4B7AA00E5AE
      7B00E0A63F00E4AA2300EFB32300F4B52B00F1AC3D00EFA74F00EBA15F00D67B
      3600D8620000F2720000F37B0300EA700000F4710900DC6A1600B06E3900F5D5
      B800FAF0E900FFFDF000C9663A00DF5D1700EC6F1300F37C1500E5700D00D76F
      1600B45F1B009D5F2F00A380660000000000FFFFFF00ADADAD00101010000808
      080008080800000008000821630010399C001039A5001039A5001039A5001039
      A50000187B002931520084848400ADBDAD0063A56300429C4200317B5A000873
      B5001884CE001884D6001884CE001073BD00006B73003152390084848400D6D6
      D600FFFFFF00000000000000000000000000FFFFFF00214AE7004263E7004A6B
      E7005273E7005273EF00FFFFFF00FFFFFF005273E700526BE700526BE7004A6B
      E7004A6BE7004263E7004263E700FFFFFF00FFFFFF00315AE700315AE7002952
      E7002152E7002152E7002152E700184AE700FFFFFF00FFFFFF00214AE700214A
      DE00214AD6001839C6000829A500FFFFFF000000000000000000000000000000
      0000CECECE00CE732900B54A0800FFEFE700EFFFFF007BC6DE00EFEFDE00FFFF
      DE00DEDED6000094CE00BDD6CE00FFFFDE00E7CEA500DE9C5A00F7D6A500FFFF
      DE00FFEFCE00F7BD8400DE8C3900D6945A00D6C6B500E7E7E700EFEFEF00F7F7
      F700FFFFFF00FFFFFF00000000000000000000000000FFEEFD00D5A89B00CE97
      6400DAA13800FCC23B00FFCF3F00FFC13900F5B14600FFB45E00F1995200CF66
      1500E4630000FC770000EB740000E7730400F3730D00DC6E1C00A3602700FFED
      CA00FFFFF100FFF6DD00BF592400E5621300EF751100DF660000F1710600E46C
      0C00C0601400A6602B007D55380000000000DEDEDE0010101000080808001010
      10000808080008296B001842AD00184AAD00184AB500184AB500184AB500184A
      AD001039A50008186B006B6B6B00BDBDBD00F7F7F70094B5C600187BCE002994
      F7002994F7002994F7002994F7002994EF001884D600105A8C005A5A5A00A5A5
      A500E7E7E700FFFFFF000000000000000000FFFFFF00294AE7004263E700526B
      E7005273EF005A73EF00FFFFFF00FFFFFF005273E700526BE700526BE7004A6B
      E7004A63E7004263E7004263E700FFFFFF00FFFFFF00315AE700295AE7002952
      E7002152E7002152E700214AE700184AE700FFFFFF00FFFFFF00214AE700214A
      DE00214AD6001839C60010299C00FFFFFF000000000000000000000000000000
      0000C6C6BD00CE732100B5520800FFF7EF00FFFFFF00FFFFEF00FFF7E700FFF7
      E700FFF7DE0029ADCE005AB5CE00FFF7CE00FFF7D600FFDEBD00CE732900BD6B
      1800EFBD8C00FFEFCE00FFF7D600F7C68C00B5945A008C8C94009494BD00DEDE
      E700F7F7F700FFFFFF00000000000000000000000000FDE3F100DEB0A800D69F
      7200E6AC4C00FFC54700FDC23D00F3B43C00F8B15A00FFB87000FFAD6400DE61
      0C00FF6F0200FF7F0800E86D0000E8730A00EE6F0D00D9691500B6702D00FFE4
      B000FDEEC700FFF3C300D76D2000FF7D1800F77F0800F0780000FB750000EF6E
      0700CE651400A5581F007F543300000000008C8C8C0010101000101010001818
      1800080808001852B5001852BD00185ABD00185AC600185AC600185AC6001852
      BD001852BD00002984004A526300ADADAD00E7E7E700217BB500319CFF00319C
      FF00319CFF00319CFF00319CFF00319CFF00319CFF00218CE70021526B007B7B
      7B00CECECE00FFFFFF000000000000000000FFFFFF002952E7004A63E7005273
      EF005A73EF005A73EF00EFEFFF00FFFFFF00738CEF00526BE700526BE7004A6B
      E7004A63E7004263E7004263E700FFFFFF00FFFFFF00315AE7003152E7002952
      E7002952E7002152E700214AE7003963E700FFFFFF00F7F7FF00214AE700214A
      DE00214AD6001839C6001029A500FFFFFF000000000000000000000000000000
      0000BDBDB500D67B2100B5521800FFFFFF00FFFFFF00FFFFEF00FFF7EF00FFF7
      E700FFFFE70094CED600009CCE00F7E7D600FFF7D600FFFFE700D67B4A006331
      2100DED6CE00F7D6B500F7BD7B00D6B59400D6DEE700637BE7000031CE00737B
      BD00F7F7F700FFFFFF00000000000000000000000000F2DBDF00D7AD9A00D9A4
      7100EBB25500FBBF4D00FBC14A00FFCC5F00FFCA7A00FFB56E00FFB06300D353
      0000FF6B0200FF7A0800E0640000E9760E00EB6F1100D9691700AC5E1B00FFF8
      C000FFFFD800FFFFCB00C35A0900ED6C0500E46C0000F37B0000FF780000F976
      0900D96F1A00A054190094694800000000004242420018181800181818002121
      2100081829002163C6002163CE00216BCE00216BD600216BD600216BD6002163
      CE002163CE0010429C0031426300A5A5A5008CADBD00298CDE0039A5FF0039A5
      FF0039A5FF0039A5FF0039A5FF0039A5FF0039A5FF00319CFF001073BD005A63
      6300ADADAD00EFEFEF000000000000000000FFFFFF002952E7004A6BE7005A73
      EF00637BEF00637BEF00CED6FF00FFFFFF00A5ADF700526BE700526BE7004A6B
      E7004A63E7004263E7004263E700FFFFFF00FFFFFF00315AE7003152E7002952
      E7002952E700214AE700214AE700738CEF00FFFFFF00CED6FF00214AE7002952
      DE00214AD6001842BD0010299C00FFFFFF000000000000000000000000000000
      0000B5ADAD00DE732100B55A1800FFFFFF00FFFFFF00FFFFF700FFFFEF00FFF7
      EF00FFFFE700EFEFE7000094CE009CCED600FFFFDE00FFF7E700DE7B39006B42
      2100EFEFEF00FFFFFF00FFFFFF00F7EFDE00BDADAD00214AC6001052E7009C9C
      D600FFFFFF00FFFFFF00000000000000000000000000D1BDAB00D1AE8300DEAE
      6C00EFB85D00FFC75E00FFCA6100F9C56100F7C76F00FFD07E00FFBA6500D360
      0500F4680300FD700200EA6F0100EA770E00DB640700F2843800FFE0A400FFF6
      C400FFFFD200FFFFD100B8551100F57A2400DB630000F97E0800FE790000F679
      0900C4600800A55D2100C09A7800000000003939390021212100212121002929
      290010101000216BD6002173DE002973DE00297BE700297BE700297BDE002973
      DE002173D6001052B50029426B00A5A5A5006394AD0039A5FF0042A5FF0042AD
      FF0042ADFF0042ADFF0042ADFF0042ADFF0042A5FF0039A5FF002994E700315A
      6B0094949400E7E7E7000000000000000000FFFFFF003152E700526BE700637B
      EF00637BEF00637BEF009CADF700FFFFFF00EFEFFF00526BE700526BE7004A6B
      E7004A63E7004263E7004263E700FFFFFF00FFFFFF003152E7003152E7002952
      E7002952E700214AE700214AE700E7EFFF00FFFFFF00849CEF002952E7002952
      DE00294AD6002142BD0010299C00FFFFFF000000000000000000000000000000
      0000B5ADA500DE732100BD632900FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFF7EF00FFFFEF005ABDD60018A5CE00FFF7DE00FFFFE700DE8439007342
      1800E7E7E700FFFFFF00FFFFFF000000000000000000F7F7F700DEDEF700FFFF
      FF00FFFFFF0000000000000000000000000000000000DCCAAB00CEAF7800E3B6
      6C00F6C16600FFCA6700FFCD6900FBCB6B00F7D07400FFD67E00FFCD7200E080
      2300EC6B0800F36B0100F2780700F47F1200E56D0E00EC7F3100DD864800D797
      6100CDA36E00CD985F00C1621D00F1792600F3750F00F0700000F06F0000F17D
      1200C1651200A0602600E9C5A700000000004A4A4A0029292900292929003131
      3100212121002163B5002984EF00298CF7003194FF003194FF003194FF00298C
      F700297BE7001863C60029426B00A5A5A500398CBD0042ADFF0042ADFF004AB5
      FF004AB5FF004AB5FF004AB5FF004AADFF0042ADFF0042ADFF0042A5FF00185A
      840084848400DEDEDE000000000000000000FFFFFF003152E7005273EF006384
      EF006B84EF006B84EF006B84EF00F7F7FF00FFFFFF00A5ADF700526BE700526B
      E7004A63E7004263E7004263E700FFFFFF00FFFFFF00315AE7003152E7002952
      E7002952E7002952E700849CEF00FFFFFF00F7F7FF00315AE7002952E7002952
      DE00294AD6002142BD0010319C00FFFFFF000000000000000000000000000000
      0000ADA59C00DE731800BD6B3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7F700FFFFEF00D6E7E7000094CE00ADDEDE00FFFFEF00D6733100734A
      2100EFEFEF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3D4B300C9AC7300E6BE
      7300FFCE7200FFD26E00FFD26E00FFD67500FED97D00FFDB8100FFE28700CF89
      2C00D3640200EF6C0400E8680000EB6D0000F2731000D5670F00B05E16009F6A
      27008D6D2B00A77E3500D2792800DA620300EF660000FF770300ED740600DE78
      1800AB5A0F00BC83500000000000000000007B7B7B0029292900393939003939
      39003939390010315A00298CF7003194FF00319CFF0039A5FF00319CFF00319C
      FF003194FF001063BD00314A7300BDBDBD004294C6004AB5FF004AB5FF0052B5
      FF0052B5FF0052B5FF0052B5FF004AB5FF004AB5FF004AADFF0042ADFF00216B
      9C0073737300D6D6D6000000000000000000FFFFFF00315AE7005A73EF006B84
      EF006B8CEF006B84EF006B84EF00ADB5F700FFFFFF00FFFFFF0094A5F700526B
      E7004A6BE7004A63E7004263E7004263E700395AE700395AE7003152E7003152
      E7002952E7005273E700FFFFFF00FFFFFF00849CEF002952E7002952E7002952
      DE00294AD6002142BD0010319C00FFFFFF000000000000000000000000000000
      0000ADA59400DE732100BD6B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700BDDEE700E7EFEF00FFFFEF00D66B29007352
      3100EFEFEF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000DAD6C400E4D6B200C4A97000E8C4
      7800FFD77E00FFD87600FFD77600FFDE7E00FFE28800FADE8700FFEF9800EBBC
      6100D0751300E5700700F57B0A00E76A0000EA6D0500D76B0C00C4782500FFF4
      A400FFFAAA00F7D27E00B9630900E06A0500FD720000F36C0000E87B1900BE68
      1600A25F2000F4C49A000000000000000000DEDEDE0018181800393939004242
      42004A4A4A002929290008215A0010429C001852D600216BDE002984EF003194
      F7003194FF00105AA5005A6B7B00D6D6D6004A94C60052B5FF0052BDFF0052BD
      FF0052BDFF0052BDFF0052BDFF0052BDFF0052BDFF004AB5FF004AB5FF00187B
      BD007B7B7B00D6D6D6000000000000000000FFFFFF00315AE7005A7BEF00738C
      EF00738CEF00738CEF006B84EF006384EF00C6CEF700FFFFFF00FFFFFF009CAD
      F7004A6BE7004A63E7004263E7004263E700395AE700395AE700315AE7003152
      E7008C9CEF00FFFFFF00FFFFFF00B5BDF7002952E7002952E7002952E7002952
      DE00294AD6002142BD0010319C00FFFFFF000000000000000000000000000000
      0000A59C8C00DE7B2900B5420000BD632900C67B5200D69C7B00DEBDAD00EFDE
      DE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D67329007352
      3100EFEFEF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000CECDB900D8CCA800C2AB7300E8C8
      7F00FFDB8600FFDB7E00FFDA7E00FFE48A00FFE79200F8E29000ECE08E00FFFA
      A400E19B3E00CA6B0400F1861700E4740200D6650000D06C0600DC943600FFF9
      9F00FFFFAE00FFFFA700C5741300E3730900FC780300F6790B00C76C1700A360
      2100D5A172000000000000000000000000000000000042424200424242004A4A
      4A004A4A4A005A5A5A00636363004A4A4A001821290000105A0008218C001031
      9C0008296B00081018009C9C9C00E7E7E7005A9CBD0052BDFF0052BDFF0039A5
      DE00399CDE004AB5F70052BDFF0052BDFF0052BDFF0052B5FF0042ADEF001073
      A5008C8C8C00DEDEDE000000000000000000FFFFFF00395AE700637BEF00738C
      EF007B94EF00738CEF00738CEF006B84EF00637BEF00C6CEF700FFFFFF00FFFF
      FF00EFEFFF009CADF7006B84EF004263E7004263E7005273E700849CEF00E7EF
      FF00FFFFFF00FFFFFF00B5BDF7003152E7003152E7003152E7003152E7003152
      DE00294AD6002142BD0010319C00FFFFFF000000000000000000000000000000
      0000AD9C8400E7842100BD420000BD4A0000BD420000B5420000B5420000B54A
      0000B55A1800C6734200CE8C6300DEAD9400EFD6C600F7E7DE00D67321007B52
      3100EFEFEF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3D2BE00C6BD9B00C7B58000E7CC
      8900FDDD9100FFDE8A00FFE08C00FFE89500FFEB9E00F9E99D00E9E39A00FFF4
      A700FFD07A00E2983800C5710700DE841500F99A2D00B9620000B6721300FFDD
      8300FFFFAA00F1C36B00A3560000D5700D00FC891B00CC640100B06A2700B284
      55000000000000000000000000000000000000000000DEDEDE00292929005252
      52005252520063636300848484009C9C9C00A5A5A50073737300424242002929
      29002929290039394200CECECE00FFFFFF009CC6D6001884BD001073A500298C
      BD00399CCE00318CBD002184C6001884CE002184D6002184CE00217BAD001063
      8C00ADADAD00EFEFEF000000000000000000FFFFFF00395AE7006B84EF007B94
      EF00849CEF00849CEF007B94EF00738CEF006B84EF00637BEF00A5B5F700F7F7
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7FF0094A5F700395AE700395AE700315AE7003152E7003152E7003152
      DE00294AD6002142BD0010299C00FFFFFF000000000000000000000000000000
      00009C948400FFCE7B00EF842900E77B1000DE6B0000D6630000CE5A0000CE52
      0000C64A0000BD420000BD390000B5390000B54A0000BD521000C65A0000846B
      5A00EFEFEF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E0D100B7AF9200D1C19600E7D0
      9800F9DD9C00FFE29B00FFE69F00FFECA600FFF0AC00FFF0AE00FFFCC000F4E6
      A400FFF9AD00FFE89000D39C3900EAAB4300FFD46E00E49D3C00BF7F27009C61
      11008C580C009B621700CD853700EE9D4800E5903400CA812F00D4A67600EBCE
      B3000000000000000000000000000000000000000000000000009C9C9C002121
      21006363630073737300848484008C8C8C00A5A5A500A5A5A5007B7B7B004A4A
      4A0018181800B5B5B500EFEFEF00FFFFFF00EFF7F7001073A5003194C600429C
      D60052ADDE0073BDE70094CEEF009CCEEF0063A5C6004A94BD001873A5004A73
      8C00CECECE00FFFFFF000000000000000000FFFFFF004263E700738CEF008C9C
      EF0094A5F7008CA5EF00849CEF007B94EF00738CEF006B84EF006B84EF006B84
      EF009CADF700CED6FF00F7F7FF00FFFFFF00FFFFFF00F7F7FF00D6DEFF009CAD
      F7005273E7004A63E7004263E7004263E7003963E700395AE700315AE7003152
      DE00294AD6001839BD0008299C00FFFFFF000000000000000000000000000000
      0000DEDEDE009C9C9400B5AD9400BDAD8400CEB57B00E7B57300E7AD5A00EFA5
      4A00EF943100E7841800E7730800DE6B0000D65A0000D6520000D65A00008473
      6300F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEDE200ADA79000D8C9A800E5D2
      A500F4DCA800FCE3AB00FFE8B000FFEEB600FFF2BB00FFF2BF00FDF1C100FBEF
      B900FFEFAE00FFF5AA00FFEA9200EDC26500F2BE6400FFED9800FFCC8400FFC9
      8800F1B97E00DEA56D00D49A5F00D1965800C98E4800FFD89E00000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0029292900636363008C8C8C0094949400848484006B6B6B00424242002929
      2900ADADAD00F7F7F700FFFFFF0000000000000000007BADCE00298CBD0063AD
      DE007BBDE70084C6E7009CCEEF009CCEE70063ADD6003994C6001073A500B5B5
      BD00EFEFEF00FFFFFF000000000000000000FFFFFF004A63E7007B94EF0094A5
      F7009CADF70094ADF7008C9CEF008494EF00738CEF00738CEF006B84EF006B84
      EF006B84EF00637BEF00637BEF00637BEF00637BEF005A7BEF005A73EF005A73
      EF005273E7005273E7004A6BE7004A6BE7004263E7004263E700395AE7003152
      DE00294AD6001839BD0008299C00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00F7F7F700EFEFEF00D6D6D600BDC6C600ADB5
      AD00ADAD9C00ADA58400BDA57300CEAD6B00DEA55A00EFA54A00EF9431008C73
      6300FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF7F2008E867900AFA28C00BEAE
      9100D3C09B00E6D2A900F6E2B900FFF0C700FFFAD300FFFFDA00FFFBD600F9F0
      C500FFF6C200FFF4B700FFE9A300FFF0A600FFDA9200C79C5900BB8D5700FBCA
      9C00F8C7A100DBAD8B00E2B99800FFDCB8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF008C8C8C004A4A4A005A5A5A00525252005A5A5A008C8C8C00EFEF
      EF00FFFFFF0000000000000000000000000000000000000000005A9CBD004A9C
      C60094CEE700A5D6EF0094CEE7007BBDE70052ADD600217BAD00A5B5BD00EFEF
      EF00FFFFFF00000000000000000000000000FFFFFF004A63E7007B94EF009CAD
      F700A5B5F7009CADF7008CA5F700849CEF007B94EF00738CEF00738CEF006B84
      EF006B84EF006B84EF006384EF00637BEF00637BEF00637BEF00637BEF005A7B
      EF005A73EF005273E7005273E7004A6BE7004A6BE7004263E700395AE7003152
      DE002142D6001839BD0008299C00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00EFEFEF00D6D6D600BDC6C600A5ADA500D6D6
      D600FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E3E200A59D9600938A7D00978B
      79009C8E7800A4957B00B1A28800C0B29600CEBFA500D4C9AE00FFFEE200F5F2
      D300FCF7D000FFF4C600FFEAB700FFF0BA00FCDAA500BF9D6F00896841000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007BAD
      CE004A94B5005AA5C6004A9CC600398CBD005294B500C6D6DE00F7F7F700FFFF
      FF0000000000000000000000000000000000FFFFFF005A7BEF00738CEF008CA5
      EF0094ADF70094A5F700849CEF007B94EF00738CEF00738CEF006B84EF006384
      EF00637BEF00637BEF00637BEF00637BEF00637BEF005A7BEF005A73EF005A73
      E7005273E7005273E7004A6BE7004A6BE7004263E700395AE7003152E7002952
      DE002142CE001031BD00314AAD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBE6E800DDD8D700E5DFDA00D8D0
      C900C2B9AF00AEA59800A1968800988D7F00938978008D8675008E907D009197
      8000B2B49700D7CAAA00F8D2B200FFDFBE00EFCCAB00B4997E00776651000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CED6F7004263E7006B84
      EF007B94EF00738CEF006B84EF00637BEF005A7BEF005A73EF005A73EF00526B
      E700526BE700526BE700526BE7004A6BE7004A6BE7004A6BE7004A63E7004263
      E7004263E7004263E700395AE700395AE700315AE7003152E700294ADE002142
      DE001839CE001031B500B5BDE700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E1
      E000DBD7D600D5D0CD00D3CDC800D0C8C100C7C0B700BCBAB00092988D008791
      81008A8D7D0093877500A8827000BD8F7E00B2918100907D70006E675E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CED6F700637B
      EF004263E7004263E700395AE700395AE7003152E7003152E7003152E7003152
      E7003152E7003152E7003152E7003152E7002952E700294AE700294AE700294A
      E700214AE700214ADE00214AE700214AE7001842DE001842DE001039DE001039
      D600395AD600B5BDE700FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E0DD00DAD7D200CBCDC700BFC6
      BF00B3BBB100AAA59C00B3918B00B8908B00AE948E009C908C009E9C9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3DDDF00E0C3C600BEB0B200ADA8A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFEFFFFBF00000000
      FFF39FFFFFFFFF8FF83FFF1F00000000FFC007FFF0FFFF87F80FFF1F00000000
      FF0001FFC03FFF03F803FF1F00000000FC00007FC00FFE03F800FF1F00000000
      F000001FC003FC03F8007F1F00000000C000000FC000F80FF8007F1F00000000
      80000003C000201FF8007F1F0000000080000003C000003FF8007F1F00000000
      C0000003C000007FF800001F00000000C0000003C00000FFF800001F00000000
      C0000003C00000FFF800001F00000000C0000003C00003FFF800001F00000000
      C0000003C00001FFF800001F00000000C0000003C00001FFF800001F00000000
      C0000003C00001FFF800001F00000000C0000003800000FFF800001F00000000
      C0000003800000FFF800001F00000000C0000003800000FFF800001F00000000
      E0000007800000FFF800001F00000000F000001F800000FFF800001F00000000
      F800007FC00001FFF800001F00000000FC00003FC00001FFF800001F00000000
      FE00003FC20001FFF800001F00000000FF80001FE18003FFF800001F00000000
      FFE0001FE0E003FFF800001F00000000FFF8001FF02003FFF800001F00000000
      FFFF003FF80003FFF800001F00000000FFFF007FFE000FFFF800001F00000000
      FFFF80FFFFC10FFFF800001F00000000FFFF8FFFFFFFCFFFF800001F00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFF000003FFFF8000FFFE0007FFF8003FF
      F000003FFFF8000FFFE0003FFF0000FFF000003FC000000FC000001FFC00007F
      F000003F8000000F8000001FF800001FF000003F8000000F8000000FF000001F
      F000003F8000000F8000000FF000000FF000003F8000000F8000000FE0000007
      F000003F8000000F8000000FC0000007F000003F8000000780000007C0000003
      F000003F8000000780000003C0000003F000003F800000078000000380000003
      F000003F800000078000000380000003F000003F800000038000000380000001
      F000003F800000038000000380000001F000003F800000038000000380000001
      F000003F800000038000000380000001F000003F800000038000000380000003
      F000003F800000018000000180000003F000003F8000000180000001C0000003
      F000001F8000000180000001C0000003F000000F8000000180000001E0000007
      F00000078000001F8000000FE0000007F00000039FFFFF9F9FFFFF9FF000000F
      F00000018000001F8000001FF800001FF80000018000001F8000001FF800003F
      FC0000018003FFFF8003FFFFFE00007FFE0000018007FFFF8007FFFFFF0000FF
      FF000003FFFFFFFFFFFFFFFFFFC003FFFFFFFF87FFFFFFFFFFFFFFFFFFFC3FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFE00FFF0000000000000000
      00000000FFC001FF000000000000000000000000FF00000F0000000000000000
      00000000FE000001000000000000000000000000FC0000000000000000000000
      00000000F8000000000000000000000000000000E00000000000000000000000
      00000000C0000001000000000000000000000000800000070000000000000000
      000000008000001F0000000000000000000000008000003F0000000000000000
      00000000C000007F000000000000000000000000C00000FF0000000000000000
      00000000E00003FF000000000000000000000000F0800FFF0000000000000000
      00000000F18007FF000000000000000000000000F38003FF0000000000000000
      00000000FF8003FF000000000000000000000000FC0003FF0000000000000000
      00000000FC0007FF000000000000000000000000FC0007FF0000000000000000
      00000000F80007FF000000000000000000000000F80007FF0000000000000000
      00000000FC0003FF000000000000000000000000FC1003FF0000000000000000
      00000000FFF003FF000000000000000000000000FFF003FF0000000000000000
      00000000FFF803FF000000000000000000000000FFFC17FF0000000000000000
      00000000FFFE1FFF000000000000000000000000FFFF3FFF0000000000000000
      00000000FFFFFFFF000000000000000040000000FFFFFC1F0000000000000000
      00000000FFFFFC0F000000000000000000000000FFFFF80F0000000000000000
      00000000FFFFF80F000000000000000000000000FFFFFC0F0000000000000000
      00000000FF01FC1F000000000000000000000000FC00FC1F0000000000000000
      00000000F8007C0F000000000000000000000000F0000C070000000000000000
      00000000F0000007000000000000000000000000E00000070000000000000000
      00000000E0000007000000000000000000000000E00000070000000000000000
      00000000E0000007000000000000000000000000E00000070000000000000000
      00000000E0000007000000000000000000000000E00000070000000000000000
      00000000E000000F000000000000000000000000F00001FF0000000000000000
      00000000F00007FF000000000000000000000000F80007FF0000000000000000
      00000000FC0003FF000000000000000000000000FF0003FF0000000000000000
      00000020FFF803FF000000000000000000000000FFFC07FF0000000000000000
      00000000FFE000FF000000000000000000000000FFC000FF0000000000000000
      00000000FF8000FF000000000000000000000000FF8001FF0000000000000000
      00000000FFC00FFF000000000000000000000000FFFFFFFF0000000000000000
      00000000FFFFFFFF000000000000000080001FFF800FFFFFFFC00FFFC1FFFFE0
      000001FF8000FFFFFF0000FF80FFFFC00000007F80000FFFFE00007F809FFF80
      0000003F800000FFFC00003F809FFF000000001F8000003FF800001FC1FFFE00
      0000000F8000001FF000003FE37FFC000000000780000001E000000FFE3FF801
      0000000380000001E0000007F37FF0030000000180000001E0000003F3FFF007
      8000000180000001C0000003FFC7F00F8000000080000003E0038001FE00501F
      8000000080000003E007C003F800003FC000000080000003C007E007F000007F
      C000000080000003C007F003E00003FFC000000080000001C007F001C00003FF
      C000000080000001C007F001C00003FFC000000080000000C007F001800003FF
      C000000080000000C007F801800001FFC000000080000000F007F001800001FF
      C000000080000000E003F003800001FFC000000080000000C001F007800001FF
      C000000080000003C0006003800001E3E000000180000003E0000001800001C1
      E000000080000003E000000180000180F000000080000003E000000380000380
      F0020000C007F003FE000007C0000380F8020000F01FF803FE00000FC00007C1
      FC000000FFFFF803FC00001FE00007E3FE000000FFFFFC01FC00001FF0000FFE
      FF800000FFFFFE01FF00003FF8003FF3FFE00000FFFFFE03FF88007FFE007FF3
      FFFFF800FFFFFF03FFF803FFFFFFFFFFFFFFFFFF80000001FFFFFFFFF803FFFF
      FFFFFFFF00000000FFFFFFFFE0003FFFFFFFFFFF00000000F81FFFFFC0001FFF
      C001FFFF00000000F003FFFF80000FFF80003FFF00000000F0003FFF00000FFF
      8000000100000000F00007FF00000FFF8000000000000000F00001FF00000FFF
      8000000000000000F00001FF0000003F8000000000000000F00001FF0000001F
      8000000000000000F00001FF8000000F8000000000000000F00001FFC0000007
      C000000100000000F00001FFC0000003C000000100000000F000007FC0000003
      8000000300000000F000001FC00000010000000700000000F0000007C0000001
      0000000700000000F0000003800000010000000300000000F000000380000001
      0000000300000000F0000003800000010000000300000000F000000380000001
      0000000300000000F0000187800000010000000300000000F00001FF80000003
      0000000300000000F00001FF000000030000000300000000F00001FF00000007
      8000000300000000F00003FF0000000F8000000300000000F00003FF0000000F
      C000000300000000F00003FF0000003FE001800300000000F80003FF000000FF
      F007C00700000000FFF003FF00001FFFFFFFE00F00000000FFFFFFFF00001FFF
      FFFFFFFF00000000FFFFFFFFE0001FFFFFFFFFFF00000000FFFFFFFFFF001FFF
      FFFFFFFF80000001FFFFFFFFFFFC3FFF00000000000000000000000000000000
      000000000000}
  end
  object dsPesCaixa: TDataSource
    DataSet = DM.cdsPesCaixa
    Left = 576
    Top = 208
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    OnSkinItem = sSkinProvider1SkinItem
    Left = 736
    Top = 56
  end
  object dsUsuario: TDataSource
    DataSet = DM.cdsUsuario
    Left = 800
    Top = 48
  end
  object ImageList1: TImageList
    Left = 440
    Top = 208
    Bitmap = {
      494C010104000800280010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B2A00006828
      00005C230000521F00004E1E00004E1F00004E1F00004E1F00004E1F00004F1F
      00004F1F000040180000000000000000000000000000000000006B2A00006828
      00005C230000521F00004E1E00004E1F00004E1F00004E1F00004E1F00004F1F
      00004F1F00004018000000000000000000000000000000000000000000000000
      000000000000000000000000000064B89C0064B89C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000963A0000BC4A0000B546
      0000AA420000A13F00009A3D0000983C0000993C0000993C0000993C0000993C
      00009F3F00007D310000401800000000000000000000963A0000BC4A0000B546
      0000AA420000A13F00009A3D0000983C0000993C0000993C0000993C0000993C
      00009F3F00007D31000040180000000000000000000000000000000000000000
      0000000000000000000064B89C0098EEC90098EEC90064B89C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B7480000E2580000D352
      0000CA4F0000C24C0000B8480000B0450000AD440000AC430000AD430000AD43
      0000B44600009F3F00004F1F00000000000000000000B7480000E2580000D352
      0000CA4F0000C24C0000B8480000B0450000AD440000AC430000AD430000AD43
      0000B44600009F3F00004F1F0000000000000000000000000000000000000000
      0000000000000000000064B89C005EE1A3005EE1A30064B89C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C44D0000E75B0000D956
      0000FFFFFF00F8E8DE00BF4B0000B7480000AF440000DDB59B00FFFFFF00E9CF
      BE00AD430000993C00004F1F00000000000000000000C44D0000E75B0000D956
      0000D1530000F1D2BE00FFFFFF00D89B7400AF440000A9410000A6410000A741
      0000AD430000993C00004F1F0000000000000000000000000000000000000000
      0000000000000000000064B89C0063E5A80063E5A80064B89C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F3680700E960
      0400FFFFFF00FFFFFF00D9814800C24D0000BB490000F5E7DE00FFFFFF00CF97
      7400AD430000993C00004E1F00000000000000000000CA4F0000F3680700E960
      0400DE5A0100F4D3BE00FFFFFF00DE9E7400BB490000B1450000AA420000A741
      0000AD430000993C00004E1F00000000000000000000000000000000000064B8
      9C0064B89C0064B89C0064B89C0067E9AD0067E9AD0064B89C0064B89C0064B8
      9C0064B89C000000000000000000000000000000000000000000000000006464
      B8006464B8006464B8006464B8006464B8006464B8006464B8006464B8006464
      B8006464B80000000000000000000000000000000000CA4F0000F67A1C00F06B
      0C00FAD7BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AB43
      0000AD430000993C00004E1F00000000000000000000CA4F0000F67A1C00F06B
      0C00EB620400F7D5BE00FFFFFF00E5A07400C64E0000BD4A0000B5470000AB43
      0000AD430000993C00004E1F000000000000000000000000000064B89C00A7F6
      D500A7F6D500A7F6D500A7F6D5006DEDB2006DEDB200A7F6D500A7F6D500A7F6
      D500A7F6D50064B89C00000000000000000000000000000000006464B800A7A7
      F600A7A7F600A7A7F600A7A7F600A7A7F600A7A7F600A7A7F600A7A7F600A7A7
      F600A7A7F6006464B800000000000000000000000000CA4F0000F7913C00F075
      1600F4924D00FFFFFF00FCEADE00DC560000EEBC9B00FFFFFF00E6B99B00B848
      0000B64700009D3D00004F1F00000000000000000000CA4F0000F7913C00F075
      1600EF670700FAD7BF00FFFFFF00ECA37400D4530000CB4F0000C04B0000B848
      0000B64700009D3D00004F1F000000000000000000000000000064B89C0072F2
      B80072F2B80072F2B80072F2B80072F2B80072F2B80072F2B80072F2B80072F2
      B80072F2B80064B89C00000000000000000000000000000000006464B8008181
      FF008181FF008181FF008181FF008181FF008181FF008181FF008181FF008181
      FF008181FF006464B800000000000000000000000000CA4F0000F79F5400F07B
      1F00EF6A0A00FDEBDF00FFFFFF00EF894800FBE9DE00FFFFFF00DA814800C44D
      0000C14B0000A5410000582300000000000000000000CA4F0000F79F5400F07B
      1F00EF6A0A00FBD7BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DA814800C44D
      0000C14B0000A5410000582300000000000000000000000000000000000064B8
      9C0064B89C0064B89C0064B89C0076F6BD0076F6BD0064B89C0064B89C0064B8
      9C0064B89C000000000000000000000000000000000000000000000000006464
      B8006464B8006464B8006464B8006464B8006464B8006464B8006464B8006464
      B8006464B80000000000000000000000000000000000CA4F0000F8A76000F281
      2800F06F1000F9C39E00FFFFFF00FBD6BE00FFFFFF00FBE9DE00D8550000D052
      0000CE500000B1450000682800000000000000000000CA4F0000F8A76000F281
      2800F06F1000FBD8C000FFFFFF00F6A67400EB5C0000E2580000D8550000D052
      0000CE500000B145000068280000000000000000000000000000000000000000
      0000000000000000000064B89C007BFAC2007BFAC20064B89C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F8AD6B00F388
      3200F07A1E00F0731400FFFFFF00FFFFFF00FFFFFF00F8C09B00E5590000DD56
      0000DA550000BF4A0000772E00000000000000000000CA4F0000F8AD6B00F388
      3200F07A1E00FBDBC300FFFFFF00F6AA7600EE620200ED5E0000E5590000DD56
      0000DA550000BF4A0000772E0000000000000000000000000000000000000000
      0000000000000000000064B89C007EFDC5007EFDC50064B89C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FAB77B00F496
      4600F27F2400F07A1E00FBDBC300FFFFFF00FFFFFF00EF640400EE5E0000E95B
      0000E55A0000CB4F0000873500000000000000000000CA4F0000FAB77B00F496
      4600F27F2400FBDDC600FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8C09B00E95B
      0000E55A0000CB4F000087350000000000000000000000000000000000000000
      0000000000000000000064B89C0081FFC80081FFC80064B89C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FABA8000F7B4
      7700F6A45C00F49A4E00F38F3C00F2842C00F07A1E00EF6A0A00EE620300EF5E
      0000F25E0000D9550000963A00000000000000000000CA4F0000FABA8000F7B4
      7700F6A45C00F49A4E00F38F3C00F2842C00F07A1E00EF6A0A00EE620300EF5E
      0000F25E0000D9550000963A0000000000000000000000000000000000000000
      000000000000000000000000000064B89C0064B89C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB4F0000FAA65D00FABB
      8200FABD8700FAB77B00F8AC6900F79D4F00F6872D00F4741300F3660400F360
      0000FA620000E3590000A14000000000000000000000CB4F0000FAA65D00FABB
      8200FABD8700FAB77B00F8AC6900F79D4F00F6872D00F4741300F3660400F360
      0000FA620000E3590000A1400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF5C0A00D46C
      1C00D46E1E00D46E1E00D36A1800D1651300CF5C0A00CC550400CB510100CA50
      0000CB500000BA48000000000000000000000000000000000000CF5C0A00D46C
      1C00D46E1E00D46E1E00D36A1800D1651300CF5C0A00CC550400CB510100CA50
      0000CB500000BA48000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFC003C003
      FE7FFFFF80018001FC3FFFFF80018001FC3FFFFF80018001FC3FFFFF80018001
      E007E00780018001C003C00380018001C003C00380018001E007E00780018001
      FC3FFFFF80018001FC3FFFFF80018001FC3FFFFF80018001FE7FFFFF80018001
      FFFFFFFFC003C003FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
