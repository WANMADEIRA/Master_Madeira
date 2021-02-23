object DMPaiCadastro: TDMPaiCadastro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 360
  Width = 429
  object CDSCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSProvider'
    AfterPost = CDSCadastroAfterPost
    AfterDelete = CDSCadastroAfterDelete
    OnNewRecord = CDSCadastroNewRecord
    Left = 88
    Top = 56
  end
  object DSProvider: TDataSetProvider
    DataSet = SQLDS
    Left = 184
    Top = 56
  end
  object SQLDS: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    Left = 272
    Top = 56
  end
end
