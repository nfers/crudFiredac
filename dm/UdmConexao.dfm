object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object con: TFDConnection
    Params.Strings = (
      'Database=C:\Bancos\bdlembrete.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 80
    Top = 40
  end
end
