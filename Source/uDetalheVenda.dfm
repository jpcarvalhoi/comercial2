inherited FormDetalheVenda: TFormDetalheVenda
  Caption = 'Detalhamento de Venda e Or'#231'amento'
  ClientHeight = 469
  ClientWidth = 984
  ExplicitWidth = 1000
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel [0]
    Left = 0
    Top = 161
    Width = 984
    Height = 308
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel4: TPanel
      Tag = 1
      Left = 0
      Top = 0
      Width = 984
      Height = 23
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Produtos'
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
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 23
      Width = 984
      Height = 285
      Align = alClient
      BorderStyle = bsNone
      DataGrouping.GroupLevels = <>
      DataSource = DM.dsItenVenda
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'iditem'
          Footers = <>
          Title.Caption = 'ID. Item'
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'idproduto'
          Footers = <>
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'idkit'
          Footers = <>
          Title.Caption = 'C'#243'd. Kit'
        end
        item
          EditButtons = <>
          FieldName = 'descricaocalc'
          Footers = <>
          Width = 306
        end
        item
          EditButtons = <>
          FieldName = 'qtde'
          Footers = <>
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'preco'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'desconto'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'Total_Item'
          Footers = <>
          Title.Caption = 'Total do Item'
          Width = 74
        end
        item
          EditButtons = <>
          FieldName = 'barrascalc'
          Footers = <>
          Width = 147
        end
        item
          EditButtons = <>
          FieldName = 'unidade'
          Footers = <>
          Width = 44
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 984
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 27
      Width = 46
      Height = 13
      Caption = 'Id. Venda'
    end
    object Label2: TLabel
      Left = 131
      Top = 27
      Width = 49
      Height = 13
      Caption = 'Data Hora'
    end
    object Label3: TLabel
      Left = 256
      Top = 27
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object Label4: TLabel
      Left = 381
      Top = 27
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label5: TLabel
      Left = 6
      Top = 67
      Width = 66
      Height = 13
      Caption = 'F. Pagamento'
    end
    object Label6: TLabel
      Left = 131
      Top = 67
      Width = 58
      Height = 13
      Caption = 'Total Venda'
    end
    object Label7: TLabel
      Left = 256
      Top = 67
      Width = 54
      Height = 13
      Caption = 'Acr'#233'scimos'
    end
    object Label8: TLabel
      Left = 381
      Top = 67
      Width = 46
      Height = 13
      Caption = 'Desconto'
    end
    object Label9: TLabel
      Left = 508
      Top = 67
      Width = 63
      Height = 13
      Caption = 'Valor L'#237'quido'
    end
    object Label10: TLabel
      Left = 782
      Top = 27
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label11: TLabel
      Left = 9
      Top = 109
      Width = 41
      Height = 13
      Caption = 'Validade'
    end
    object Label12: TLabel
      Left = 136
      Top = 109
      Width = 22
      Height = 13
      Caption = 'Obs.'
    end
    object Panel6: TPanel
      Tag = 1
      Left = 0
      Top = 0
      Width = 984
      Height = 23
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Venda'
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
      Left = 6
      Top = 42
      Width = 121
      Height = 21
      DataField = 'idvenda'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 131
      Top = 42
      Width = 121
      Height = 21
      DataField = 'datahora'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 42
      Width = 121
      Height = 21
      DataField = 'nome_usuario'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 381
      Top = 42
      Width = 394
      Height = 21
      DataField = 'nome'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 6
      Top = 82
      Width = 121
      Height = 21
      DataField = 'forma_pagamento'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 131
      Top = 82
      Width = 121
      Height = 21
      DataField = 'total_venda'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 256
      Top = 82
      Width = 121
      Height = 21
      DataField = 'acrescimo'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 381
      Top = 82
      Width = 121
      Height = 21
      DataField = 'desconto'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 508
      Top = 82
      Width = 121
      Height = 21
      DataField = 'Total_pagar'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit10: TDBEdit
      Left = 782
      Top = 42
      Width = 121
      Height = 21
      DataField = 'telefone'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit11: TDBEdit
      Left = 7
      Top = 125
      Width = 121
      Height = 21
      DataField = 'validade'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit12: TDBEdit
      Left = 134
      Top = 125
      Width = 810
      Height = 21
      DataField = 'obs'
      DataSource = dsVenda
      ReadOnly = True
      TabOrder = 12
    end
  end
  object dsVenda: TDataSource
    DataSet = FormSelecionaVenda.qrPesVenda
    Left = 752
    Top = 64
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
    Left = 408
    Top = 240
  end
end
