unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, ADODB;

type
  TfProdutos = class(TForm)
    DSprodutos: TDataSource;
    ADOprodutos: TADOTable;
    ADOprodutosID_Produto: TAutoIncField;
    ADOprodutosID_SubFamilia: TIntegerField;
    ADOprodutosNome: TWideStringField;
    ADOprodutosPreco: TBCDField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    ADOfamilias: TADOTable;
    DSFamilias: TDataSource;
    DSsubfamilias: TDataSource;
    ADOsubfamilias: TADOTable;
    ADOfamiliasID_Familia: TAutoIncField;
    ADOfamiliasNome: TWideStringField;
    ADOsubfamiliasID_SubFamilia: TAutoIncField;
    ADOsubfamiliasID_Familia: TIntegerField;
    ADOsubfamiliasNome: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdutos: TfProdutos;

implementation

{$R *.dfm}

procedure TfProdutos.FormActivate(Sender: TObject);
begin
ADOprodutos.insert;
end;

end.
