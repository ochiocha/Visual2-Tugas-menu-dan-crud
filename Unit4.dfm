object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 284
  Width = 367
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\User\Documents\SEMESTER 4\VISUAL2\Tugas delphi\libmysql' +
      '.dll'
    Left = 40
    Top = 32
  end
  object ds1: TDataSource
    DataSet = zqry
    Left = 80
    Top = 88
  end
  object zqry: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 80
    Top = 32
  end
end
