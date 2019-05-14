object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 150
  Width = 472
  object con: TFDConnection
    Params.Strings = (
      'Database=C:\Bancos\bdlembrete.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object fdTrans: TFDTransaction
    Connection = con
    Left = 32
    Top = 72
  end
  object cursor: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 88
    Top = 16
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 376
    Top = 16
  end
  object fdqry1: TFDQuery
    Active = True
    Connection = con
    SQL.Strings = (
      'select * from versao')
    Left = 216
    Top = 32
  end
end
