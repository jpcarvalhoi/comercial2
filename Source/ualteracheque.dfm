inherited FormAlteraCheque: TFormAlteraCheque
  Caption = 'Alterar cheques'
  ClientHeight = 391
  ClientWidth = 530
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitTop = -38
  ExplicitWidth = 536
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 121
    Top = 72
    Width = 51
    Height = 13
    Caption = 'N'#186' cheque'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 273
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Banco'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 117
    Width = 39
    Height = 13
    Caption = 'Ag'#234'ncia'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 113
    Top = 117
    Width = 28
    Height = 13
    Caption = 'Conta'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 213
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label6: TLabel [5]
    Left = 129
    Top = 213
    Width = 65
    Height = 13
    Caption = 'Doc. Terceiro'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 162
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 148
    Top = 162
    Width = 73
    Height = 13
    Caption = 'Dt. Vencimento'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 425
    Top = 72
    Width = 76
    Height = 13
    Caption = 'Dt. Lan'#231'amento'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 248
    Top = 213
    Width = 66
    Height = 13
    Caption = 'Nome terceiro'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 8
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label12: TLabel [11]
    Left = 212
    Top = 117
    Width = 32
    Height = 13
    Caption = 'Cliente'
    FocusControl = DBEdit4
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 260
    Width = 54
    Height = 13
    Caption = 'Fornecedor'
    FocusControl = DBEdit10
  end
  object Label14: TLabel [13]
    Left = 8
    Top = 304
    Width = 22
    Height = 13
    Caption = 'Obs.'
  end
  inherited pnlPrincipal: TPanel
    Width = 530
    ExplicitWidth = 530
    inherited btnPrimeiro: TBitBtn
      Left = 81
      TabOrder = 2
      Visible = False
      ExplicitLeft = 81
    end
    inherited btnAnterior: TBitBtn
      Left = 155
      TabOrder = 3
      Visible = False
      ExplicitLeft = 155
    end
    inherited btnProximo: TBitBtn
      Left = 229
      TabOrder = 5
      Visible = False
      ExplicitLeft = 229
    end
    inherited btnUltimo: TBitBtn
      Left = 303
      TabOrder = 6
      Visible = False
      ExplicitLeft = 303
    end
    inherited btnNovo: TBitBtn
      Left = 306
      TabOrder = 7
      Visible = False
      ExplicitLeft = 306
    end
    inherited btnSalvar: TBitBtn
      Left = 5
      TabOrder = 0
      ExplicitLeft = 5
    end
    inherited btnCancelar: TBitBtn
      Left = 79
      TabOrder = 1
      ExplicitLeft = 79
    end
    inherited btnLocalizar: TBitBtn
      Left = 377
      Visible = False
      ExplicitLeft = 377
    end
    inherited btnExcluir: TBitBtn
      Left = 177
      TabOrder = 4
      Visible = False
      ExplicitLeft = 177
    end
    inherited btnFechar: TBitBtn
      Left = 451
      ExplicitLeft = 451
    end
  end
  inherited stbFormulario: TStatusBar
    Top = 372
    Width = 530
    ExplicitTop = 372
    ExplicitWidth = 530
  end
  object DBEdit1: TDBEdit [16]
    Left = 121
    Top = 88
    Width = 146
    Height = 21
    DataField = 'numcheque'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [17]
    Left = 273
    Top = 88
    Width = 146
    Height = 21
    DataField = 'banco'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [18]
    Left = 8
    Top = 133
    Width = 89
    Height = 21
    DataField = 'agencia'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit4: TDBEdit [19]
    Left = 113
    Top = 133
    Width = 89
    Height = 21
    DataField = 'conta'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [20]
    Left = 129
    Top = 229
    Width = 113
    Height = 21
    DataField = 'documento_terceiro'
    DataSource = dsNavegacao
    TabOrder = 11
  end
  object DBEdit7: TDBEdit [21]
    Left = 8
    Top = 178
    Width = 134
    Height = 21
    DataField = 'valor'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [22]
    Left = 148
    Top = 178
    Width = 134
    Height = 21
    DataField = 'data_vencimento'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [23]
    Left = 425
    Top = 88
    Width = 97
    Height = 21
    DataField = 'data_lancamento'
    DataSource = dsNavegacao
    Enabled = False
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit10: TDBEdit [24]
    Left = 248
    Top = 229
    Width = 274
    Height = 21
    DataField = 'nome_terceiro'
    DataSource = dsNavegacao
    TabOrder = 12
  end
  object DBLookupComboBox1: TDBLookupComboBox [25]
    Left = 212
    Top = 133
    Width = 301
    Height = 21
    DataField = 'idcliente'
    DataSource = dsNavegacao
    Enabled = False
    KeyField = 'codcliente'
    ListField = 'nome'
    ListSource = DM.dslkcliente
    ReadOnly = True
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox [26]
    Left = 8
    Top = 277
    Width = 301
    Height = 21
    DataField = 'idfornecedor'
    DataSource = dsNavegacao
    KeyField = 'idfornecedor'
    ListField = 'razao'
    ListSource = DM.dslkfornecedor
    TabOrder = 13
  end
  object RxDBComboBox1: TRxDBComboBox [27]
    Left = 7
    Top = 88
    Width = 106
    Height = 21
    DataField = 'status'
    DataSource = dsNavegacao
    Items.Strings = (
      'PENDENTE'
      'COMPENSADO'
      'DEVOLVIDO'
      'REPASSADO')
    TabOrder = 1
    Values.Strings = (
      'P'
      'C'
      'D'
      'R')
  end
  object RxDBComboBox2: TRxDBComboBox [28]
    Left = 8
    Top = 229
    Width = 111
    Height = 21
    DataField = 'status'
    DataSource = dsNavegacao
    Items.Strings = (
      'PR'#211'PRIO'
      'TERCEIROS')
    TabOrder = 10
    Values.Strings = (
      'P'
      'T')
  end
  object DBMemo1: TDBMemo [29]
    Left = 8
    Top = 321
    Width = 514
    Height = 46
    DataField = 'obs'
    DataSource = dsNavegacao
    TabOrder = 15
  end
  inherited dsNavegacao: TDataSource
    DataSet = DM.cdsEditCheque
  end
  inherited ActionList1: TActionList
    Left = 236
    Top = 268
  end
  inherited dsPesquisa: TDataSource
    Left = 48
    Top = 256
  end
end
