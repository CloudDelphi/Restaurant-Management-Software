object fConsultas: TfConsultas
  Left = 490
  Top = 222
  Width = 845
  Height = 646
  Caption = 'Consultar'
  Color = 5061417
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 24
    Width = 93
    Height = 18
    Caption = 'Filtrar por:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 64
    Width = 785
    Height = 529
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pago'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NrMesa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Apelido'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 24
    Width = 97
    Height = 21
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    Items.Strings = (
      'N'#186' Pedido'
      'Mesa'
      'Dia'
      'Total'
      'Apelido')
  end
  object Edit1: TEdit
    Left = 336
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 472
    Top = 24
    Width = 73
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 4
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Pedidos'
    object ADOTable1ID_Pedido: TAutoIncField
      FieldName = 'ID_Pedido'
      ReadOnly = True
    end
    object ADOTable1ID_mesas: TIntegerField
      FieldName = 'ID_mesas'
    end
    object ADOTable1ID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object ADOTable1Pago: TBooleanField
      FieldName = 'Pago'
    end
    object ADOTable1NrMesa: TStringField
      FieldKind = fkLookup
      FieldName = 'NrMesa'
      LookupDataSet = ADOTable2
      LookupKeyFields = 'ID_Mesas'
      LookupResultField = 'NrMesa'
      KeyFields = 'ID_mesas'
      Lookup = True
    end
    object ADOTable1Preco: TIntegerField
      FieldName = 'Preco'
    end
    object ADOTable1Hora: TDateTimeField
      FieldName = 'Hora'
    end
    object ADOTable1Data: TDateTimeField
      FieldName = 'Data'
    end
    object ADOTable1Total: TBCDField
      FieldName = 'Total'
      Precision = 19
    end
    object ADOTable1NomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome Cliente'
      LookupDataSet = ADOTable3
      LookupKeyFields = 'ID_Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'ID_Cliente'
      Size = 10
      Lookup = True
    end
    object ADOTable1Apelido: TStringField
      FieldKind = fkLookup
      FieldName = 'Apelido'
      LookupDataSet = ADOTable3
      LookupKeyFields = 'ID_Cliente'
      LookupResultField = 'Apelido'
      KeyFields = 'ID_Cliente'
      Size = 10
      Lookup = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Top = 72
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Mesas'
    Top = 96
    object ADOTable2ID_Mesas: TAutoIncField
      FieldName = 'ID_Mesas'
      ReadOnly = True
    end
    object ADOTable2NrMesa: TIntegerField
      FieldName = 'NrMesa'
    end
    object ADOTable2Lugares: TIntegerField
      FieldName = 'Lugares'
    end
    object ADOTable2Sala: TIntegerField
      FieldName = 'Sala'
    end
    object ADOTable2Disponivel: TBooleanField
      FieldName = 'Disponivel'
    end
    object ADOTable2Imagen: TBlobField
      FieldName = 'Imagen'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Top = 136
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Clientes'
    Top = 160
    object ADOTable3ID_Cliente: TAutoIncField
      FieldName = 'ID_Cliente'
      ReadOnly = True
    end
    object ADOTable3Nome: TWideStringField
      FieldName = 'Nome'
    end
    object ADOTable3Apelido: TWideStringField
      FieldName = 'Apelido'
    end
    object ADOTable3Morada: TWideStringField
      FieldName = 'Morada'
      Size = 100
    end
    object ADOTable3CodPostal: TWideStringField
      FieldName = 'CodPostal'
    end
    object ADOTable3DataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object ADOTable3NIF: TWideStringField
      FieldName = 'NIF'
      Size = 12
    end
    object ADOTable3Telemovel: TWideStringField
      FieldName = 'Telemovel'
      Size = 9
    end
  end
end
