unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, dbcgrids, ComCtrls, Mask, Buttons,
  jpeg, ExtCtrls, Grids, DBGrids;

type
  TfPontoVenda = class(TForm)
    DSprodutos: TDataSource;
    ADOprodutos: TADOTable;
    ADOsubfam: TADOTable;
    ADOfam: TADOTable;
    DSpedidos: TDataSource;
    DSfam: TDataSource;
    DSsubfam: TDataSource;
    ADOmesaspedidos: TADOTable;
    ADOpedidosprodutos: TADOTable;
    DSmesaspedidos: TDataSource;
    DataSource2: TDataSource;
    ADOpedidos: TADOTable;
    ADOfamID_Familia: TAutoIncField;
    ADOfamNome: TWideStringField;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText1: TDBText;
    ADOsubfamID_SubFamilia: TAutoIncField;
    ADOsubfamID_Familia: TIntegerField;
    ADOsubfamNome: TWideStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    DBCtrlGrid1: TDBCtrlGrid;
    Image2: TImage;
    DBText2: TDBText;
    Image4: TImage;
    Image7: TImage;
    Label1: TLabel;
    Panel4: TPanel;
    Image5: TImage;
    Image6: TImage;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    DBCtrlGrid3: TDBCtrlGrid;
    DBText3: TDBText;
    Image3: TImage;
    ADOmesaspedidosID_Mesas: TIntegerField;
    ADOmesaspedidosID_Pedidos: TIntegerField;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    DataSource1: TDataSource;
    ADOmesas: TADOTable;
    ADOmesasID_Mesas: TAutoIncField;
    ADOmesasNrMesa: TIntegerField;
    ADOmesasLugares: TIntegerField;
    ADOmesasSala: TIntegerField;
    ADOmesasDisponivel: TBooleanField;
    ADOmesasImagen: TBlobField;
    Label5: TLabel;
    ADOprodutosID_Produto: TAutoIncField;
    ADOprodutosID_SubFamilia: TIntegerField;
    ADOprodutosNome: TWideStringField;
    Label6: TLabel;
    ADOpedidosprodutosID_Produto: TIntegerField;
    ADOpedidosprodutosID_Pedido: TIntegerField;
    ADOpedidosprodutosQuantidade: TIntegerField;
    ADOpedidosID_Pedido: TAutoIncField;
    ADOpedidosID_mesas: TIntegerField;
    ADOpedidosID_Cliente: TIntegerField;
    ADOpedidosPago: TBooleanField;
    ADOpedidosPreco: TIntegerField;
    ADOpedidosHora: TDateTimeField;
    ADOpedidosData: TDateTimeField;
    ADOpedidosprodutosnome: TStringField;
    ADOprodutosPreco: TBCDField;
    ADOpedidosprodutosPreco: TBCDField;
    Label2: TLabel;
    ADOpedidosTotal: TBCDField;
    Label4: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    procedure DBCtrlGrid2Click(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image5Click(Sender: TObject);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure DBText3Click(Sender: TObject);
    procedure ADOpedidosAfterPost(DataSet: TDataSet);
    procedure ADOmesaspedidosAfterPost(DataSet: TDataSet);
    procedure ADOpedidosprodutosAfterPost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPontoVenda: TfPontoVenda;
  Total:real;
  mesa:longint;
  Ped:Longint;
implementation

uses Unit3, Unit1, Unit9;

{$R *.dfm}
procedure TfPontoVenda.DBCtrlGrid2Click(Sender: TObject);
begin
ADOsubfam.Filtered:= false;
ADOsubfam.Filtered:= true;
ADOsubfam.Filter:= 'ID_Familia='+quotedstr(ADOfamID_Familia.AsString)
end;

procedure TfPontoVenda.DBCtrlGrid1Click(Sender: TObject);
begin
ADOprodutos.Filtered:= false;
ADOprodutos.Filtered:= true;
ADOprodutos.Filter:= 'ID_subFamilia='+quotedstr(ADOsubfamID_subFamilia.AsString)
end;

procedure TfPontoVenda.Image6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
image6.SendToBack;
image5.BringToFront;
end;

procedure TfPontoVenda.Image5Click(Sender: TObject);
begin

fPontoVenda.Close;
end;

procedure TfPontoVenda.Panel4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
image6.BringtoFront;
image5.SendtoBack;
end;

procedure TfPontoVenda.Button1Click(Sender: TObject);
VAR total:currency;
begin
total := 0;
adopedidosprodutos.First;
while not adopedidosprodutos.Eof do
begin
total := total + (adopedidosprodutosPreco.Value*adopedidosprodutosquantidade.value);
adopedidosprodutos.Next;
end;

//AdopedidosProdutos.Close;Adopedidosprodutos.Open;
//AdoPedidosProdutos.first;
Adopedidos.Filtered:=false;
Adopedidos.Filtered:=true;
Adopedidos.Filter := 'Id_pedido = ' + QuotedStr(Label5.Caption);
Adopedidos.edit;

label2.Caption := currtostr(total);

ADOpedidosPago.AsBoolean := true;
Adopedidos.Post;
ADOpedidos.close;
Adopedidos.Open;
Fmesas.ADOMESAS.Edit;
Fmesas.ADOMESASdisponivel.AsBoolean := true;
Fmesas.ADOMESAS.Post;
Fmesas.ADOMESAS.Close;
Fmesas.Adomesas.Open;
ADOpedidos.Edit;
ADOpedidostotal.ascurrency:=strtocurr(label2.caption);
ADOpedidos.Post;

fClientes.showModal;
fpagar.showmodal;


end;

procedure TfPontoVenda.FormShow(Sender: TObject);
VAR enc:Boolean;
begin
 Enc:= False;
mesa:=0;
Ped:=0;
Adopedidos.close;AdoPedidos.Open;
AdoPedidos.First;Adopedidos.Refresh;
 While (NOT Adopedidos.Eof) Do
 Begin
  If (AdoPedidosPago.AsBoolean=False) and
      (ADOPedidosId_Mesas.AsInteger = StrToInt(Label6.Caption))  then
      begin
       Enc:=True;
       mesa:= StrToInt(Label6.Caption);
       Ped:=ADOPedidosId_pedido.AsInteger;
      End;
        AdoPedidos.next;
 End;
  If Enc=False Then
   Begin
    Adopedidos.Insert;
    mesa:=StrToInt(Label6.Caption);
    AdopedidosId_Mesas.asInteger:= StrToInt(Label6.Caption);
    ADOpedidospago.AsBoolean :=False;
    AdoPedidosHora.AsDateTime :=StrToTime(TimeTostr(now()));
    AdoPedidosData.AsDateTime :=StrToDate(DateTostr(now()));
    ADOpedidos.Post;
    ADOPedidos.Close;AdoPedidos.open;
    AdoPedidos.Refresh;
    Adopedidos.Active :=False;AdoPedidos.Active :=true;
    AdoPedidos.Last;
    Ped:=ADOPedidosId_pedido.AsInteger;
    Label5.caption:=IntToStr(ped);
   end;

   AdoPedidos.Filtered:=True;
   AdoPedidos.Filter := 'ID_Pedido = ' + Quotedstr(IntToStr(ped)) + ' and ' + 'Pago = '+quotedStr('False');
   ADOpedidosprodutos.Filtered := True;
   ADOpedidosprodutos.Filter := 'ID_pedido = ' + Quotedstr(IntToStr(ped));
   If ENC=True Then Label5.caption:=IntToStr(ped);


   total := 0;
adopedidosprodutos.First;
while not adopedidosprodutos.Eof do
begin
total := total + (adopedidosprodutosPreco.Value*adopedidosprodutosquantidade.value);
adopedidosprodutos.Next;
end;

label2.caption:=currtostr(total);

end;

procedure TfPontoVenda.Image3Click(Sender: TObject);

VAR enc:boolean;
begin
   {  enc:=false;
     ADOpedidosprodutos.First;
Repeat
if (AdopedidosprodutosId_pedido.AsInteger = AdopedidosId_pedido.AsInteger) AND
   (AdopedidosprodutosId_produto.AsInteger = AdoprodutosId_produto.AsInteger) Then
     begin
     Enc:=True;
     ADOpedidosprodutos.Edit;
     ADOpedidosprodutosQuantidade.AsInteger := ADOpedidosprodutosQuantidade.AsInteger+1;
     ADOpedidosprodutos.Post;
     end;

   ADOpedidosprodutos.Next;
Until (ADOpedidosprodutos.Eof) or (Enc=True);
If Enc = False Then
  Begin
      Adopedidosprodutos.Insert;
      AdopedidosprodutosId_pedido.AsInteger := AdopedidosId_pedido.AsInteger;
      AdopedidosprodutosId_produto.AsInteger := AdoprodutosId_produto.AsInteger;
      AdopedidosprodutosQuantidade.AsInteger :=AdopedidosprodutosQuantidade.AsInteger +1;
      Adopedidosprodutos.Post;
  End;        }
end;


procedure TfPontoVenda.DBText3Click(Sender: TObject);

VAR enc:boolean;

begin

Adopedidosprodutos.close; Adopedidosprodutos.open;
     enc:=false;
     ADOpedidosprodutos.First;
Repeat
if (AdopedidosprodutosId_pedido.AsInteger = Ped) AND
   (AdopedidosprodutosId_produto.AsInteger = AdoprodutosId_produto.AsInteger) AND
   (AdopedidosPago.AsBoolean=False) Then
     begin
     Enc:=True;
     ADOpedidosprodutos.Edit;
     ADOpedidosprodutosQuantidade.AsInteger := ADOpedidosprodutosQuantidade.AsInteger+1;
     ADOpedidosprodutos.Post;
     end;

   ADOpedidosprodutos.Next;
Until (ADOpedidosprodutos.Eof) or (Enc=true);
If Enc = False Then
  Begin
       Adopedidosprodutos.Insert;
      Adopedidosprodutospreco.AsCurrency:=ADOprodutospreco.AsCurrency;
      AdopedidosprodutosId_pedido.AsInteger := ped;
      AdopedidosprodutosId_produto.AsInteger := AdoprodutosId_produto.AsInteger;
      AdopedidosprodutosQuantidade.AsInteger :=AdopedidosprodutosQuantidade.AsInteger +1;
      Adopedidosprodutos.Post;
  End;

  total := 0;
adopedidosprodutos.First;
while not adopedidosprodutos.Eof do
begin
total := total + (adopedidosprodutosPreco.Value*adopedidosprodutosquantidade.value);
adopedidosprodutos.Next;
end;

label2.caption:=currtostr(total);


 { begin
  total:=0;
  adopedidosprodutos.first;
  while not adopedidosprodutos.Eof do
    begin
    //total:=total+()
    end;
  }
  //end;


  Adopedidos.Edit;
  Adopedidospreco.AsCurrency:=Total;
  adopedidos.Post;
end;


procedure TfPontoVenda.ADOpedidosAfterPost(DataSet: TDataSet);
begin
ADopedidos.Close;Adopedidos.Open;
end;

procedure TfPontoVenda.ADOmesaspedidosAfterPost(DataSet: TDataSet);
begin
Adomesaspedidos.Close;Adomesaspedidos.Open;
end;

procedure TfPontoVenda.ADOpedidosprodutosAfterPost(DataSet: TDataSet);
begin
AdoPedidosProdutos.Close;AdoPedidosProdutos.Open;
end;

procedure TfPontoVenda.Button2Click(Sender: TObject);
begin
fpagar.showmodal;
end;

end.
