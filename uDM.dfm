object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object dbConn: TFDConnection
    Params.Strings = (
      'Server=DESKTOP-U7QM62F'
      'Database=SINQIA'
      'DriverID=MSSQL'
      'User_Name=sa'
      'Password=N20atl20at')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 48
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 384
    Top = 48
  end
  object qryCadClientes: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'select * from dbo.clientes')
    Left = 112
    Top = 168
    object qryCadClientesid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryCadClientesCGC_CPF_Cliente: TStringField
      FieldName = 'CGC_CPF_Cliente'
      Origin = 'CGC_CPF_Cliente'
      Size = 14
    end
    object qryCadClientesNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 250
    end
    object qryCadClientesTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'Telefone'
    end
    object qryCadClientesEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Size = 250
    end
    object qryCadClientesBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Size = 250
    end
    object qryCadClientesComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Size = 250
    end
    object qryCadClientesE_mail: TStringField
      FieldName = 'E_mail'
      Origin = 'E_mail'
      Size = 250
    end
    object qryCadClientesCodigo_Cidade: TIntegerField
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
    end
    object qryCadClientesNome_Cidade: TStringField
      FieldName = 'Nome_Cidade'
      Origin = 'Nome_Cidade'
      Size = 250
    end
    object qryCadClientesEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Size = 2
    end
    object qryCadClientesCep: TStringField
      FieldName = 'Cep'
      Origin = 'Cep'
      Size = 9
    end
    object qryCadClientesPF_PJ: TStringField
      FieldName = 'PF_PJ'
      Origin = 'PF_PJ'
      Size = 1
    end
  end
  object dsCadClientes: TDataSource
    DataSet = qryCadClientes
    Left = 224
    Top = 168
  end
  object qryCadCidades: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'select * from dbo.cidades')
    Left = 112
    Top = 240
    object qryCadCidadescodigo_cidade: TFDAutoIncField
      FieldName = 'codigo_cidade'
      Origin = 'codigo_cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryCadCidadesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 200
    end
    object qryCadCidadesestado: TStringField
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
    object qryCadCidadescep_inicial: TIntegerField
      FieldName = 'cep_inicial'
      Origin = 'cep_inicial'
    end
    object qryCadCidadescep_final: TIntegerField
      FieldName = 'cep_final'
      Origin = 'cep_final'
    end
  end
  object dsCadCidades: TDataSource
    DataSet = qryCadCidades
    Left = 224
    Top = 240
  end
end
