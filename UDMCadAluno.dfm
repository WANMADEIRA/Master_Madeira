object DMCadAluno: TDMCadAluno
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 239
  Width = 412
  object CDSCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSProvider'
    AfterOpen = CDSCadastroAfterOpen
    BeforePost = CDSCadastroBeforePost
    OnNewRecord = CDSCadastroNewRecord
    Left = 48
    Top = 24
  end
  object DSProvider: TDataSetProvider
    DataSet = SQLDS
    Left = 144
    Top = 24
  end
  object SQLDS: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    Left = 232
    Top = 24
  end
  object SQLDDSEndereco: TSQLDataSet
    DataSource = DSLink
    Params = <>
    Left = 216
    Top = 128
  end
  object ClientDSEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = ClientDSEnderecoAfterOpen
    OnNewRecord = ClientDSEnderecoNewRecord
    Left = 120
    Top = 128
  end
  object DSLink: TDataSource
    DataSet = SQLDS
    Left = 312
    Top = 136
  end
end
