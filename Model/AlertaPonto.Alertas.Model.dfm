object dmAlertas: TdmAlertas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object cdsAlertas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsProvider'
    Left = 32
    Top = 16
  end
  object dsAlertas: TDataSource
    DataSet = cdsAlertas
    Left = 88
    Top = 16
  end
  object dsProvider: TDataSetProvider
    DataSet = cdsAlertas
    Exported = False
    Left = 144
    Top = 24
  end
end
