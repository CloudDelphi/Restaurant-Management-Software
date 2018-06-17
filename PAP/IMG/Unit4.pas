unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls;

type
  TfConsultas = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1ID_Pedido: TAutoIncField;
    ADOTable1ID_mesas: TIntegerField;
    ADOTable1ID_Cliente: TIntegerField;
    ADOTable1Pago: TBooleanField;
    ADOTable1Preco: TIntegerField;
    ADOTable1Hora: TDateTimeField;
    ADOTable1Data: TDateTimeField;
    ADOTable1Total: TBCDField;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    ADOTable2ID_Mesas: TAutoIncField;
    ADOTable2NrMesa: TIntegerField;
    ADOTable2Lugares: TIntegerField;
    ADOTable2Sala: TIntegerField;
    ADOTable2Disponivel: TBooleanField;
    ADOTable2Imagen: TBlobField;
    ADOTable1NrMesa: TStringField;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    ADOTable3ID_Cliente: TAutoIncField;
    ADOTable3Nome: TWideStringField;
    ADOTable3Apelido: TWideStringField;
    ADOTable3Morada: TWideStringField;
    ADOTable3CodPostal: TWideStringField;
    ADOTable3DataNascimento: TDateTimeField;
    ADOTable3NIF: TWideStringField;
    ADOTable3Telemovel: TWideStringField;
    ADOTable1NomeCliente: TStringField;
    ADOTable1Apelido: TStringField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsultas: TfConsultas;

implementation

{$R *.dfm}

procedure TfConsultas.FormShow(Sender: TObject);
begin
ADOTable1.Active:=False;
ADOTable1.Active:=True;
end;

procedure TfConsultas.Button1Click(Sender: TObject);
begin
  if combobox1.ItemIndex=3 then
  begin
  ADOTable1.Filtered:= false;
  ADOTable1.Filtered:= true;
  ADOTable1.Filter:='Total='+Edit1.text;
  end;

 if combobox1.ItemIndex=0 then
  begin
  ADOTable1.Filtered:= false;
ADOTable1.Filtered:= true;
ADOTable1.Filter:= 'ID_Pedido='+Edit1.text;
  end;

  if combobox1.ItemIndex=1 then
  begin
ADOTable1.Filtered:= true;        
ADOTable2.Filtered:= true;
ADOTable2.Filter:= 'NrMesa=' + quotedStr(edit1.Text);
ADOTable1.Filter:= 'ID_mesas='+ quotedStr(ADOTable2ID_mesas.AsString);

  end;

  if combobox1.ItemIndex=2 then
  begin
  ADOTable1.Filtered:= false;
  ADOTable1.Filtered:= true;
ADOTable1.Filter:= 'Data='+Edit1.text;
  end;

   if combobox1.ItemIndex=4 then
  begin

  ADOTable1.Filtered:= true;
  ADOTable3.Filtered:= true;
ADOTable3.Filter:= 'Apelido='+quotedStr(Edit1.text);
ADOTable1.Filter:= 'ID_Cliente='+ quotedStr(ADOTable3ID_Cliente.AsString);
  end;

end;

procedure TfConsultas.Button2Click(Sender: TObject);
begin
ADOtable1.Filtered:=false;
ADOtable2.Filtered:=false;
ADOtable3.Filtered:=false;
end;

end.
