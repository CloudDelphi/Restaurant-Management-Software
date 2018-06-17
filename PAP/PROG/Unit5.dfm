object fProdutos: TfProdutos
  Left = 330
  Top = 203
  Width = 886
  Height = 496
  Caption = 'Produtos'
  Color = 4010017
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 48
    Height = 18
    Caption = 'Nome'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 136
    Width = 46
    Height = 18
    Caption = 'Pre'#231'o'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 200
    Width = 85
    Height = 18
    Caption = 'Subfamilia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 96
    Width = 150
    Height = 21
    DataField = 'Nome'
    DataSource = DSprodutos
    TabOrder = 0
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 160
    Width = 150
    Height = 21
    DataField = 'Preco'
    DataSource = DSprodutos
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 224
    Width = 145
    Height = 21
    DataField = 'ID_SubFamilia'
    DataSource = DSprodutos
    KeyField = 'ID_SubFamilia'
    ListField = 'Nome'
    ListSource = DSsubfamilias
    TabOrder = 2
  end
  object DSprodutos: TDataSource
    DataSet = ADOprodutos
  end
  object ADOprodutos: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Produtos'
    Left = 24
    object ADOprodutosID_Produto: TAutoIncField
      FieldName = 'ID_Produto'
      ReadOnly = True
    end
    object ADOprodutosID_SubFamilia: TIntegerField
      FieldName = 'ID_SubFamilia'
    end
    object ADOprodutosNome: TWideStringField
      FieldName = 'Nome'
      Size = 255
    end
    object ADOprodutosPreco: TBCDField
      FieldName = 'Preco'
      Precision = 18
      Size = 0
    end
  end
  object ADOfamilias: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'Familia'
    Left = 80
    object ADOfamiliasID_Familia: TAutoIncField
      FieldName = 'ID_Familia'
      ReadOnly = True
    end
    object ADOfamiliasNome: TWideStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object DSFamilias: TDataSource
    Left = 56
  end
  object DSsubfamilias: TDataSource
    DataSet = ADOsubfamilias
    Left = 112
  end
  object ADOsubfamilias: TADOTable
    Active = True
    Connection = fLogin.ADOConnection1
    CursorType = ctStatic
    TableName = 'SubFamilia'
    Left = 136
    object ADOsubfamiliasID_SubFamilia: TAutoIncField
      FieldName = 'ID_SubFamilia'
      ReadOnly = True
    end
    object ADOsubfamiliasID_Familia: TIntegerField
      FieldName = 'ID_Familia'
    end
    object ADOsubfamiliasNome: TWideStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
end
