object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object cdsAlertas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 16
  end
  object dsAlertas: TDataSource
    DataSet = cdsAlertas
    Left = 112
    Top = 56
  end
end
