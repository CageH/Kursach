object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 682
  Top = 104
  Height = 512
  Width = 600
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=bd.md' +
      'b;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sys' +
      'tem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pa' +
      'ssword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mod' +
      'e=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tr' +
      'ansactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create' +
      ' System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLED' +
      'B:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without R' +
      'eplica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object ADOGame: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 112
    Top = 8
  end
  object DataGame: TDataSource
    DataSet = ADOGame
    Left = 192
    Top = 8
  end
  object ADOPersonal: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Personal'
    Left = 112
    Top = 64
  end
  object DataPersonal: TDataSource
    DataSet = ADOPersonal
    Left = 192
    Top = 64
  end
  object ADOCompany: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Kompaniya'
    Left = 112
    Top = 120
  end
  object DataCompany: TDataSource
    DataSet = ADOCompany
    Left = 192
    Top = 120
  end
  object ADOWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 176
  end
  object DataWork: TDataSource
    DataSet = ADOWork
    Left = 192
    Top = 176
  end
  object ADOProdaj: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 232
  end
  object DataProdaj: TDataSource
    DataSet = ADOProdaj
    Left = 192
    Top = 232
  end
  object ADOGameF: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Game'
    Left = 112
    Top = 288
  end
  object DataGameF: TDataSource
    DataSet = ADOGameF
    Left = 192
    Top = 288
  end
  object DataChek: TDataSource
    DataSet = ADOChek
    Left = 192
    Top = 344
  end
  object ADOChek: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 344
  end
  object ADOChekRep: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Prodaj.'#1050#1086#1076', Prodaj.'#1062#1110#1085#1072', Prodaj.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', Game.'#1053#1072#1079#1074#1072', Ga' +
        'me.'#1062#1110#1085#1072
      'FROM Game INNER JOIN Prodaj ON Game.'#1050#1086#1076'_'#1075#1088#1080' = Prodaj.'#1050#1086#1076'_'#1075#1088#1080';')
    Left = 320
    Top = 8
  end
end
