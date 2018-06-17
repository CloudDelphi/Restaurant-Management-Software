object fClientes: TfClientes
  Left = 712
  Top = 300
  Width = 363
  Height = 457
  Caption = 'Clientes'
  Color = 5061417
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 32
    Width = 214
    Height = 18
    Caption = 'Escolher o ID do Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 88
    Top = 64
    Width = 97
    Height = 21
    KeyField = 'ID_Cliente'
    ListField = 'ID_Cliente'
    ListSource = DataSource1
    TabOrder = 0
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 104
    Width = 320
    Height = 305
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Apelido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Morada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodPostal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataNascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telemovel'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 200
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 16
    Top = 16
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Clientes'
    Left = 48
    Top = 16
    object ADOTable1ID_Cliente: TAutoIncField
      FieldName = 'ID_Cliente'
      ReadOnly = True
    end
    object ADOTable1Nome: TWideStringField
      FieldName = 'Nome'
    end
    object ADOTable1Apelido: TWideStringField
      FieldName = 'Apelido'
    end
    object ADOTable1Morada: TWideStringField
      FieldName = 'Morada'
      Size = 100
    end
    object ADOTable1CodPostal: TWideStringField
      FieldName = 'CodPostal'
    end
    object ADOTable1DataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object ADOTable1NIF: TWideStringField
      FieldName = 'NIF'
      Size = 12
    end
    object ADOTable1Telemovel: TWideStringField
      FieldName = 'Telemovel'
      Size = 9
    end
  end
end
