unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TFapagarmesas = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1ID_Mesas: TAutoIncField;
    ADOTable1Lugares: TIntegerField;
    ADOTable1Sala: TIntegerField;
    ADOTable1Disponivel: TBooleanField;
    ADOTable1Imagen: TBlobField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fapagarmesas: TFapagarmesas;

implementation

{$R *.dfm}

end.
