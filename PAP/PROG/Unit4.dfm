object Fapagarmesas: TFapagarmesas
  Left = 376
  Top = 163
  BorderStyle = bsDialog
  Caption = 'Apagar Mesas'
  ClientHeight = 323
  ClientWidth = 474
  Color = 4010017
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 16
    Width = 425
    Height = 249
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 280
    Width = 420
    Height = 33
    DataSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Mesas'
    Left = 24
    object ADOTable1ID_Mesas: TAutoIncField
      FieldName = 'ID_Mesas'
      ReadOnly = True
    end
    object ADOTable1Lugares: TIntegerField
      FieldName = 'Lugares'
    end
    object ADOTable1Sala: TIntegerField
      FieldName = 'Sala'
    end
    object ADOTable1Disponivel: TBooleanField
      FieldName = 'Disponivel'
    end
    object ADOTable1Imagen: TBlobField
      FieldName = 'Imagen'
    end
  end
end
