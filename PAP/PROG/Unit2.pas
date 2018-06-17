unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, jpeg, Mask, DBCtrls, DB,
  ADODB, Grids, DBGrids;

type
  TfBackOffice = class(TForm)
    iMesas1: TImage;
    iMesas2: TImage;
    iProdutos1: TImage;
    iProdutos2: TImage;
    iSubfamilia1: TImage;
    iSubfamilia2: TImage;
    iFamilias1: TImage;
    iFamilias2: TImage;
    iUtilizadores1: TImage;
    iUtilizadores2: TImage;
    iClientes1: TImage;
    iClientes2: TImage;
    ADOmesas: TDataSource;
    ADOTable1: TADOTable;
    Label4: TLabel;
    DSprodutos: TDataSource;
    ADOprodutos: TADOTable;
    ADOprodutosID_Produto: TAutoIncField;
    ADOprodutosID_SubFamilia: TIntegerField;
    ADOprodutosNome: TWideStringField;
    ADOprodutosPreco: TBCDField;
    ADOfamilias: TADOTable;
    ADOfamiliasID_Familia: TAutoIncField;
    ADOfamiliasNome: TWideStringField;
    DSFamilias: TDataSource;
    DSsubfamilias: TDataSource;
    ADOsubfamilias: TADOTable;
    ADOsubfamiliasID_SubFamilia: TAutoIncField;
    ADOsubfamiliasID_Familia: TIntegerField;
    ADOsubfamiliasNome: TWideStringField;
    pagecontrol: TPageControl;
    mesas: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    utilizadores: TTabSheet;
    produtos: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    subfamilias: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator4: TDBNavigator;
    DBGrid4: TDBGrid;
    familias: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator3: TDBNavigator;
    DBGrid3: TDBGrid;
    clientes: TTabSheet;
    DSutilizadores: TDataSource;
    ADOutilizadores: TADOTable;
    ADOutilizadoresID_Utilizador: TAutoIncField;
    ADOutilizadoresusername: TWideStringField;
    ADOutilizadorespass: TWideStringField;
    ADOutilizadoresAdmin: TBooleanField;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label17: TLabel;
    DBGrid6: TDBGrid;
    DBNavigator6: TDBNavigator;
    DSclientes: TDataSource;
    ADOclientes: TADOTable;
    ADOclientesID_Cliente: TAutoIncField;
    ADOclientesNome: TWideStringField;
    ADOclientesApelido: TWideStringField;
    ADOclientesMorada: TWideStringField;
    ADOclientesCodPostal: TWideStringField;
    ADOclientesDataNascimento: TDateTimeField;
    ADOclientesNIF: TWideStringField;
    ADOclientesTelemovel: TWideStringField;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBNavigator7: TDBNavigator;
    DBGrid7: TDBGrid;
    DBNavigator8: TDBNavigator;
    DBNavigator9: TDBNavigator;
    DBNavigator10: TDBNavigator;
    DBNavigator11: TDBNavigator;
    DBNavigator12: TDBNavigator;
    DBNavigator13: TDBNavigator;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    ADOTable1ID_Mesas: TAutoIncField;
    ADOTable1NrMesa: TIntegerField;
    ADOTable1Lugares: TIntegerField;
    ADOTable1Disponivel: TBooleanField;
    ADOTable1Imagen: TBlobField;
    procedure iMesas1Click(Sender: TObject);
    procedure iMesas2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iProdutos2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iSubfamilia2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iFamilias2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iUtilizadores2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iClientes2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iClientes1Click(Sender: TObject);
    procedure iFamilias1Click(Sender: TObject);
    procedure iSubfamilia1Click(Sender: TObject);
    procedure iUtilizadores1Click(Sender: TObject);
    procedure iProdutos1Click(Sender: TObject);
    procedure mesasEnter(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure produtosEnter(Sender: TObject);
    procedure subfamiliasEnter(Sender: TObject);
    procedure familiasEnter(Sender: TObject);
    procedure utilizadoresEnter(Sender: TObject);
    procedure clientesEnter(Sender: TObject);
    procedure DBNavigator8Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator9Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator10Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator11Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator12Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator13Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBackOffice: TfBackOffice;

implementation

uses Unit4;

{$R *.dfm}

procedure TfBackOffice.iMesas1Click(Sender: TObject);
begin
PageControl.ActivePage := mesas;
end;
                                                           
procedure TfBackOffice.iMesas2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
iMesas2.SendToBack;
iMesas1.BringToFront;

end;

procedure TfBackOffice.iProdutos2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
iProdutos2.SendToBack;
iProdutos1.BringToFront;
end;

procedure TfBackOffice.iSubfamilia2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
iSubfamilia2.SendToBack;
iSubfamilia1.BringToFront;
end;

procedure TfBackOffice.iFamilias2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
iFamilias2.SendToBack;
iFamilias1.BringToFront;
end;

procedure TfBackOffice.iUtilizadores2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
iUtilizadores2.SendToBack;
iUtilizadores1.BringToFront;
end;

procedure TfBackOffice.iClientes2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
iClientes2.SendToBack;
iClientes1.BringToFront;
end;

procedure TfBackOffice.iClientes1Click(Sender: TObject);
begin
PageControl.ActivePage := clientes;
end;

procedure TfBackOffice.iFamilias1Click(Sender: TObject);
begin
PageControl.ActivePage := familias;
end;

procedure TfBackOffice.iSubfamilia1Click(Sender: TObject);
begin
PageControl.ActivePage := subfamilias;
end;

procedure TfBackOffice.iUtilizadores1Click(Sender: TObject);
begin
PageControl.ActivePage := utilizadores;
end;

procedure TfBackOffice.iProdutos1Click(Sender: TObject);
begin
PageControl.ActivePage := produtos;
end;

procedure TfBackOffice.mesasEnter(Sender: TObject);
begin
ADOtable1.Insert;
end;

procedure TfBackOffice.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
iMesas1.SendToBack;
iMesas2.BringToFront;
end;

procedure TfBackOffice.produtosEnter(Sender: TObject);
begin
ADOprodutos.insert;
end;

procedure TfBackOffice.subfamiliasEnter(Sender: TObject);
begin
ADOsubfamilias.Insert;
end;

procedure TfBackOffice.familiasEnter(Sender: TObject);
begin
ADOfamilias.Insert;
end;

procedure TfBackOffice.utilizadoresEnter(Sender: TObject);
begin
ADOutilizadores.insert;
end;

procedure TfBackOffice.clientesEnter(Sender: TObject);
begin
ADOclientes.Insert;

end;

procedure TfBackOffice.DBNavigator8Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Adotable1.active:=false;
  Adotable1.active:=true;

end;

procedure TfBackOffice.DBNavigator9Click(Sender: TObject;
  Button: TNavigateBtn);
begin
ADOutilizadores.Active:=false;
ADOutilizadores.Active:=true;
end;

procedure TfBackOffice.DBNavigator10Click(Sender: TObject;
  Button: TNavigateBtn);
begin
ADOprodutos.ReSync([]);

end;

procedure TfBackOffice.DBNavigator11Click(Sender: TObject;
  Button: TNavigateBtn);
begin
ADOsubfamilias.active:=false;
ADOsubfamilias.active:=true;

end;

procedure TfBackOffice.DBNavigator12Click(Sender: TObject;
  Button: TNavigateBtn);
begin
ADOfamilias.active:=false;
ADOfamilias.active:=true;
end;

procedure TfBackOffice.DBNavigator13Click(Sender: TObject;
  Button: TNavigateBtn);
begin
ADOclientes.active:=false;
ADOclientes.active:=true;
end;

procedure TfBackOffice.FormShow(Sender: TObject);
begin
PageControl.ActivePage := TabSheet1;
end;

procedure TfBackOffice.Panel4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
iFamilias1.SendToBack;
iFamilias2.BringToFront;
end;

procedure TfBackOffice.Panel3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
iSubfamilia1.SendToBack;
iSubfamilia2.BringToFront;
end;

procedure TfBackOffice.Panel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

iProdutos1.SendToBack;
iProdutos2.BringToFront;
end;

procedure TfBackOffice.Panel6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

iClientes1.SendToBack;
iClientes2.BringToFront;
end;

procedure TfBackOffice.Panel5MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

iUtilizadores1.SendToBack;
iUtilizadores2.BringToFront;
end;

end.
