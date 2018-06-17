unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, DBCtrls, dbcgrids, DB, ADODB,
  Grids, DBGrids;

type
  TfMesas = class(TForm)
    ADOMESAS: TADOTable;
    ADOMESASID_Mesas: TAutoIncField;
    ADOMESASLugares: TIntegerField;
    ADOMESASSala: TIntegerField;
    ADOMESASDisponivel: TBooleanField;
    DSMEsas: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    ADOMESASImagen: TBlobField;
    Button1: TButton;
    DBImage1: TDBImage;
    DBText1: TDBText;
    ADOMESASNrMesa: TIntegerField;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMesas: TfMesas;

implementation

uses Unit6;

{$R *.dfm}

procedure TfMesas.Button1Click(Sender: TObject);
begin
Adomesas.close;Adomesas.Open;
Adomesas.First;
Repeat
 If AdomesasDisponivel.AsBoolean = True Then
  Begin
    Adomesas.edit;
    AdomesasImagen.LoadFromFile('C:\vicente\PAP\IMG\BmesaL.bmp');
    Adomesas.Post;
  End
  Else
    Begin
      Adomesas.edit;
    AdomesasImagen.LoadFromFile('C:\vicente\PAP\IMG\BmesaO.bmp');
    Adomesas.Post;
    End;
    Adomesas.next
Until Adomesas.Eof;
end;

procedure TfMesas.DBImage1Click(Sender: TObject);
begin
Fpontovenda.Label3.Caption:= Inttostr(ADOMESASNrMesa.AsInteger);
Fpontovenda.Label6.Caption:= Inttostr(ADOMESASId_Mesas.AsInteger);
Adomesas.Edit;
AdomesasDisponivel.AsBoolean:=False;
Adomesas.Post;
//Adomesas.Close;
//Adomesas.Open;
DBCTRLGrid1.Repaint;
Fpontovenda.ADOpedidosprodutos.Filtered:=False;
Fpontovenda.ADOpedidos.Filtered:=False;
Fpontovenda.ADOpedidos.Refresh;
fpontovenda.showmodal;

Adomesas.Close;Adomesas.Open;
fmesas.Button1Click(Sender);
DBCTRLGrid1.Repaint;
end;


end.
