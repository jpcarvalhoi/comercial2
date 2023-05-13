object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 567
  Width = 863
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = 'comercial2'
    Properties.Strings = (
      'compress=yes')
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    BeforeConnect = ZConnectionBeforeConnect
    AfterConnect = ZConnectionAfterConnect
    HostName = '127.0.0.1'
    Port = 3306
    Database = 'comercial2'
    User = 'root'
    Password = '123456'
    Protocol = 'mysql'
    Left = 28
    Top = 29
  end
  object qrComando: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 30
    Top = 282
  end
  object cdsUsuario: TZTable
    Connection = ZConnection
    AfterInsert = cdsUsuarioAfterInsert
    TableName = 'tbusuario'
    Left = 346
    Top = 345
    object cdsUsuarioidtbusuario: TIntegerField
      FieldName = 'idtbusuario'
      Required = True
    end
    object cdsUsuarionome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object cdsUsuariologin: TWideStringField
      FieldName = 'login'
      Required = True
    end
    object cdsUsuariosenha: TWideStringField
      FieldName = 'senha'
      Required = True
      Size = 15
    end
  end
  object psUsuario: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'select * from tbusuario where login = :plogin and senha = :psenh' +
        'a')
    Params = <
      item
        DataType = ftString
        Name = 'plogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'psenha'
        ParamType = ptInput
      end>
    Left = 741
    Top = 219
    ParamData = <
      item
        DataType = ftString
        Name = 'plogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'psenha'
        ParamType = ptInput
      end>
    object psUsuarioidtbusuario: TIntegerField
      FieldName = 'idtbusuario'
      Required = True
    end
    object psUsuarionome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object psUsuariologin: TWideStringField
      FieldName = 'login'
      Required = True
    end
    object psUsuariosenha: TWideStringField
      FieldName = 'senha'
      Required = True
      Size = 15
    end
    object psUsuarioadministrador: TWideStringField
      FieldName = 'administrador'
      Size = 1
    end
  end
  object cdsPermissaoUsuario: TZQuery
    Connection = ZConnection
    UpdateObject = ZUpdatePermissao
    SQL.Strings = (
      'select a.*, b.descricao from tbusuario_permissao a'
      'inner join tbpermissao b on a.idtbpermissao = b.idtbpermissao'
      'where a.idtbusuario = :pusuario')
    Params = <
      item
        DataType = ftInteger
        Name = 'pusuario'
        ParamType = ptInput
      end>
    Left = 662
    Top = 219
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pusuario'
        ParamType = ptInput
      end>
    object cdsPermissaoUsuarioidtbusuario: TIntegerField
      FieldName = 'idtbusuario'
      Required = True
    end
    object cdsPermissaoUsuarioidtbpermissao: TIntegerField
      FieldName = 'idtbpermissao'
      Required = True
    end
    object cdsPermissaoUsuarioalterar: TWideStringField
      FieldName = 'alterar'
      Size = 1
    end
    object cdsPermissaoUsuarioincluir: TWideStringField
      FieldName = 'incluir'
      Size = 1
    end
    object cdsPermissaoUsuarioexcluir: TWideStringField
      FieldName = 'excluir'
      Size = 1
    end
    object cdsPermissaoUsuariovisualizar: TWideStringField
      FieldName = 'visualizar'
      Size = 1
    end
    object cdsPermissaoUsuariodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      ProviderFlags = []
      Required = True
      Size = 50
    end
  end
  object ZUpdatePermissao: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbusuario_permissao'
      'WHERE'
      '  tbusuario_permissao.idtbusuario = :OLD_idtbusuario AND'
      '  tbusuario_permissao.idtbpermissao = :OLD_idtbpermissao')
    InsertSQL.Strings = (
      'INSERT INTO tbusuario_permissao'
      
        '  (idtbusuario, idtbpermissao, alterar, incluir, excluir, visual' +
        'izar)'
      'VALUES'
      
        '  (:idtbusuario, :idtbpermissao, :alterar, :incluir, :excluir, :' +
        'visualizar)')
    ModifySQL.Strings = (
      'UPDATE tbusuario_permissao SET'
      '  idtbusuario = :idtbusuario,'
      '  idtbpermissao = :idtbpermissao,'
      '  alterar = :alterar,'
      '  incluir = :incluir,'
      '  excluir = :excluir,'
      '  visualizar = :visualizar'
      'WHERE'
      '  tbusuario_permissao.idtbusuario = :OLD_idtbusuario AND'
      '  tbusuario_permissao.idtbpermissao = :OLD_idtbpermissao')
    UseSequenceFieldForRefreshSQL = False
    Left = 741
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idtbusuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idtbpermissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'alterar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'incluir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'excluir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'visualizar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idtbusuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idtbpermissao'
        ParamType = ptUnknown
      end>
  end
  object cdsConfigs: TZQuery
    Connection = ZConnection
    AfterOpen = cdsConfigsAfterOpen
    BeforeInsert = cdsConfigsBeforeInsert
    SQL.Strings = (
      'select * from tbconfigs')
    Params = <>
    Left = 267
    Top = 282
    object cdsConfigsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsConfigsrazaosocial: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'razaosocial'
      Size = 150
    end
    object cdsConfigscnpj: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object cdsConfigsendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 100
    end
    object cdsConfigsbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object cdsConfigscidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 60
    end
    object cdsConfigscep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      EditMask = '00000\-000;0;_'
      Size = 8
    end
    object cdsConfigsuf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
    object cdsConfigstelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsConfigsemail: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 150
    end
    object cdsConfigscomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 40
    end
    object cdsConfigsnumero: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Size = 10
    end
    object cdsConfigsfax: TWideStringField
      DisplayLabel = 'Fax'
      FieldName = 'fax'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsConfigscordedit: TWideStringField
      FieldName = 'cordedit'
      Size = 8
    end
    object cdsConfigshost: TWideStringField
      FieldName = 'host'
      Size = 100
    end
    object cdsConfigsuser_ftp: TWideStringField
      FieldName = 'user_ftp'
      Size = 45
    end
    object cdsConfigssenha_ftp: TWideStringField
      FieldName = 'senha_ftp'
    end
    object cdsConfigsporta_ftp: TSmallintField
      FieldName = 'porta_ftp'
    end
    object cdsConfigsatualiza_compra_fornecedor: TWideStringField
      FieldName = 'atualiza_compra_fornecedor'
      Size = 1
    end
    object cdsConfigsatualizar_valor_compra_produto: TWideStringField
      FieldName = 'atualizar_valor_compra_produto'
      Size = 1
    end
    object cdsConfigsprocessar_cartao_credito: TWideStringField
      FieldName = 'processar_cartao_credito'
      Size = 1
    end
    object cdsConfigsdescontar_taxa_operadora: TWideStringField
      FieldName = 'descontar_taxa_operadora'
      Size = 1
    end
    object cdsConfigsdata_sistema: TDateField
      FieldName = 'data_sistema'
    end
    object cdsConfigssite: TWideStringField
      FieldName = 'site'
      Size = 255
    end
    object cdsConfigsimprime_recibo: TWideStringField
      FieldName = 'imprime_recibo'
      Size = 1
    end
    object cdsConfigsimprime_sem_visualizar: TWideStringField
      FieldName = 'imprime_sem_visualizar'
      Size = 1
    end
    object cdsConfigsnum_copias: TSmallintField
      FieldName = 'num_copias'
    end
    object cdsConfigscor_fundo: TWideStringField
      FieldName = 'cor_fundo'
      Size = 12
    end
    object cdsConfigsvalor_min_parcela: TFloatField
      FieldName = 'valor_min_parcela'
      currency = True
    end
    object cdsConfigsindice_dinheiro: TFloatField
      FieldName = 'indice_dinheiro'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsindice_debito: TFloatField
      FieldName = 'indice_debito'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsindice_credito: TFloatField
      FieldName = 'indice_credito'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsindice_2x: TFloatField
      FieldName = 'indice_2x'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsindice_3x: TFloatField
      FieldName = 'indice_3x'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsindice_4x: TFloatField
      FieldName = 'indice_4x'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsindice_5x: TFloatField
      FieldName = 'indice_5x'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsindice_6x: TFloatField
      FieldName = 'indice_6x'
      DisplayFormat = '#0.00%'
    end
    object cdsConfigsexibir_formapg: TWideStringField
      FieldName = 'exibir_formapg'
      Size = 1
    end
  end
  object qrInsertLog: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select * from tblog where idtblog = 0')
    Params = <>
    Left = 188
    Top = 282
    object qrInsertLogidtblog: TIntegerField
      FieldName = 'idtblog'
      Required = True
    end
    object qrInsertLogusuario: TWideStringField
      FieldName = 'usuario'
      Required = True
      Size = 45
    end
    object qrInsertLogsistema: TWideStringField
      FieldName = 'sistema'
      Size = 1
    end
    object qrInsertLogacao: TWideMemoField
      FieldName = 'acao'
      BlobType = ftWideMemo
    end
  end
  object cdsCliente: TZQuery
    Connection = ZConnection
    AfterInsert = cdsClienteAfterInsert
    BeforePost = cdsClienteBeforePost
    AfterPost = cdsClienteAfterPost
    SQL.Strings = (
      'select * from tbcliente'
      'where codcliente = :pcodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pcodigo'
        ParamType = ptUnknown
      end>
    Left = 109
    Top = 282
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcodigo'
        ParamType = ptUnknown
      end>
    object cdsClientecodcliente: TIntegerField
      FieldName = 'codcliente'
      Required = True
    end
    object cdsClientenome: TWideStringField
      DisplayLabel = 'Nome/Raz'#227'o'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object cdsClientedocumento: TWideStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'documento'
      Size = 14
    end
    object cdsClienteendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object cdsClientebairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object cdsClientecidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 40
    end
    object cdsClienteuf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
    object cdsClientetelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsClientecelular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsClienterg: TWideStringField
      DisplayLabel = 'RF/Inscri'#231#227'o Est.'
      FieldName = 'rg'
      Size = 45
    end
    object cdsClientecep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      EditMask = '00000\-000;0;_'
      Size = 8
    end
    object cdsClienteemail: TWideStringField
      DisplayLabel = 'e-mail'
      FieldName = 'email'
      Size = 100
    end
    object cdsClientedtaniversario: TDateField
      DisplayLabel = 'Dt. Anivers'#225'rio'
      FieldName = 'dtaniversario'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsClientedtcadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dtcadastro'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsClientedtalteracao: TDateField
      DisplayLabel = 'Dt. Altera'#231#227'o'
      FieldName = 'dtalteracao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsClientesalario: TFloatField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'salario'
      currency = True
    end
    object cdsClientefantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 150
    end
    object cdsClientenome_contato: TWideStringField
      FieldName = 'nome_contato'
      Size = 100
    end
    object cdsClientetel1_contato: TWideStringField
      FieldName = 'tel1_contato'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsClientetel2_contato: TWideStringField
      FieldName = 'tel2_contato'
      Size = 15
    end
    object cdsClienteemail_contato: TWideStringField
      FieldName = 'email_contato'
      Size = 100
    end
    object cdsClientesituacao: TWideStringField
      FieldName = 'situacao'
      Size = 45
    end
    object cdsClientestatus_abo: TWideStringField
      FieldName = 'status_abo'
      Size = 45
    end
    object cdsClientemotivo: TWideStringField
      FieldName = 'motivo'
      Size = 45
    end
    object cdsClienteinscricao_estadual: TWideStringField
      FieldName = 'inscricao_estadual'
      Size = 45
    end
    object cdsClienteinscricao_municipal: TWideStringField
      FieldName = 'inscricao_municipal'
      Size = 45
    end
    object cdsClientecertificados: TWideStringField
      FieldName = 'certificados'
      Size = 45
    end
    object cdsClienteendereco_fat: TWideStringField
      FieldName = 'endereco_fat'
      Size = 45
    end
    object cdsClientecidade_fat: TWideStringField
      FieldName = 'cidade_fat'
      Size = 45
    end
    object cdsClienteuf_fat: TWideStringField
      FieldName = 'uf_fat'
      Size = 2
    end
    object cdsClientebairro_fat: TWideStringField
      FieldName = 'bairro_fat'
      Size = 45
    end
    object cdsClientecep_fat: TWideStringField
      FieldName = 'cep_fat'
      EditMask = '00000\-000;0;_'
      Size = 10
    end
    object cdsClientereferencia_fat: TWideStringField
      FieldName = 'referencia_fat'
      Size = 45
    end
    object cdsClientetipo_frete: TWideStringField
      FieldName = 'tipo_frete'
      Size = 45
    end
    object cdsClienteprazo_pagamento: TIntegerField
      FieldName = 'prazo_pagamento'
    end
    object cdsClientemargem_lucro_adicional: TFloatField
      FieldName = 'margem_lucro_adicional'
    end
    object cdsClienteatraso_medio: TIntegerField
      FieldName = 'atraso_medio'
    end
    object cdsClientetransportadora: TWideStringField
      FieldName = 'transportadora'
      Size = 60
    end
    object cdsClientetipo_pagamento: TWideStringField
      FieldName = 'tipo_pagamento'
      Size = 45
    end
    object cdsClientelimite_credito: TFloatField
      FieldName = 'limite_credito'
      currency = True
    end
    object cdsClientedtultima_visita: TDateField
      FieldName = 'dtultima_visita'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsClientedtultima_campanha: TDateField
      FieldName = 'dtultima_campanha'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsClientedtproximo_contato: TDateField
      FieldName = 'dtproximo_contato'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsClientedtproxima_visita: TDateField
      FieldName = 'dtproxima_visita'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsClientedtultimo_contato: TDateField
      FieldName = 'dtultimo_contato'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsClientedtultima_compra: TDateField
      FieldName = 'dtultima_compra'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsClientereferencia: TWideStringField
      FieldName = 'referencia'
      Size = 45
    end
    object cdsClientenome_contato2: TWideStringField
      FieldName = 'nome_contato2'
      Size = 100
    end
    object cdsClientetel1_contato2: TWideStringField
      FieldName = 'tel1_contato2'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsClientetel2_contato2: TWideStringField
      FieldName = 'tel2_contato2'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsClienteemail_contato2: TWideStringField
      FieldName = 'email_contato2'
      Size = 100
    end
    object cdsClientesexo: TWideStringField
      FieldName = 'sexo'
      Size = 1
    end
    object cdsClientecodgarra: TWideStringField
      FieldName = 'codgarra'
    end
    object cdsClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 45
    end
    object cdsClientenumero: TWideStringField
      FieldName = 'numero'
      Size = 15
    end
    object cdsClientecomplemento_fat: TWideStringField
      FieldName = 'complemento_fat'
      Size = 45
    end
    object cdsClientenumero_fat: TWideStringField
      FieldName = 'numero_fat'
      Size = 15
    end
    object cdsClientematricula: TWideStringField
      FieldName = 'matricula'
      Size = 45
    end
    object cdsClienteprefeitura: TWideStringField
      FieldName = 'prefeitura'
      Size = 1
    end
    object cdsClienteidprefeitura: TIntegerField
      FieldName = 'idprefeitura'
    end
    object cdsClienteobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
  end
  object qrLasID: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'SELECT LAST_INSERT_ID() as ID')
    Params = <>
    Left = 583
    Top = 219
    object qrLasIDID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object qrVersao: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select * from tbversao limit 1')
    Params = <>
    Left = 267
    Top = 219
    object qrVersaoidtbversao: TIntegerField
      FieldName = 'idtbversao'
      Required = True
    end
    object qrVersaoversao: TSmallintField
      FieldName = 'versao'
    end
  end
  object ZSQLProcessor: TZSQLProcessor
    Params = <>
    Connection = ZConnection
    Delimiter = ';'
    Left = 267
    Top = 345
  end
  object cdsFornecedor: TZQuery
    Connection = ZConnection
    BeforePost = cdsFornecedorBeforePost
    AfterPost = cdsFornecedorAfterPost
    SQL.Strings = (
      'select * from tbfornecedor where idfornecedor = :pid')
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    Left = 188
    Top = 219
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    object cdsFornecedoridfornecedor: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idfornecedor'
      Required = True
    end
    object cdsFornecedorrazao: TWideStringField
      DisplayLabel = 'Nome/Raz'#227'o'
      FieldName = 'razao'
      Size = 60
    end
    object cdsFornecedorcnpj: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Size = 14
    end
    object cdsFornecedorendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object cdsFornecedorbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object cdsFornecedorcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 40
    end
    object cdsFornecedorcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      EditMask = '00000\-000;0;_'
      Size = 8
    end
    object cdsFornecedoruf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
    object cdsFornecedorcontato: TWideStringField
      DisplayLabel = 'Nome Contato'
      FieldName = 'contato'
      Size = 40
    end
    object cdsFornecedortel: TWideStringField
      DisplayLabel = 'Tel. 1'
      FieldName = 'tel'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFornecedortel2: TWideStringField
      DisplayLabel = 'Tel. 2'
      FieldName = 'tel2'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFornecedoremail: TWideStringField
      DisplayLabel = 'e-mail'
      FieldName = 'email'
      Size = 100
    end
    object cdsFornecedorsite: TWideStringField
      DisplayLabel = 'Web site'
      FieldName = 'site'
      Size = 60
    end
    object cdsFornecedorinscricao_estadual: TWideStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'inscricao_estadual'
      Size = 45
    end
    object cdsFornecedordtcadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dtcadastro'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsFornecedordtalteracao: TDateField
      DisplayLabel = #218'lt. Altera'#231#227'o'
      FieldName = 'dtalteracao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsFornecedorfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 150
    end
    object cdsFornecedornome_contato: TWideStringField
      FieldName = 'nome_contato'
      Size = 100
    end
    object cdsFornecedortel1_contato: TWideStringField
      FieldName = 'tel1_contato'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFornecedortel2_contato: TWideStringField
      FieldName = 'tel2_contato'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFornecedoremail_contato: TWideStringField
      FieldName = 'email_contato'
      Size = 100
    end
    object cdsFornecedorsituacao: TWideStringField
      FieldName = 'situacao'
      Size = 45
    end
    object cdsFornecedorstatus_abo: TWideStringField
      FieldName = 'status_abo'
      Size = 45
    end
    object cdsFornecedormotivo: TWideStringField
      FieldName = 'motivo'
      Size = 45
    end
    object cdsFornecedorinscricao_municipal: TWideStringField
      FieldName = 'inscricao_municipal'
      Size = 45
    end
    object cdsFornecedorcertificados: TWideStringField
      FieldName = 'certificados'
      Size = 45
    end
    object cdsFornecedorendereco_fat: TWideStringField
      FieldName = 'endereco_fat'
      Size = 100
    end
    object cdsFornecedorcidade_fat: TWideStringField
      FieldName = 'cidade_fat'
      Size = 45
    end
    object cdsFornecedoruf_fat: TWideStringField
      FieldName = 'uf_fat'
      Size = 2
    end
    object cdsFornecedorbairro_fat: TWideStringField
      FieldName = 'bairro_fat'
      Size = 45
    end
    object cdsFornecedorcep_fat: TWideStringField
      FieldName = 'cep_fat'
      Size = 10
    end
    object cdsFornecedorreferencia_fat: TWideStringField
      FieldName = 'referencia_fat'
      Size = 45
    end
    object cdsFornecedortipo_frete: TWideStringField
      FieldName = 'tipo_frete'
      Size = 45
    end
    object cdsFornecedorprazo_pagamento: TIntegerField
      FieldName = 'prazo_pagamento'
    end
    object cdsFornecedorprazo_medio_entrega: TIntegerField
      FieldName = 'prazo_medio_entrega'
    end
    object cdsFornecedorplano_contas: TWideStringField
      FieldName = 'plano_contas'
      Size = 60
    end
    object cdsFornecedortransportadora: TWideStringField
      FieldName = 'transportadora'
      Size = 60
    end
    object cdsFornecedortipo_pagamento: TWideStringField
      FieldName = 'tipo_pagamento'
      Size = 45
    end
    object cdsFornecedorlimite_credito: TFloatField
      FieldName = 'limite_credito'
      currency = True
    end
    object cdsFornecedordtultima_visita: TDateField
      FieldName = 'dtultima_visita'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFornecedordtultima_campanha: TDateField
      FieldName = 'dtultima_campanha'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFornecedordtproximo_contato: TDateField
      FieldName = 'dtproximo_contato'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFornecedordtproxima_visita: TDateField
      FieldName = 'dtproxima_visita'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFornecedordtultimo_contato: TDateField
      FieldName = 'dtultimo_contato'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFornecedordtultima_compra: TDateField
      FieldName = 'dtultima_compra'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFornecedorreferencia: TWideStringField
      FieldName = 'referencia'
      Size = 45
    end
    object cdsFornecedornome_contato2: TWideStringField
      FieldName = 'nome_contato2'
      Size = 100
    end
    object cdsFornecedortel1_contato2: TWideStringField
      FieldName = 'tel1_contato2'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFornecedortel2_contato2: TWideStringField
      FieldName = 'tel2_contato2'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFornecedoremail_contato2: TWideStringField
      FieldName = 'email_contato2'
      Size = 100
    end
    object cdsFornecedorbanco1: TWideStringField
      FieldName = 'banco1'
      Size = 45
    end
    object cdsFornecedoragencia1: TWideStringField
      FieldName = 'agencia1'
    end
    object cdsFornecedorconta1: TWideStringField
      FieldName = 'conta1'
    end
    object cdsFornecedorbanco2: TWideStringField
      FieldName = 'banco2'
      Size = 45
    end
    object cdsFornecedoragencia2: TWideStringField
      FieldName = 'agencia2'
    end
    object cdsFornecedorconta2: TWideStringField
      FieldName = 'conta2'
    end
    object cdsFornecedorbanco3: TWideStringField
      FieldName = 'banco3'
      Size = 45
    end
    object cdsFornecedoragencia3: TWideStringField
      FieldName = 'agencia3'
    end
    object cdsFornecedorconta3: TWideStringField
      FieldName = 'conta3'
    end
    object cdsFornecedorobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
  end
  object cdsCategoria: TZQuery
    Connection = ZConnection
    OnDeleteError = cdsCategoriaDeleteError
    SQL.Strings = (
      'select * from tbcategoria')
    Params = <>
    Left = 109
    Top = 219
    object cdsCategoriaidcategoria: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idcategoria'
      Required = True
    end
    object cdsCategoriadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 45
    end
  end
  object qrPermissao: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select * from tbpermissao')
    Params = <>
    Left = 504
    Top = 219
    object qrPermissaoidtbpermissao: TIntegerField
      FieldName = 'idtbpermissao'
      Required = True
    end
    object qrPermissaodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
  end
  object cdsProduto: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsProdutoCalcFields
    AfterInsert = cdsProdutoAfterInsert
    AfterPost = cdsProdutoAfterPost
    SQL.Strings = (
      'select * from tbproduto where idproduto = :pid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    Left = 425
    Top = 219
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    object cdsProdutoidproduto: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idproduto'
      Required = True
    end
    object cdsProdutocodbarras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'codbarras'
      Size = 40
    end
    object cdsProdutodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 80
    end
    object cdsProdutovalor_custo: TFloatField
      DisplayLabel = 'V. Custo'
      FieldName = 'valor_custo'
      currency = True
    end
    object cdsProdutovalor_varejo: TFloatField
      DisplayLabel = 'V. Varejo'
      FieldName = 'valor_varejo'
      currency = True
    end
    object cdsProdutovalor_atacado: TFloatField
      DisplayLabel = 'V. Atacado'
      FieldName = 'valor_atacado'
      currency = True
    end
    object cdsProdutounidade: TWideStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Size = 10
    end
    object cdsProdutoinfo_adicional: TWideStringField
      DisplayLabel = 'Info. Adicional'
      FieldName = 'info_adicional'
      Size = 60
    end
    object cdsProdutoest_minimo: TIntegerField
      DisplayLabel = 'Estoque M'#237'nimo'
      FieldName = 'est_minimo'
    end
    object cdsProdutoest_atual: TIntegerField
      DisplayLabel = 'Estoque Atual'
      FieldName = 'est_atual'
    end
    object cdsProdutoidcategoria: TIntegerField
      FieldName = 'idcategoria'
    end
    object cdsProdutodt_cadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsProdutocontrola_estoque: TWideStringField
      FieldName = 'controla_estoque'
      Size = 1
    end
    object cdsProdutoreferencia: TWideStringField
      FieldName = 'referencia'
      Size = 45
    end
    object cdsProdutocor: TWideStringField
      DisplayLabel = 'Cor'
      FieldName = 'cor'
      Size = 45
    end
    object cdsProdutomarca: TWideStringField
      DisplayLabel = 'Marca'
      FieldName = 'marca'
      Size = 45
    end
    object cdsProdutotipo: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Size = 45
    end
    object cdsProdutoacabamento: TWideStringField
      DisplayLabel = 'Acabamento'
      FieldName = 'acabamento'
      Size = 45
    end
    object cdsProdutogrupo_materiais: TWideStringField
      DisplayLabel = 'Grupo Materiais'
      FieldName = 'grupo_materiais'
      Size = 45
    end
    object cdsProdutomedida: TWideStringField
      DisplayLabel = 'Medida'
      FieldName = 'medida'
      Size = 45
    end
    object cdsProdutopeso: TWideStringField
      DisplayLabel = 'Peso'
      FieldName = 'peso'
      Size = 45
    end
    object cdsProdutoplano_despesas: TWideStringField
      DisplayLabel = 'Plano Despesas'
      FieldName = 'plano_despesas'
      Size = 45
    end
    object cdsProdutounidade_compra: TWideStringField
      DisplayLabel = 'Unidade Compra'
      FieldName = 'unidade_compra'
      Size = 45
    end
    object cdsProdutoqtde_compra: TIntegerField
      DisplayLabel = 'Qtde Compra'
      FieldName = 'qtde_compra'
    end
    object cdsProdutoimobilizado: TWideStringField
      DisplayLabel = 'Imobilizado'
      FieldName = 'imobilizado'
      Size = 45
    end
    object cdsProdutoqtde_empenho: TIntegerField
      DisplayLabel = 'Qtde Empenho'
      FieldName = 'qtde_empenho'
    end
    object cdsProdutoultimo_balanco: TDateField
      DisplayLabel = #218'ltimo Balan'#231'o'
      FieldName = 'ultimo_balanco'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsProdutoprazo_reposicao: TIntegerField
      DisplayLabel = 'Prazo Reposi'#231#227'o'
      FieldName = 'prazo_reposicao'
    end
    object cdsProdutoqtde_ultimo_balanco: TIntegerField
      DisplayLabel = 'Qtde '#218'ltimo Balan'#231'o'
      FieldName = 'qtde_ultimo_balanco'
    end
    object cdsProdutoavisar_reposicao: TDateField
      DisplayLabel = 'Avisar Reposi'#231#227'o'
      FieldName = 'avisar_reposicao'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsProdutojuros_cartao: TFloatField
      Tag = 1
      DisplayLabel = 'Juros Cart'#227'o'
      FieldName = 'juros_cartao'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutocomissao_vendedor: TFloatField
      Tag = 1
      DisplayLabel = 'Comiss'#227'o Vendedor'
      FieldName = 'comissao_vendedor'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutocomissao_iterna: TFloatField
      Tag = 1
      DisplayLabel = 'Comiss'#227'o Interna'
      FieldName = 'comissao_iterna'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutocomissao_especial: TFloatField
      Tag = 1
      DisplayLabel = 'Comiss'#227'o Especial'
      FieldName = 'comissao_especial'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutocomissao_outra: TFloatField
      Tag = 1
      DisplayLabel = 'Comiss'#227'o Outra'
      FieldName = 'comissao_outra'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutoiss: TFloatField
      Tag = 1
      DisplayLabel = 'ISS'
      FieldName = 'iss'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutoicms: TFloatField
      Tag = 1
      DisplayLabel = 'ICMS'
      FieldName = 'icms'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutoipi: TFloatField
      Tag = 1
      DisplayLabel = 'IPI'
      FieldName = 'ipi'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutoisv: TFloatField
      Tag = 1
      DisplayLabel = 'ISV'
      FieldName = 'isv'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutoimposto_a: TFloatField
      Tag = 1
      DisplayLabel = 'Imposto'
      FieldName = 'imposto_a'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutoimposto_b: TFloatField
      Tag = 1
      DisplayLabel = 'imposto'
      FieldName = 'imposto_b'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutofrete: TFloatField
      Tag = 1
      DisplayLabel = 'Frete'
      FieldName = 'frete'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutodespesas_adm: TFloatField
      Tag = 1
      DisplayLabel = 'Despesas ADM'
      FieldName = 'despesas_adm'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutomargem_lucro: TFloatField
      Tag = 1
      DisplayLabel = 'Margem de Lucro'
      FieldName = 'margem_lucro'
      DisplayFormat = '#0.0000'
    end
    object cdsProdutojuros_cartao_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'juros_cartao_calc'
      Calculated = True
    end
    object cdsProdutocomissao_vendedor_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'comissao_vendedor_calc'
      Calculated = True
    end
    object cdsProdutocomissao_iterna_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'comissao_iterna_calc'
      Calculated = True
    end
    object cdsProdutocomissao_especial_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'comissao_especial_calc'
      Calculated = True
    end
    object cdsProdutocomissao_outra_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'comissao_outra_calc'
      Calculated = True
    end
    object cdsProdutoiss_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'iss_calc'
      Calculated = True
    end
    object cdsProdutoicms_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'icms_calc'
      Calculated = True
    end
    object cdsProdutoipi_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ipi_calc'
      Calculated = True
    end
    object cdsProdutoisv_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'isv_calc'
      Calculated = True
    end
    object cdsProdutoimposto_a_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'imposto_a_calc'
      Calculated = True
    end
    object cdsProdutoimposto_b_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'imposto_b_calc'
      Calculated = True
    end
    object cdsProdutofrete_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'frete_calc'
      Calculated = True
    end
    object cdsProdutodespesas_adm_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'despesas_adm_calc'
      Calculated = True
    end
    object cdsProdutomargem_lucro_calc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'margem_lucro_calc'
      Calculated = True
    end
    object cdsProdutoPrecoVenda_ideal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PrecoVenda_ideal'
      Calculated = True
    end
    object cdsProdutotamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 10
    end
    object cdsProdutoedital: TWideStringField
      FieldName = 'edital'
    end
  end
  object TimerKeepAlive: TTimer
    Enabled = False
    Interval = 25000
    OnTimer = TimerKeepAliveTimer
    Left = 109
    Top = 93
  end
  object cdsFoto: TZQuery
    Connection = ZConnectionFoto
    Params = <>
    Left = 346
    Top = 219
  end
  object qrSQL: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 109
    Top = 345
  end
  object ZConnectionFoto: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = ''
    Left = 267
    Top = 93
  end
  object qrfornecedor_produto: TZQuery
    Connection = ZConnection
    UpdateObject = ZUpdateSQLFor_prod
    SQL.Strings = (
      
        'select a.idfornecedor, a.idproduto, a.ultima_compra, a.ultimo_va' +
        'lor, f.razao from tbfornecedor_produto a'
      'inner join tbfornecedor f on a.idfornecedor = f.idfornecedor'
      'where a.idproduto = :pidproduto')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end>
    Left = 741
    Top = 282
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end>
    object qrfornecedor_produtoidfornecedor: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idfornecedor'
      Required = True
    end
    object qrfornecedor_produtoidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object qrfornecedor_produtoultima_compra: TDateField
      DisplayLabel = #218'ltima Compra'
      FieldName = 'ultima_compra'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object qrfornecedor_produtorazao: TWideStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'razao'
      Size = 60
    end
    object qrfornecedor_produtoultimo_valor: TFloatField
      DisplayLabel = #218'ltimo Valor'
      FieldName = 'ultimo_valor'
      currency = True
    end
  end
  object ZUpdateSQLFor_prod: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbfornecedor_produto'
      'WHERE'
      '  tbfornecedor_produto.idfornecedor = :OLD_idfornecedor AND'
      '  tbfornecedor_produto.idproduto = :OLD_idproduto')
    InsertSQL.Strings = (
      'INSERT INTO tbfornecedor_produto'
      '  (idfornecedor, idproduto, ultima_compra, ultimo_valor)'
      'VALUES'
      '  (:idfornecedor, :idproduto, :ultima_compra, :ultimo_valor)')
    ModifySQL.Strings = (
      'UPDATE tbfornecedor_produto SET'
      '  idfornecedor = :idfornecedor,'
      '  idproduto = :idproduto,'
      '  ultima_compra = :ultima_compra,'
      '  ultimo_valor = :ultimo_valor'
      'WHERE'
      '  tbfornecedor_produto.idfornecedor = :OLD_idfornecedor AND'
      '  tbfornecedor_produto.idproduto = :OLD_idproduto')
    UseSequenceFieldForRefreshSQL = False
    Left = 583
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idfornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ultima_compra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ultimo_valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idfornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idproduto'
        ParamType = ptUnknown
      end>
  end
  object cdsNota: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsNotaCalcFields
    AfterInsert = cdsNotaAfterInsert
    BeforePost = cdsNotaBeforePost
    SQL.Strings = (
      'select n.* from tbnota n'
      'where n.idnota = :pidnota')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidnota'
        ParamType = ptInput
      end>
    Left = 30
    Top = 345
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidnota'
        ParamType = ptInput
      end>
    object cdsNotaidnota: TIntegerField
      DisplayLabel = 'Id.'
      FieldName = 'idnota'
      Required = True
    end
    object cdsNotadatanota: TDateField
      DisplayLabel = 'Dt. Nota'
      FieldName = 'datanota'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsNotausuario: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuario'
    end
    object cdsNotaidfornecedor: TIntegerField
      DisplayLabel = 'Id. Fornecedor'
      FieldName = 'idfornecedor'
    end
    object cdsNotadatalancamento: TDateTimeField
      DisplayLabel = 'Dt. Lan'#231'amento'
      FieldName = 'datalancamento'
    end
    object cdsNotanumnota: TIntegerField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'numnota'
    end
    object cdsNotatipo_nota: TWideStringField
      FieldName = 'tipo_nota'
      Size = 1
    end
    object cdsNotaNomeUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeUsuario'
      LookupDataSet = cdsUsuario
      LookupKeyFields = 'idtbusuario'
      LookupResultField = 'nome'
      KeyFields = 'usuario'
      Size = 50
      Lookup = True
    end
    object cdsNotadesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      currency = True
    end
    object cdsNotaacrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'acrescimo'
      currency = True
    end
    object cdsNotatotal_itens: TFloatField
      DisplayLabel = 'Valor Itens'
      FieldName = 'total_itens'
      currency = True
    end
    object cdsNotavalor_nota: TFloatField
      DisplayLabel = 'Total Geral'
      FieldKind = fkCalculated
      FieldName = 'valor_nota'
      currency = True
      Calculated = True
    end
    object cdsNotaidtransportadora: TIntegerField
      FieldName = 'idtransportadora'
    end
    object cdsNotaicms: TFloatField
      FieldName = 'icms'
      currency = True
    end
    object cdsNotavalor_frete: TFloatField
      FieldName = 'valor_frete'
      currency = True
    end
    object cdsNotafrete: TFloatField
      FieldName = 'frete'
      currency = True
    end
    object cdsNotaipi: TFloatField
      FieldName = 'ipi'
      currency = True
    end
    object cdsNotaprevisao: TDateField
      FieldName = 'previsao'
    end
    object cdsNotatipo_frete: TWideStringField
      FieldName = 'tipo_frete'
      Size = 3
    end
    object cdsNotaprazo_pagamento: TWideStringField
      FieldName = 'prazo_pagamento'
      Size = 45
    end
    object cdsNotaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsNotafinalizado_em: TDateField
      FieldName = 'finalizado_em'
    end
    object cdsNotaidcliente_venda: TIntegerField
      FieldName = 'idcliente_venda'
    end
    object cdsNotanumedital: TIntegerField
      FieldName = 'numedital'
    end
    object cdsNotaforma_pg: TIntegerField
      FieldName = 'forma_pg'
    end
    object cdsNotaValorDinheiro: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorDinheiro'
      Calculated = True
    end
    object cdsNotaValorDebito: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorDebito'
      Calculated = True
    end
    object cdsNotaValorCred: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorCred'
      Calculated = True
    end
    object cdsNotaValorPar2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPar2'
      Calculated = True
    end
    object cdsNotaValorPar3: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPar3'
      Calculated = True
    end
    object cdsNotaValorPar4: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPar4'
      Calculated = True
    end
    object cdsNotaValorPar5: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPar5'
      Calculated = True
    end
    object cdsNotaValorPar6: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPar6'
      Calculated = True
    end
    object cdsNotalote: TWideStringField
      FieldName = 'lote'
      Size = 45
    end
    object cdsNotaobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object cdsNotaoperacao: TWideStringField
      FieldName = 'operacao'
      Size = 1
    end
    object cdsNotatotal_par2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_par2'
      Calculated = True
    end
    object cdsNotatotal_par3: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_par3'
      Calculated = True
    end
    object cdsNotatotal_par4: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_par4'
      Calculated = True
    end
    object cdsNotatotal_par5: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_par5'
      Calculated = True
    end
    object cdsNotatotal_par6: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total_par6'
      Calculated = True
    end
  end
  object cdsPesProd: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 425
    Top = 282
  end
  object cdsItemNota: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsItemNotaCalcFields
    UpdateObject = ZUpdateItemNota
    CachedUpdates = True
    SQL.Strings = (
      
        'select i.iditem, i.idnota, i.idproduto, i.qtde, i.valor_unit, i.' +
        'tipo_nota, i.idkit, i.edital,  '
      
        'p.descricao as descprod, k.descricao as desckit, p.est_atual, p.' +
        'tamanho from tbnota_item i'
      'left join tbproduto p on i.idproduto = p.idproduto'
      'left join tbkit k on i.idkit = k.idkit'
      'where i.idnota = :pidnota')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidnota'
        ParamType = ptInput
      end>
    Left = 346
    Top = 282
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidnota'
        ParamType = ptInput
      end>
    object cdsItemNotaiditem: TIntegerField
      FieldName = 'iditem'
      Required = True
    end
    object cdsItemNotaidnota: TIntegerField
      FieldName = 'idnota'
      Required = True
    end
    object cdsItemNotaidproduto: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'idproduto'
    end
    object cdsItemNotaqtde: TIntegerField
      DisplayLabel = 'Qtde'
      FieldName = 'qtde'
      Required = True
    end
    object cdsItemNotavalor_unit: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valor_unit'
      Required = True
      currency = True
    end
    object cdsItemNotadescricao: TWideStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'descricao'
      Size = 40
      Calculated = True
    end
    object cdsItemNotaValor_Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor_Total'
      Calculated = True
    end
    object cdsItemNotatipo_nota: TWideStringField
      FieldName = 'tipo_nota'
      Size = 1
    end
    object cdsItemNotadescprod: TWideStringField
      FieldName = 'descprod'
      Size = 40
    end
    object cdsItemNotadesckit: TWideStringField
      FieldName = 'desckit'
      Size = 40
    end
    object cdsItemNotaidkit: TIntegerField
      FieldName = 'idkit'
    end
    object cdsItemNotaest_atual: TIntegerField
      FieldName = 'est_atual'
    end
    object cdsItemNotaestoque: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
    object cdsItemNotatamanho: TWideStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'tamanho'
      Size = 10
    end
    object cdsItemNotaedital: TWideStringField
      FieldName = 'edital'
    end
  end
  object ZUpdateItemNota: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbnota_item'
      'WHERE'
      '  tbnota_item.iditem = :OLD_iditem')
    InsertSQL.Strings = (
      'INSERT INTO tbnota_item'
      
        '  (iditem, idnota, idproduto, qtde, valor_unit, tipo_nota, idkit' +
        ', edital)'
      'VALUES'
      
        '  (:iditem, :idnota, :idproduto, :qtde, :valor_unit, :tipo_nota,' +
        ' :idkit, '
      '   :edital)')
    ModifySQL.Strings = (
      'UPDATE tbnota_item SET'
      '  iditem = :iditem,'
      '  idnota = :idnota,'
      '  idproduto = :idproduto,'
      '  qtde = :qtde,'
      '  valor_unit = :valor_unit,'
      '  tipo_nota = :tipo_nota,'
      '  idkit = :idkit,'
      '  edital = :edital'
      'WHERE'
      '  tbnota_item.iditem = :OLD_iditem')
    UseSequenceFieldForRefreshSQL = False
    Left = 30
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iditem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idnota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor_unit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_nota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'edital'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_iditem'
        ParamType = ptUnknown
      end>
  end
  object cdsPesFornecedor: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select idfornecedor, razao from tbfornecedor')
    Params = <>
    Left = 504
    Top = 282
    object cdsPesFornecedoridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Required = True
    end
    object cdsPesFornecedorrazao: TWideStringField
      FieldName = 'razao'
      Size = 60
    end
  end
  object cdsCartao: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select * from tbcartao')
    Params = <>
    Left = 662
    Top = 282
    object cdsCartaoidcartao: TIntegerField
      DisplayLabel = 'C'#243'd. Cart'#227'o'
      FieldName = 'idcartao'
      Required = True
    end
    object cdsCartaodescricao: TWideStringField
      DisplayLabel = 'Bandeira - Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 60
    end
    object cdsCartaoadm: TFloatField
      DisplayLabel = 'Tx. Admin.'
      FieldName = 'adm'
    end
  end
  object cdsPesCaixa: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select c.*, u.NOME from tbcaixa c '
      
        'left join tbusuario u on c.idusuario = u.idtbusuario where id = ' +
        '0  ')
    Params = <>
    Left = 583
    Top = 282
    object cdsPesCaixaid: TIntegerField
      DisplayLabel = 'Id.'
      FieldName = 'id'
      Required = True
    end
    object cdsPesCaixadata_hora: TDateTimeField
      DisplayLabel = 'Data e Hora'
      FieldName = 'data_hora'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsPesCaixaidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object cdsPesCaixaidconta: TIntegerField
      FieldName = 'idconta'
    end
    object cdsPesCaixavalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object cdsPesCaixatipo: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Size = 1
    end
    object cdsPesCaixaforma_pagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'forma_pagamento'
    end
    object cdsPesCaixadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 150
    end
    object cdsPesCaixaNOME: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
  end
  object cdsCadCaixa: TZQuery
    Connection = ZConnection
    CachedUpdates = True
    SQL.Strings = (
      'select * from tbcaixa where id = :pid')
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    Left = 30
    Top = 219
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    object cdsCadCaixaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsCadCaixadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object cdsCadCaixadata_hora: TDateTimeField
      FieldName = 'data_hora'
    end
    object cdsCadCaixaidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object cdsCadCaixaidconta: TIntegerField
      FieldName = 'idconta'
    end
    object cdsCadCaixavalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
    object cdsCadCaixatipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cdsCadCaixaforma_pagamento: TWideStringField
      FieldName = 'forma_pagamento'
    end
  end
  object memSaldoCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = memSaldoCaixaCalcFields
    Left = 109
    Top = 30
    object memSaldoCaixaDinheiroCred: TCurrencyField
      FieldName = 'DinheiroCred'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaDinheiroDeb: TCurrencyField
      FieldName = 'DinheiroDeb'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaCartaoCredito_Cre: TCurrencyField
      FieldName = 'CartaoCredito_Cre'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaCartaoCredito_Deb: TCurrencyField
      FieldName = 'CartaoCredito_Deb'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaCartaoDebito_Cre: TCurrencyField
      FieldName = 'CartaoDebito_Cre'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaCartaoDebito_Deb: TCurrencyField
      FieldName = 'CartaoDebito_Deb'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaChequeCre: TCurrencyField
      FieldName = 'ChequeCre'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaChequeDeb: TCurrencyField
      FieldName = 'ChequeDeb'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixaDinheiroSaldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DinheiroSaldo'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object memSaldoCaixaChequeSaldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ChequeSaldo'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object memSaldoCaixaCartaoCreditoSaldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CartaoCreditoSaldo'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object memSaldoCaixaCartaoDebitoSaldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CartaoDebitoSaldo'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object memSaldoCaixatrans_Cre: TCurrencyField
      FieldName = 'trans_Cre'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixatrans_deb: TCurrencyField
      FieldName = 'trans_deb'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixadeposito_cre: TCurrencyField
      FieldName = 'deposito_cre'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixadeposito_deb: TCurrencyField
      FieldName = 'deposito_deb'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object memSaldoCaixatrans_saldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'trans_saldo'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object memSaldoCaixadeposito_saldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'deposito_saldo'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object memSaldoCaixaCreditoGeral: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CreditoGeral'
      Calculated = True
    end
    object memSaldoCaixaDebitoGeral: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DebitoGeral'
      Calculated = True
    end
    object memSaldoCaixaSaldoGeral: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SaldoGeral'
      Calculated = True
    end
  end
  object dsSaldo: TDataSource
    DataSet = memSaldoCaixa
    Left = 662
    Top = 30
  end
  object cdsGrupoConta: TZQuery
    Connection = ZConnection
    AfterOpen = cdsGrupoContaAfterOpen
    OnCalcFields = cdsGrupoContaCalcFields
    BeforePost = cdsGrupoContaBeforePost
    SQL.Strings = (
      'select * from tbgrupoconta')
    Params = <>
    Left = 504
    Top = 93
    object cdsGrupoContaidgrupoconta: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idgrupoconta'
      Required = True
    end
    object cdsGrupoContatipo: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object cdsGrupoContatipoCalc: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'tipoCalc'
      Calculated = True
    end
    object cdsGrupoContadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 45
    end
  end
  object qrProcessaCart: TZQuery
    Connection = ZConnection
    UpdateObject = ZUpdateSQLCart
    CachedUpdates = True
    SQL.Strings = (
      
        'select idconta, tipo, data_pagamento, valor, valor_pago, descont' +
        'o, acrescimo, b.adm from tbconta a'
      'left join tbcartao b on a.idcartao = b.idcartao'
      'where data_pagamento is null ')
    Params = <>
    Left = 425
    Top = 93
    object qrProcessaCartidconta: TIntegerField
      FieldName = 'idconta'
      Required = True
    end
    object qrProcessaCartdata_pagamento: TDateField
      FieldName = 'data_pagamento'
    end
    object qrProcessaCartvalor: TFloatField
      FieldName = 'valor'
    end
    object qrProcessaCartvalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
    object qrProcessaCartdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrProcessaCartacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object qrProcessaCartadm: TFloatField
      FieldName = 'adm'
    end
    object qrProcessaCarttipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object ZUpdateSQLCart: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbconta'
      'WHERE'
      '  tbconta.idconta = :OLD_idconta')
    InsertSQL.Strings = (
      'INSERT INTO tbconta'
      
        '  (idconta, data_pagamento, valor, valor_pago, desconto, acresci' +
        'mo)'
      'VALUES'
      
        '  (:idconta, :data_pagamento, :valor, :valor_pago, :desconto, :a' +
        'crescimo)')
    ModifySQL.Strings = (
      'UPDATE tbconta SET'
      '  data_pagamento = :data_pagamento,'
      '  valor = :valor,'
      '  valor_pago = :valor_pago,'
      '  desconto = :desconto,'
      '  acrescimo = :acrescimo'
      'WHERE'
      '  tbconta.idconta = :OLD_idconta')
    UseSequenceFieldForRefreshSQL = False
    Left = 662
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data_pagamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor_pago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'acrescimo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idconta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idconta'
        ParamType = ptUnknown
      end>
  end
  object cdsCadConta: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsCadContaCalcFields
    AfterInsert = cdsCadContaAfterInsert
    BeforePost = cdsCadContaBeforePost
    SQL.Strings = (
      'select c.* from tbconta c'
      'where c.idconta = :pidconta')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidconta'
        ParamType = ptInput
      end>
    Left = 662
    Top = 93
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidconta'
        ParamType = ptInput
      end>
    object cdsCadContaidconta: TIntegerField
      FieldName = 'idconta'
      Required = True
    end
    object cdsCadContadata_lancamento: TDateField
      FieldName = 'data_lancamento'
      Required = True
    end
    object cdsCadContadata_vencimento: TDateField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'data_vencimento'
      Required = True
    end
    object cdsCadContadata_pagamento: TDateField
      FieldName = 'data_pagamento'
    end
    object cdsCadContavalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object cdsCadContavalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
    object cdsCadContadesconto: TFloatField
      FieldName = 'desconto'
      currency = True
    end
    object cdsCadContaacrescimo: TFloatField
      FieldName = 'acrescimo'
      currency = True
    end
    object cdsCadContaforma_pagamento: TWideStringField
      FieldName = 'forma_pagamento'
      Size = 45
    end
    object cdsCadContaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsCadContaidvenda: TIntegerField
      FieldName = 'idvenda'
    end
    object cdsCadContaidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsCadContadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object cdsCadContaobs: TWideStringField
      FieldName = 'obs'
      Size = 100
    end
    object cdsCadContaparcela: TWideStringField
      FieldName = 'parcela'
    end
    object cdsCadContatipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cdsCadContausuario_cadastro: TIntegerField
      FieldName = 'usuario_cadastro'
    end
    object cdsCadContausuario_pagamento: TIntegerField
      FieldName = 'usuario_pagamento'
    end
    object cdsCadContaidconta_grupo: TIntegerField
      FieldName = 'idconta_grupo'
    end
    object cdsCadContaidcartao: TIntegerField
      FieldName = 'idcartao'
    end
    object cdsCadContaautomatica: TWideStringField
      FieldName = 'automatica'
      Size = 1
    end
    object cdsCadContaidgrupoconta: TIntegerField
      FieldName = 'idgrupoconta'
    end
    object cdsCadContadocumento: TWideStringField
      FieldName = 'documento'
      Size = 30
    end
    object cdsCadContaTotal_Pagar: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Pagar'
      Calculated = True
    end
    object cdsCadContasaldo_desconto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'saldo_desconto'
      Calculated = True
    end
    object cdsCadContaidfuncionario: TIntegerField
      Tag = 1
      DisplayLabel = ' Funcion'#225'rio'
      FieldName = 'idfuncionario'
      OnChange = cdsCadContaidfuncionarioChange
    end
    object cdsCadContaencargo: TFloatField
      DisplayLabel = 'Encargos'
      FieldName = 'encargo'
      Required = True
      currency = True
    end
    object cdsCadContabonificacao: TFloatField
      DisplayLabel = 'Bonifica'#231#227'o'
      FieldName = 'bonificacao'
      Required = True
      currency = True
    end
    object cdsCadContasalario: TFloatField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'salario'
      currency = True
    end
    object cdsCadContaidveiculo: TIntegerField
      FieldName = 'idveiculo'
    end
    object cdsCadContaidsubgrupo: TIntegerField
      FieldName = 'idsubgrupo'
    end
  end
  object ZUpdateConta: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbconta'
      'WHERE'
      '  tbconta.idconta = :OLD_idconta')
    InsertSQL.Strings = (
      'INSERT INTO tbconta'
      
        '  (idconta, data_lancamento, data_vencimento, data_pagamento, va' +
        'lor, '
      'valor_pago, '
      '   desconto, acrescimo, forma_pagamento, idcliente, idvenda, '
      'idfornecedor, '
      
        '   descricao, obs, parcela, tipo, usuario_cadastro, usuario_paga' +
        'mento, '
      '   idconta_grupo, idcartao, automatica, idgrupoconta, documento)'
      'VALUES'
      
        '  (:idconta, :data_lancamento, :data_vencimento, :data_pagamento' +
        ', :valor, '
      
        '   :valor_pago, :desconto, :acrescimo, :forma_pagamento, :idclie' +
        'nte, '
      ':idvenda, '
      
        '   :idfornecedor, :descricao, :obs, :parcela, :tipo, :usuario_ca' +
        'dastro, '
      '   :usuario_pagamento, :idconta_grupo, :idcartao, :automatica, '
      ':idgrupoconta, '
      '   :documento)')
    ModifySQL.Strings = (
      'UPDATE tbconta SET'
      '  idconta = :idconta,'
      '  data_lancamento = :data_lancamento,'
      '  data_vencimento = :data_vencimento,'
      '  data_pagamento = :data_pagamento,'
      '  valor = :valor,'
      '  valor_pago = :valor_pago,'
      '  desconto = :desconto,'
      '  acrescimo = :acrescimo,'
      '  forma_pagamento = :forma_pagamento,'
      '  idcliente = :idcliente,'
      '  idvenda = :idvenda,'
      '  idfornecedor = :idfornecedor,'
      '  descricao = :descricao,'
      '  obs = :obs,'
      '  parcela = :parcela,'
      '  tipo = :tipo,'
      '  usuario_cadastro = :usuario_cadastro,'
      '  usuario_pagamento = :usuario_pagamento,'
      '  idconta_grupo = :idconta_grupo,'
      '  idcartao = :idcartao,'
      '  automatica = :automatica,'
      '  idgrupoconta = :idgrupoconta,'
      '  documento = :documento'
      'WHERE'
      '  tbconta.idconta = :OLD_idconta')
    UseSequenceFieldForRefreshSQL = False
    Left = 425
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idconta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_lancamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_vencimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_pagamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor_pago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'acrescimo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'forma_pagamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idvenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idfornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parcela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario_cadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario_pagamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idconta_grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcartao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'automatica'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idgrupoconta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idconta'
        ParamType = ptUnknown
      end>
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 188
    Top = 30
  end
  object qrItensVenda: TZQuery
    Connection = ZConnection
    OnCalcFields = qrItensVendaCalcFields
    SQL.Strings = (
      
        'select i.*, p.descricao, p.codbarras, p.unidade,  p.est_atual, p' +
        '.controla_estoque, p.valor_custo,'
      'k.descricao as descricaokit, k.codbarras as codbarraskit'
      'from tbvenda_item i'
      'left join tbproduto p on i.idproduto = p.idproduto'
      'left join tbkit k on i.idkit = k.idkit'
      'where i.idvenda = :pidvenda')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidvenda'
        ParamType = ptInput
      end>
    Left = 583
    Top = 93
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidvenda'
        ParamType = ptInput
      end>
    object qrItensVendaidvenda: TIntegerField
      DisplayLabel = 'ID Venda'
      FieldName = 'idvenda'
      Required = True
    end
    object qrItensVendaiditem: TIntegerField
      FieldName = 'iditem'
      Required = True
    end
    object qrItensVendaidproduto: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'idproduto'
      Required = True
    end
    object qrItensVendaqtde: TIntegerField
      DisplayLabel = 'Qtde'
      FieldName = 'qtde'
      Required = True
    end
    object qrItensVendapreco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Required = True
      currency = True
    end
    object qrItensVendadesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      currency = True
    end
    object qrItensVendadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 80
    end
    object qrItensVendacodbarras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'codbarras'
      Size = 40
    end
    object qrItensVendaunidade: TWideStringField
      DisplayLabel = 'und.'
      FieldName = 'unidade'
      Size = 10
    end
    object qrItensVendaTotal_Item: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total_Item'
      Calculated = True
    end
    object qrItensVendaest_atual: TIntegerField
      FieldName = 'est_atual'
    end
    object qrItensVendacontrola_estoque: TWideStringField
      FieldName = 'controla_estoque'
      Size = 1
    end
    object qrItensVendaidkit: TIntegerField
      FieldName = 'idkit'
    end
    object qrItensVendadescricaokit: TWideStringField
      FieldName = 'descricaokit'
      Size = 80
    end
    object qrItensVendacodbarraskit: TWideStringField
      FieldName = 'codbarraskit'
      Size = 40
    end
    object qrItensVendabarrascalc: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldKind = fkCalculated
      FieldName = 'barrascalc'
      Size = 40
      Calculated = True
    end
    object qrItensVendadescricaocalc: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'descricaocalc'
      Size = 100
      Calculated = True
    end
    object qrItensVendapreco_custo: TFloatField
      FieldName = 'preco_custo'
    end
    object qrItensVendavalor_custo: TFloatField
      FieldName = 'valor_custo'
    end
  end
  object dsItenVenda: TDataSource
    DataSet = qrItensVenda
    Left = 346
    Top = 30
  end
  object cdsCadKit: TZQuery
    Connection = ZConnection
    AfterInsert = cdsCadKitAfterInsert
    AfterPost = cdsCadKitAfterPost
    SQL.Strings = (
      'select * from tbkit where'
      'idkit = :pidkit')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pidkit'
        ParamType = ptUnknown
      end>
    Left = 346
    Top = 93
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pidkit'
        ParamType = ptUnknown
      end>
    object cdsCadKitidkit: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idkit'
      Required = True
    end
    object cdsCadKitdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 80
    end
    object cdsCadKitvalor_custo: TFloatField
      DisplayLabel = 'Valor Custo'
      FieldName = 'valor_custo'
      currency = True
    end
    object cdsCadKitvalor_varejo: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor_varejo'
      currency = True
    end
    object cdsCadKitinfo_adicional: TWideStringField
      DisplayLabel = 'Inf. Adicionais'
      FieldName = 'info_adicional'
      Size = 60
    end
    object cdsCadKitest_minimo: TIntegerField
      DisplayLabel = 'Est. M'#237'nimo'
      FieldName = 'est_minimo'
    end
    object cdsCadKitdt_cadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
    end
    object cdsCadKitcodbarras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'codbarras'
      Size = 40
    end
  end
  object cdsKitProduto: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsKitProdutoCalcFields
    UpdateObject = ZUpdateKitProd
    CachedUpdates = True
    SQL.Strings = (
      
        'select k.idkit, k.idproduto, k.qtde, p.descricao, p.codbarras, p' +
        '.valor_varejo, p.valor_custo,'
      'p.est_atual'
      'from tbkit_produto k'
      'inner join tbproduto p on k.idproduto = p.idproduto'
      'where k.idkit = :pidkit')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidkit'
        ParamType = ptInput
      end>
    Left = 741
    Top = 93
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidkit'
        ParamType = ptInput
      end>
    object cdsKitProdutoidkit: TIntegerField
      FieldName = 'idkit'
      Required = True
    end
    object cdsKitProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object cdsKitProdutocodbarras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'codbarras'
      Size = 40
    end
    object cdsKitProdutovalor_varejo: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor_varejo'
    end
    object cdsKitProdutovalor_custo: TFloatField
      DisplayLabel = 'Pre'#231'o Custo'
      FieldName = 'valor_custo'
    end
    object cdsKitProdutoqtde: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtde'
      Required = True
    end
    object cdsKitProdutodescricao: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao'
      Required = True
      Size = 40
    end
    object cdsKitProdutovalor_total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object cdsKitProdutoest_atual: TIntegerField
      DisplayLabel = 'Dispon'#237'vel'
      FieldName = 'est_atual'
    end
    object cdsKitProdutoCompleto: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Completo'
      Calculated = True
    end
  end
  object ZUpdateKitProd: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbkit_produto'
      'WHERE'
      '  tbkit_produto.idkit = :OLD_idkit AND'
      '  tbkit_produto.idproduto = :OLD_idproduto')
    InsertSQL.Strings = (
      'INSERT INTO tbkit_produto'
      '  (idkit, idproduto, qtde)'
      'VALUES'
      '  (:idkit, :idproduto, :qtde)')
    ModifySQL.Strings = (
      'UPDATE tbkit_produto SET'
      '  idkit = :idkit,'
      '  idproduto = :idproduto,'
      '  qtde = :qtde'
      'WHERE'
      '  tbkit_produto.idkit = :OLD_idkit AND'
      '  tbkit_produto.idproduto = :OLD_idproduto')
    UseSequenceFieldForRefreshSQL = False
    Left = 504
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idkit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idkit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idproduto'
        ParamType = ptUnknown
      end>
  end
  object qrCustoMedio: TZQuery
    Connection = ZConnection
    OnCalcFields = qrCustoMedioCalcFields
    SQL.Strings = (
      
        'select idproduto, sum(valor_unit * qtde) as valor_total, sum(qtd' +
        'e) as qtde_total from tbnota_item where idproduto = :pidproduto'
      'group by idproduto')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end>
    Left = 504
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end>
    object qrCustoMedioidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object qrCustoMediocusto_medio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'custo_medio'
      ReadOnly = True
      currency = True
      Calculated = True
    end
    object qrCustoMediovalor_total: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
    end
    object qrCustoMedioqtde_total: TLargeintField
      FieldName = 'qtde_total'
      ReadOnly = True
    end
  end
  object dsCheque: TDataSource
    DataSet = memcheque
    Left = 741
    Top = 30
  end
  object memcheque: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'id'
    Params = <>
    StoreDefs = True
    Left = 158
    Top = 6
    object memchequeid: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'id'
    end
    object memchequevalor: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object memchequebanco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
    end
    object memchequeagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'agencia'
      Size = 15
    end
    object memchequeconta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta'
      Size = 15
    end
    object memchequenumchque: TStringField
      DisplayLabel = 'N'#186'. Cheque'
      FieldName = 'numchque'
      Size = 30
    end
    object memchequedtvencimento: TDateField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'dtvencimento'
    end
    object memchequedocumento: TStringField
      DisplayLabel = 'Documento Terceiro'
      FieldName = 'documento'
      Size = 14
    end
    object memchequeTipo: TStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object memchequeNome_Terceiro: TStringField
      DisplayLabel = 'Nome Terceiro'
      FieldName = 'Nome_Terceiro'
      Size = 60
    end
  end
  object qrlkCliente: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select codcliente, nome, prefeitura, idprefeitura from tbcliente')
    Params = <>
    Left = 425
    Top = 156
    object qrlkClientecodcliente: TIntegerField
      FieldName = 'codcliente'
      Required = True
    end
    object qrlkClientenome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object qrlkClienteprefeitura: TWideStringField
      FieldName = 'prefeitura'
      ReadOnly = True
      Size = 1
    end
    object qrlkClienteidprefeitura: TIntegerField
      FieldName = 'idprefeitura'
      ReadOnly = True
    end
  end
  object qrlkFornecedor: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select idfornecedor, razao from tbfornecedor')
    Params = <>
    Left = 583
    Top = 156
    object qrlkFornecedoridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Required = True
    end
    object qrlkFornecedorrazao: TWideStringField
      FieldName = 'razao'
      Size = 60
    end
  end
  object dslkcliente: TDataSource
    DataSet = qrlkCliente
    Left = 425
    Top = 30
  end
  object dslkfornecedor: TDataSource
    DataSet = qrlkFornecedor
    Left = 504
    Top = 30
  end
  object qrlkusuario: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select idtbusuario, nome from tbusuario')
    Params = <>
    Left = 741
    Top = 156
    object qrlkusuarioidtbusuario: TIntegerField
      FieldName = 'idtbusuario'
      Required = True
    end
    object qrlkusuarionome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
  end
  object dslkusuario: TDataSource
    DataSet = qrlkusuario
    Left = 267
    Top = 30
  end
  object cdsEditCheque: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select * from tbcheque where idtbcheque = :pidtbcheque')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidtbcheque'
        ParamType = ptInput
      end>
    Left = 662
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidtbcheque'
        ParamType = ptInput
      end>
    object cdsEditChequeidtbcheque: TIntegerField
      FieldName = 'idtbcheque'
      Required = True
    end
    object cdsEditChequenumcheque: TWideStringField
      DisplayLabel = 'N'#186' cheque'
      FieldName = 'numcheque'
      Size = 30
    end
    object cdsEditChequebanco: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
    end
    object cdsEditChequeagencia: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'agencia'
      Size = 15
    end
    object cdsEditChequeconta: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta'
      Size = 15
    end
    object cdsEditChequetipo_cheque: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_cheque'
      Size = 1
    end
    object cdsEditChequedocumento_terceiro: TWideStringField
      DisplayLabel = 'Doc. Terceiro'
      FieldName = 'documento_terceiro'
      Size = 14
    end
    object cdsEditChequevalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object cdsEditChequedata_vencimento: TDateField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'data_vencimento'
    end
    object cdsEditChequedata_lancamento: TDateField
      DisplayLabel = 'Dt. Lan'#231'amento'
      FieldName = 'data_lancamento'
    end
    object cdsEditChequeidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsEditChequenome_terceiro: TWideStringField
      DisplayLabel = 'Nome terceiro'
      FieldName = 'nome_terceiro'
      Size = 60
    end
    object cdsEditChequeidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsEditChequetipo_chque: TWideStringField
      FieldName = 'tipo_chque'
      Size = 1
    end
    object cdsEditChequestatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Size = 1
    end
    object cdsEditChequeobs: TWideStringField
      FieldName = 'obs'
      Size = 150
    end
  end
  object ZSQLScript: TZSQLProcessor
    Params = <>
    Connection = ZConnection
    Delimiter = ';'
    Left = 188
    Top = 345
  end
  object cdsFuncionario: TZQuery
    Connection = ZConnection
    OnNewRecord = cdsFuncionarioNewRecord
    SQL.Strings = (
      'select * from tbfuncionario where'
      'idfuncionario = :pidfuncionario')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidfuncionario'
        ParamType = ptInput
      end>
    Left = 109
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidfuncionario'
        ParamType = ptInput
      end>
    object cdsFuncionarioidfuncionario: TIntegerField
      DisplayLabel = 'ID. Funcion'#225'rio'
      FieldName = 'idfuncionario'
      Required = True
    end
    object cdsFuncionarionome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object cdsFuncionariotelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFuncionariocelular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFuncionarioendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object cdsFuncionariobairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 45
    end
    object cdsFuncionariocep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      EditMask = '99999\-999;1;_'
      Size = 10
    end
    object cdsFuncionarioemail: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 100
    end
    object cdsFuncionariosalario: TFloatField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'salario'
      currency = True
    end
    object cdsFuncionarioidsetor: TIntegerField
      FieldName = 'idsetor'
    end
    object cdsFuncionariocidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 40
    end
    object cdsFuncionariouf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
    object cdsFuncionariorg: TWideStringField
      DisplayLabel = 'RG'
      FieldName = 'rg'
      Size = 45
    end
    object cdsFuncionariodtaniversario: TDateField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'dtaniversario'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionariodtcadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dtcadastro'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionarioobs: TWideStringField
      DisplayLabel = 'Obs.'
      FieldName = 'obs'
      Size = 200
    end
    object cdsFuncionarionome_contato: TWideStringField
      DisplayLabel = 'Nome Contato '
      FieldName = 'nome_contato'
      Size = 100
    end
    object cdsFuncionariotel1_contato: TWideStringField
      DisplayLabel = 'Tel Contato'
      FieldName = 'tel1_contato'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFuncionariotel2_contato: TWideStringField
      DisplayLabel = 'Cel Contato'
      FieldName = 'tel2_contato'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFuncionarioemail_contato: TWideStringField
      DisplayLabel = 'Email contato'
      FieldName = 'email_contato'
      Size = 100
    end
    object cdsFuncionarionome_contato2: TWideStringField
      DisplayLabel = 'Nome Contato 2'
      FieldName = 'nome_contato2'
      Size = 100
    end
    object cdsFuncionariotel1_contato2: TWideStringField
      DisplayLabel = 'Tel Contato 2'
      FieldName = 'tel1_contato2'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFuncionariotel2_contato2: TWideStringField
      DisplayLabel = 'Cel Contato 2'
      FieldName = 'tel2_contato2'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsFuncionarioemail_contato2: TWideStringField
      DisplayLabel = 'Email contato 2'
      FieldName = 'email_contato2'
      Size = 100
    end
    object cdsFuncionariounidade_trabalho: TWideStringField
      DisplayLabel = 'Unidade de Trabalho'
      FieldName = 'unidade_trabalho'
      Size = 100
    end
    object cdsFuncionariodtadmissao: TDateField
      DisplayLabel = 'Dt. Admiss'#227'o'
      FieldName = 'dtadmissao'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionariocargo: TWideStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Size = 45
    end
    object cdsFuncionariodtexamemedico: TDateField
      DisplayLabel = 'Dt. Exame'
      FieldName = 'dtexamemedico'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionariodtvctoexamemedico: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvctoexamemedico'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionariodtexameintegracao: TDateField
      DisplayLabel = 'Dt. Exame'
      FieldName = 'dtexameintegracao'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionariodtvctoexameintegracao: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvctoexameintegracao'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionariocnhvcto: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'cnhvcto'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsFuncionariocnhcategoria: TWideStringField
      DisplayLabel = 'Categoria'
      FieldName = 'cnhcategoria'
      Size = 10
    end
    object cdsFuncionariocnhnumero: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'cnhnumero'
      Size = 40
    end
    object cdsFuncionarioagencia: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'agencia'
      Size = 15
    end
    object cdsFuncionariobanco: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
      Size = 30
    end
    object cdsFuncionarionumbanco: TIntegerField
      DisplayLabel = 'N'#186' Banco'
      FieldName = 'numbanco'
      DisplayFormat = '000'
    end
    object cdsFuncionarioconta: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta'
      Size = 15
    end
    object cdsFuncionariooperacao: TWideStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'operacao'
      Size = 10
    end
    object cdsFuncionariobanco2: TWideStringField
      DisplayLabel = 'Banco 2'
      FieldName = 'banco2'
      Size = 30
    end
    object cdsFuncionarionumbanco2: TIntegerField
      DisplayLabel = 'N'#186' Banco 2'
      FieldName = 'numbanco2'
      DisplayFormat = '000'
    end
    object cdsFuncionarioagencia2: TWideStringField
      DisplayLabel = 'Ag'#234'ncia 2'
      FieldName = 'agencia2'
      Size = 15
    end
    object cdsFuncionarioconta2: TWideStringField
      DisplayLabel = 'Conta 2'
      FieldName = 'conta2'
      Size = 15
    end
    object cdsFuncionariooperacao2: TWideStringField
      DisplayLabel = 'Opera'#231#227'o 2'
      FieldName = 'operacao2'
      Size = 10
    end
  end
  object cdsSetor: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select * from tbsetor')
    Params = <>
    Left = 30
    Top = 156
    object cdsSetoridsetor: TIntegerField
      DisplayLabel = 'C'#243'd. Setor'
      FieldName = 'idsetor'
      Required = True
    end
    object cdsSetordescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 45
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 583
    Top = 30
  end
  object cdsCadProducao: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsCadProducaoCalcFields
    AfterInsert = cdsCadProducaoAfterInsert
    OnPostError = cdsCadProducaoPostError
    SQL.Strings = (
      'select * from tbproducao'
      'where idproducao = :pidproducao')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidproducao'
        ParamType = ptInput
      end>
    Left = 182
    Top = 94
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidproducao'
        ParamType = ptInput
      end>
    object cdsCadProducaoidproducao: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'idproducao'
      Required = True
    end
    object cdsCadProducaoidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object cdsCadProducaopeso: TFloatField
      DisplayLabel = 'Peso (Tonelada)'
      FieldName = 'peso'
    end
    object cdsCadProducaovalor_tonelada: TFloatField
      DisplayLabel = 'Valor/Tonelada'
      FieldName = 'valor_tonelada'
      currency = True
    end
    object cdsCadProducaonum_viagens: TIntegerField
      DisplayLabel = 'N'#186' Viagens'
      FieldName = 'num_viagens'
    end
    object cdsCadProducaodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsCadProducaoidveiculo: TIntegerField
      FieldName = 'idveiculo'
    end
    object cdsCadProducaoveiculo: TStringField
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = cdsCadVeiculo
      LookupKeyFields = 'idveiculo'
      LookupResultField = 'codveiculo'
      KeyFields = 'idveiculo'
      Size = 10
      Lookup = True
    end
    object cdsCadProducaovalor_total: TCurrencyField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object cdsCadProducaomedia_tonelada: TCurrencyField
      DisplayLabel = 'M'#233'dia p/ Viagem'
      FieldKind = fkCalculated
      FieldName = 'media_tonelada'
      DisplayFormat = '#0.00'
      currency = False
      Calculated = True
    end
    object cdsCadProducaocliente: TStringField
      DisplayLabel = 'Cliente / Mina'
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrlkCliente
      LookupKeyFields = 'codcliente'
      LookupResultField = 'nome'
      KeyFields = 'idcliente'
      Size = 60
      Lookup = True
    end
    object cdsCadProducaodata_casdastro: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'data_casdastro'
    end
    object cdsCadProducaoidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object cdsCadProducaousuario: TStringField
      DisplayLabel = 'Usu'#225'rio Cadastro'
      FieldKind = fkLookup
      FieldName = 'usuario'
      LookupDataSet = qrlkusuario
      LookupKeyFields = 'idtbusuario'
      LookupResultField = 'nome'
      KeyFields = 'idusuario'
      Size = 45
      Lookup = True
    end
    object cdsCadProducaotara: TFloatField
      FieldName = 'tara'
      Required = True
    end
    object cdsCadProducaopeso_bruto: TFloatField
      FieldName = 'peso_bruto'
    end
    object cdsCadProducaovalor_agregado: TFloatField
      FieldName = 'valor_agregado'
      currency = True
    end
    object cdsCadProducaovalor_totalagregado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_totalagregado'
      Calculated = True
    end
    object cdsCadProducaohora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'hora'
      OnSetText = SetHora
      DisplayFormat = 'hh:nn'
      EditMask = '99:99;1;_'
    end
  end
  object cdsCadVeiculo: TZQuery
    Connection = ZConnection
    OnPostError = cdsCadVeiculoPostError
    SQL.Strings = (
      'select * from tbveiculo')
    Params = <>
    Left = 346
    Top = 156
    object cdsCadVeiculoidveiculo: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'idveiculo'
      Required = True
    end
    object cdsCadVeiculocodveiculo: TIntegerField
      DisplayLabel = 'Cod. Ve'#237'culo'
      FieldName = 'codveiculo'
      Required = True
    end
    object cdsCadVeiculoplaca: TWideStringField
      DisplayLabel = 'Placa'
      FieldName = 'placa'
      EditMask = 'lll-9999;1;_'
      Size = 8
    end
    object cdsCadVeiculomarca: TWideStringField
      DisplayLabel = 'Marca'
      FieldName = 'marca'
      Size = 45
    end
    object cdsCadVeiculomodelo: TWideStringField
      DisplayLabel = 'Modelo'
      FieldName = 'modelo'
      Size = 45
    end
    object cdsCadVeiculoano: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ano'
    end
    object cdsCadVeiculorenavan: TWideStringField
      DisplayLabel = 'Renavan'
      FieldName = 'renavan'
      Size = 45
    end
    object cdsCadVeiculochassi: TWideStringField
      DisplayLabel = 'Chassi'
      FieldName = 'chassi'
      Size = 45
    end
    object cdsCadVeiculovalor_ipva: TFloatField
      DisplayLabel = 'Valor IPVA'
      FieldName = 'valor_ipva'
      currency = True
    end
    object cdsCadVeiculovalor_dpvat: TFloatField
      DisplayLabel = 'Valor DPVAT'
      FieldName = 'valor_dpvat'
      currency = True
    end
    object cdsCadVeiculovalor_licenciamento: TFloatField
      DisplayLabel = 'Valor Licenciamento'
      FieldName = 'valor_licenciamento'
      currency = True
    end
    object cdsCadVeiculodt_pgipva: TDateField
      DisplayLabel = 'Dt. Pg. IPVA'
      FieldName = 'dt_pgipva'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsCadVeiculodt_pgdpvat: TDateField
      DisplayLabel = 'Dt. Pg. DPVAT'
      FieldName = 'dt_pgdpvat'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsCadVeiculodt_pglicenciamento: TDateField
      DisplayLabel = 'Dt. Pg. Licenciamento'
      FieldName = 'dt_pglicenciamento'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsCadVeiculorastreador: TWideStringField
      DisplayLabel = 'Rastreador'
      FieldName = 'rastreador'
      Size = 1
    end
    object cdsCadVeiculoidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
  end
  object qrFuncionario: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select idfuncionario, nome from tbfuncionario')
    Params = <>
    Left = 267
    Top = 156
    object qrFuncionarioidfuncionario: TIntegerField
      FieldName = 'idfuncionario'
      Required = True
    end
    object qrFuncionarionome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
  end
  object cdsCadMeta: TZQuery
    Connection = ZConnection
    AfterInsert = cdsCadMetaAfterInsert
    SQL.Strings = (
      'select * from tbmeta where'
      'idmeta = :pidmeta')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidmeta'
        ParamType = ptInput
      end>
    Left = 112
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidmeta'
        ParamType = ptInput
      end>
    object cdsCadMetaidmeta: TIntegerField
      FieldName = 'idmeta'
      Required = True
    end
    object cdsCadMetaidveiculo: TIntegerField
      FieldName = 'idveiculo'
      Required = True
    end
    object cdsCadMetadata_inicial: TDateField
      DisplayLabel = 'Dt. Inicial'
      FieldName = 'data_inicial'
      Required = True
    end
    object cdsCadMetadata_final: TDateField
      DisplayLabel = 'Dt. Final'
      FieldName = 'data_final'
      Required = True
    end
    object cdsCadMetaminimo: TFloatField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'minimo'
      Required = True
      currency = True
    end
    object cdsCadMetacota: TFloatField
      DisplayLabel = 'Cota'
      FieldName = 'cota'
      Required = True
      currency = True
    end
    object cdsCadMetasuper: TFloatField
      DisplayLabel = 'Super'
      FieldName = 'super'
      Required = True
      currency = True
    end
    object cdsCadMetadias_uteis: TSmallintField
      DisplayLabel = 'Dias '#218'teis'
      FieldName = 'dias_uteis'
      Required = True
    end
  end
  object qrMeta: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'select idmeta, minimo, cota, super, dias_uteis, idveiculo, data_' +
        'inicial, data_final from tbmeta')
    Params = <>
    Left = 184
    Top = 408
    object qrMetaidmeta: TIntegerField
      FieldName = 'idmeta'
      Required = True
    end
    object qrMetaminimo: TFloatField
      FieldName = 'minimo'
      Required = True
      currency = True
    end
    object qrMetacota: TFloatField
      FieldName = 'cota'
      Required = True
      currency = True
    end
    object qrMetasuper: TFloatField
      FieldName = 'super'
      Required = True
      currency = True
    end
    object qrMetadias_uteis: TSmallintField
      FieldName = 'dias_uteis'
      Required = True
    end
    object qrMetaidveiculo: TIntegerField
      FieldName = 'idveiculo'
      Required = True
    end
    object qrMetadata_inicial: TDateField
      FieldName = 'data_inicial'
      Required = True
    end
    object qrMetadata_final: TDateField
      FieldName = 'data_final'
      Required = True
    end
  end
  object qrlkFuncionario: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select idfuncionario, nome, salario FROM tbfuncionario')
    Params = <>
    Left = 808
    Top = 32
    object qrlkFuncionarioidfuncionario: TIntegerField
      FieldName = 'idfuncionario'
      Required = True
    end
    object qrlkFuncionarionome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object qrlkFuncionariosalario: TFloatField
      FieldName = 'salario'
    end
  end
  object dslkFuncionario: TDataSource
    DataSet = qrlkFuncionario
    Left = 808
    Top = 56
  end
  object qrPesConta: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 808
    Top = 152
  end
  object qrCompCombustivel: TZQuery
    Connection = ZConnection
    OnCalcFields = qrCompCombustivelCalcFields
    AfterInsert = qrCompCombustivelAfterInsert
    SQL.Strings = (
      'select * from tbestoque_gasolina where'
      'idestoque_gas = :pidestoque_gas')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pidestoque_gas'
        ParamType = ptUnknown
      end>
    Left = 256
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pidestoque_gas'
        ParamType = ptUnknown
      end>
    object qrCompCombustivelIdestoque_gas: TIntegerField
      DisplayLabel = 'ID.'
      FieldName = 'Idestoque_gas'
      Required = True
    end
    object qrCompCombustiveldata_compra: TDateField
      DisplayLabel = 'Dt. Compra'
      FieldName = 'data_compra'
      Required = True
    end
    object qrCompCombustivelqtde: TIntegerField
      DisplayLabel = 'Qtde. Litros'
      FieldName = 'qtde'
      Required = True
    end
    object qrCompCombustivelvalor_unit: TFloatField
      DisplayLabel = 'V. p/ Litro'
      FieldName = 'valor_unit'
      Required = True
      currency = True
    end
    object qrCompCombustivelnota_fiscal: TWideStringField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'nota_fiscal'
    end
    object qrCompCombustivelidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object qrCompCombustivelvalor_total: TCurrencyField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
  end
  object dslkVeiculo: TDataSource
    DataSet = cdsCadVeiculo
    Left = 792
    Top = 232
  end
  object dslkGrupoConta: TDataSource
    DataSet = cdsGrupoConta
    Left = 816
    Top = 288
  end
  object cdsTransportadora: TZQuery
    Connection = ZConnection
    AfterInsert = cdsTransportadoraAfterInsert
    SQL.Strings = (
      'select * from tbtransportadora')
    Params = <>
    Left = 184
    Top = 152
    object cdsTransportadoraidtransportadora: TIntegerField
      FieldName = 'idtransportadora'
      Required = True
    end
    object cdsTransportadorarazaosocial: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'razaosocial'
      Size = 100
    end
    object cdsTransportadoracnpj: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Size = 14
    end
    object cdsTransportadoraendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 100
    end
    object cdsTransportadorabairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 45
    end
    object cdsTransportadoracidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 45
    end
    object cdsTransportadorauf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
    object cdsTransportadoracep: TWideStringField
      DisplayLabel = 'Cep'
      FieldName = 'cep'
      Size = 10
    end
    object cdsTransportadoratelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsTransportadoracelular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsTransportadoraemail: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 100
    end
    object cdsTransportadorasite: TWideStringField
      DisplayLabel = 'Site'
      FieldName = 'site'
      Size = 45
    end
    object cdsTransportadoracontato_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'contato_nome'
      Size = 45
    end
    object cdsTransportadoracontato_telefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'contato_telefone'
      OnGetText = GetTextTelefone
      OnSetText = SetTextTelefone
      Size = 15
    end
    object cdsTransportadoracontato_email: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'contato_email'
      Size = 100
    end
    object cdsTransportadoradt_cadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
    end
  end
  object qrNotaPagamento: TZQuery
    Connection = ZConnection
    AfterOpen = qrNotaPagamentoAfterOpen
    CachedUpdates = True
    AfterInsert = qrNotaPagamentoAfterInsert
    SQL.Strings = (
      'select * from tbnota_pagamento where idnota = :pidnota')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidnota'
        ParamType = ptInput
      end>
    Left = 360
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidnota'
        ParamType = ptInput
      end>
    object qrNotaPagamentoidpagamento: TIntegerField
      FieldName = 'idpagamento'
      Required = True
    end
    object qrNotaPagamentoidnota: TIntegerField
      FieldName = 'idnota'
      Required = True
    end
    object qrNotaPagamentoforma_pagamento: TWideStringField
      DisplayLabel = 'F. Pagamento'
      FieldName = 'forma_pagamento'
      Size = 45
    end
    object qrNotaPagamentodata_vencimento: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data_vencimento'
    end
    object qrNotaPagamentovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object qrNotaPagamentoobs: TWideStringField
      FieldName = 'obs'
      Size = 45
    end
  end
  object cdsSubGrupo: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsSubGrupoCalcFields
    AfterInsert = cdsSubGrupoAfterInsert
    SQL.Strings = (
      'select * from tbsubgrupoconta')
    Params = <>
    Left = 440
    Top = 416
    object cdsSubGrupoidsubgrupo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idsubgrupo'
      Required = True
    end
    object cdsSubGrupodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 45
    end
    object cdsSubGrupotipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object cdsSubGrupotipocalc: TWideStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'tipocalc'
      Calculated = True
    end
  end
  object dsSubgrupo: TDataSource
    DataSet = cdsSubGrupo
    Left = 568
    Top = 432
  end
  object qrFuncVeiculo: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'SELECT v.idveiculo, v.idfuncionario, f.nome FROM tbveiculo_funci' +
        'onario v'#13#10#10
      'inner join tbfuncionario f on v.idfuncionario = f.idfuncionario'
      'where v.idveiculo = :pidveiculo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pidveiculo'
        ParamType = ptUnknown
      end>
    Left = 680
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pidveiculo'
        ParamType = ptUnknown
      end>
    object qrFuncVeiculoidveiculo: TIntegerField
      FieldName = 'idveiculo'
      Required = True
    end
    object qrFuncVeiculoidfuncionario: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'idfuncionario'
      Required = True
    end
    object qrFuncVeiculonome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
  end
  object cdsCheque: TZQuery
    Connection = ZConnection
    CachedUpdates = True
    SQL.Strings = (
      'select * from tbcheque where idtbcheque = :idtbcheque')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idtbcheque'
        ParamType = ptUnknown
      end>
    Left = 760
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idtbcheque'
        ParamType = ptUnknown
      end>
    object cdsChequeidtbcheque: TIntegerField
      FieldName = 'idtbcheque'
      Required = True
    end
    object cdsChequenumcheque: TWideStringField
      FieldName = 'numcheque'
      Size = 30
    end
    object cdsChequebanco: TWideStringField
      FieldName = 'banco'
    end
    object cdsChequeagencia: TWideStringField
      FieldName = 'agencia'
      Size = 15
    end
    object cdsChequeconta: TWideStringField
      FieldName = 'conta'
      Size = 15
    end
    object cdsChequetipo_cheque: TWideStringField
      FieldName = 'tipo_cheque'
      Size = 1
    end
    object cdsChequedocumento_terceiro: TWideStringField
      FieldName = 'documento_terceiro'
      Size = 14
    end
    object cdsChequevalor: TFloatField
      FieldName = 'valor'
    end
    object cdsChequedata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object cdsChequedata_lancamento: TDateField
      FieldName = 'data_lancamento'
    end
    object cdsChequeidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsChequenome_terceiro: TWideStringField
      FieldName = 'nome_terceiro'
      Size = 60
    end
    object cdsChequeidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsChequetipo_chque: TWideStringField
      FieldName = 'tipo_chque'
      Size = 1
    end
    object cdsChequestatus: TWideStringField
      FieldName = 'status'
      Size = 1
    end
  end
  object cdsContaCheque: TZQuery
    Connection = ZConnection
    CachedUpdates = True
    SQL.Strings = (
      'select * from tbconta_cheque where idconta = :pidconta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pidconta'
        ParamType = ptUnknown
      end>
    Left = 800
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pidconta'
        ParamType = ptUnknown
      end>
    object cdsContaChequeidconta: TIntegerField
      FieldName = 'idconta'
      Required = True
    end
    object cdsContaChequeidcheque: TIntegerField
      FieldName = 'idcheque'
      Required = True
    end
  end
  object dsConfigs: TDataSource
    DataSet = cdsConfigs
    Left = 288
    Top = 272
  end
  object qrClientePreco: TZQuery
    Connection = ZConnection
    UpdateObject = ZUpdateClientePreco
    SQL.Strings = (
      
        'select p.idcliente, p.idproduto, p.preco, p.edital, c.nome from ' +
        'tbcliente_preco p '#13#10#10
      'inner join tbcliente c on p.idcliente = c.codcliente'
      'where p.idproduto = :pidproduto')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end>
    Left = 128
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end>
    object qrClientePrecoidcliente: TIntegerField
      DisplayLabel = 'Id. Cliente'
      FieldName = 'idcliente'
      Required = True
    end
    object qrClientePrecoidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object qrClientePreconome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      ProviderFlags = []
      Required = True
      Size = 60
    end
    object qrClientePrecopreco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Required = True
      currency = True
    end
    object qrClientePrecoedital: TWideStringField
      FieldName = 'edital'
    end
  end
  object ZUpdateClientePreco: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbcliente_preco'
      'WHERE'
      '  tbcliente_preco.idcliente = :OLD_idcliente AND'
      '  tbcliente_preco.idproduto = :OLD_idproduto')
    InsertSQL.Strings = (
      'INSERT INTO tbcliente_preco'
      '  (idcliente, idproduto, preco, edital)'
      'VALUES'
      '  (:idcliente, :idproduto, :preco, :edital)')
    ModifySQL.Strings = (
      'UPDATE tbcliente_preco SET'
      '  idcliente = :idcliente,'
      '  idproduto = :idproduto,'
      '  preco = :preco,'
      '  edital = :edital'
      'WHERE'
      '  tbcliente_preco.idcliente = :OLD_idcliente AND'
      '  tbcliente_preco.idproduto = :OLD_idproduto')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idcliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'preco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'edital'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idcliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idproduto'
        ParamType = ptUnknown
      end>
  end
  object qrValorCliente: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'select idproduto, idcliente, preco from tbcliente_preco where id' +
        'produto = :pidproduto and idcliente = :pidcliente')
    Params = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pidcliente'
        ParamType = ptInput
      end>
    Left = 32
    Top = 471
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pidproduto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pidcliente'
        ParamType = ptInput
      end>
  end
  object cdsStatus: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select * from tbstatus')
    Params = <>
    Left = 374
    Top = 492
    object cdsStatusidstatus: TIntegerField
      FieldName = 'idstatus'
      Required = True
    end
    object cdsStatusdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 45
    end
  end
  object cdsControle: TZQuery
    Connection = ZConnection
    OnCalcFields = cdsControleCalcFields
    AfterPost = cdsControleAfterPost
    SQL.Strings = (
      'select * from tbsistema where id = :id')
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    Left = 440
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    object cdsControleid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsControledata: TDateField
      FieldName = 'data'
    end
    object cdsControleidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsControleidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsControlenpedido: TWideStringField
      FieldName = 'npedido'
      Size = 45
    end
    object cdsControleqtde_enviada: TIntegerField
      FieldName = 'qtde_enviada'
    end
    object cdsControleidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsControlepreco_unit: TFloatField
      FieldName = 'preco_unit'
      currency = True
    end
    object cdsControleprev_entrega: TDateField
      FieldName = 'prev_entrega'
    end
    object cdsControledata_entrega: TDateField
      FieldName = 'data_entrega'
    end
    object cdsControleiddestino: TIntegerField
      FieldName = 'iddestino'
    end
    object cdsControleidstatus: TIntegerField
      FieldName = 'idstatus'
    end
    object cdsControleProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = cdsLKProduto
      LookupKeyFields = 'idproduto'
      LookupResultField = 'descricao'
      KeyFields = 'idproduto'
      Size = 80
      Lookup = True
    end
    object cdsControleqtde_entregue: TIntegerField
      FieldName = 'qtde_entregue'
    end
    object cdsControlevalor_total: TFloatField
      FieldName = 'valor_total'
      currency = True
    end
    object cdsControlevalor_pago: TFloatField
      FieldName = 'valor_pago'
      currency = True
    end
    object cdsControledia_pagamento: TDateField
      FieldName = 'dia_pagamento'
    end
    object cdsControleobs: TWideStringField
      FieldName = 'obs'
      Size = 300
    end
    object cdsControlevale: TFloatField
      FieldName = 'vale'
      currency = True
    end
    object cdsControledata_vale: TDateField
      FieldName = 'data_vale'
    end
    object cdsControleFaltaPagar: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FaltaPagar'
      Calculated = True
    end
    object cdsControlearquivado: TWideStringField
      FieldName = 'arquivado'
      Size = 1
    end
  end
  object cdsLKProduto: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      'select idproduto, descricao from tbproduto order by descricao')
    Params = <>
    Left = 528
    Top = 496
    object cdsLKProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object cdsLKProdutodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 80
    end
  end
  object dsLKStatus: TDataSource
    DataSet = cdsStatus
    Left = 336
    Top = 496
  end
  object cdsControlePg: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'select * from tbsistema_pagamento where idtbsistema = :idtbsiste' +
        'ma')
    Params = <
      item
        DataType = ftInteger
        Name = 'idtbsistema'
        ParamType = ptInput
      end>
    Left = 616
    Top = 488
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idtbsistema'
        ParamType = ptInput
      end>
    object cdsControlePgid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsControlePgidtbsistema: TIntegerField
      FieldName = 'idtbsistema'
      Required = True
    end
    object cdsControlePgdata: TDateField
      FieldName = 'data'
    end
    object cdsControlePgvalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
    object cdsControlePgusuario: TWideStringField
      FieldName = 'usuario'
      Size = 45
    end
  end
end
