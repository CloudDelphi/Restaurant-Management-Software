unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TfClientes = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1ID_Cliente: TAutoIncField;
    ADOTable1Nome: TWideStringField;
    ADOTable1Apelido: TWideStringField;
    ADOTable1Morada: TWideStringField;
    ADOTable1CodPostal: TWideStringField;
    ADOTable1DataNascimento: TDateTimeField;
    ADOTable1NIF: TWideStringField;
    ADOTable1Telemovel: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientes: TfClientes;

implementation

uses Unit6, Unit1;

{$R *.dfm}

procedure TfClientes.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  fPontoVenda.ADOpedidos.edit;
fPontoVenda.ADOpedidosID_Cliente.Value := ADOtable1ID_Cliente.Value;
fPontoVenda.ADOpedidos.post;
end;

procedure TfClientes.Button1Click(Sender: TObject);
begin
fclientes.close;
//fpagar.showmodal;
end;

end.
