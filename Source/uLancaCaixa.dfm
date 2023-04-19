inherited FormLancaCaixa: TFormLancaCaixa
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento Manual'
  ClientHeight = 200
  ClientWidth = 443
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 449
  ExplicitHeight = 225
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 159
    Width = 443
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 354
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 273
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B89CFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FF64B89C98EECA98EECA64B89CFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C9CF1CD60E3A560E3A59C
        F1CD64B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        64B89CA1F3D166E8AB66E8AB66E8AB66E8ABA1F3D164B89CFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C6DEDB26DEDB264B89C64B89C6D
        EDB26DEDB2A7F6D564B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FF64B89C64B89CFB00FFFB00FF64B89C73F3B973F3B9ABF9D964B89CFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FF64B89C79F8BF79F8BFB0FBDD64B89CFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C7EFCC47EFCC4B3FD
        E064B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FF64B89C81FFC881FFC864B89CFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B8
        9CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object Notebook1: TNotebook [1]
    Left = 0
    Top = 0
    Width = 443
    Height = 145
    Align = alTop
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'lancamento'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 129
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 17
          Width = 86
          Height = 13
          Caption = 'Data do Lan'#231'anto'
        end
        object Label2: TLabel
          Left = 144
          Top = 17
          Width = 101
          Height = 13
          Caption = 'Valor do Lan'#231'amento'
        end
        object Label3: TLabel
          Left = 16
          Top = 72
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Tipo: TLabel
          Left = 274
          Top = 17
          Width = 21
          Height = 13
          Caption = 'Tipo'
        end
        object DBDateEdit1: TDBDateEdit
          Left = 16
          Top = 36
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'DATA_HORA'
          DataSource = dsCaixa
          NumGlyphs = 2
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit1: TDBEdit
          Left = 144
          Top = 36
          Width = 121
          Height = 21
          DataField = 'VALOR'
          DataSource = dsCaixa
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 91
          Width = 387
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dsCaixa
          TabOrder = 3
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 274
          Top = 36
          Width = 130
          Height = 21
          DataField = 'TIPO'
          DataSource = dsCaixa
          Items.Strings = (
            'CR'#201'DITO'
            'D'#201'BITO')
          TabOrder = 2
          Values.Strings = (
            'C'
            'D')
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'abertura'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 129
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 75
          Width = 54
          Height = 13
          Caption = 'Valor Inicial'
        end
        object Label5: TLabel
          Left = 16
          Top = 16
          Width = 102
          Height = 13
          Caption = 'Abertura de Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 40
          Width = 170
          Height = 13
          Caption = 'Informe um valor inicial caso deseje.'
        end
        object Label11: TLabel
          Left = 143
          Top = 75
          Width = 25
          Height = 13
          Caption = 'Obs.:'
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 94
          Width = 121
          Height = 21
          DataField = 'VALOR'
          DataSource = dsCaixa
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object edObs2: TEdit
          Left = 143
          Top = 94
          Width = 277
          Height = 21
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'fechamento'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 129
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 16
          Width = 123
          Height = 13
          Caption = 'Fechamento de Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 16
          Top = 75
          Width = 86
          Height = 13
          Caption = 'Saldo em Dinheiro'
        end
        object Label10: TLabel
          Left = 143
          Top = 75
          Width = 25
          Height = 13
          Caption = 'Obs.:'
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 94
          Width = 121
          Height = 21
          DataField = 'VALOR'
          DataSource = dsCaixa
          ReadOnly = True
          TabOrder = 0
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
        object edObs: TEdit
          Left = 143
          Top = 94
          Width = 277
          Height = 21
          TabOrder = 1
          OnEnter = EditEnter
          OnExit = EditExit
          OnKeyPress = SelectProximo
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 392
    Top = 16
  end
  object dsCaixa: TDataSource
    DataSet = DM.cdsCadCaixa
    Left = 336
    Top = 56
  end
end
