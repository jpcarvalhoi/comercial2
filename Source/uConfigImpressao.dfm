object frmConfigImressao: TfrmConfigImressao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o de Relat'#243'rio'
  ClientHeight = 209
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 168
    Width = 295
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      295
      41)
    object BitBtn1: TBitBtn
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      DoubleBuffered = True
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 210
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      DoubleBuffered = True
      ModalResult = 2
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 295
    Height = 168
    ActivePage = tbsConta
    Align = alClient
    TabOrder = 1
    object tbsVeiculo: TTabSheet
      Caption = 'Ve'#237'culo'
      object rgvalor: TRadioGroup
        Left = 8
        Top = 8
        Width = 185
        Height = 65
        Caption = 'Op'#231#245'es de relat'#243'rio'
        ItemIndex = 0
        Items.Strings = (
          'Relat'#243'rio TSJT'
          'Relat'#243'rio Agregado')
        TabOrder = 0
      end
      object ckpagina: TCheckBox
        Left = 8
        Top = 79
        Width = 169
        Height = 17
        Caption = 'Imprimir um ve'#237'culo por p'#225'gina'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object tbsConta: TTabSheet
      Caption = 'Contas'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 9
        Width = 91
        Height = 13
        Caption = 'Layout do relat'#243'rio'
      end
      object cbContas: TComboBox
        Left = 8
        Top = 24
        Width = 246
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        Items.Strings = (
          'Detalhado dia a dia'
          'Agrupado por Grupo de Contas'
          'Pagamento de Funcion'#225'rios'
          'Lan'#231'amentos Parcelados/Finaciamentos')
      end
    end
  end
end
