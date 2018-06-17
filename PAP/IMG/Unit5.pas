unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, ADODB, jpeg, ExtCtrls, StdCtrls;

type
  TfFatura = class(TForm)
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
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFatura: TfFatura;

implementation

uses Unit6, Unit1;

{$R *.dfm}

procedure TfFatura.FormShow(Sender: TObject);
begin
repeat
adotable1.Next;
until adotable1.Eof;
label1.caption:=fpontovenda.label3.caption;
label2.caption:=ADOTable1ID_Pedido.asString;
label3.caption:=fpagar.label11.caption+' €';
label4.caption:=fpagar.edit2.text+' €';
label5.caption:=fpagar.edit3.text+' €';
end;

end.
