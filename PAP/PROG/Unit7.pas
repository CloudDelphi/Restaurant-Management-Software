unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, DB, ADODB;

type
  TfMenu = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Image2: TImage;
    Image3: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Panel4: TPanel;
    Image8: TImage;
    Image9: TImage;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1ID_Utilizador: TAutoIncField;
    ADOTable1username: TWideStringField;
    ADOTable1pass: TWideStringField;
    ADOTable1Admin: TBooleanField;
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses Unit6, Unit2, Unit3, Unit4, pap;

{$R *.dfm}

procedure TfMenu.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image3.SendToBack;
Image2.BringToFront;
end;

procedure TfMenu.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image2.SendToBack;
Image3.BringToFront;
end;

procedure TfMenu.Image2Click(Sender: TObject);
begin
halt;
end;

procedure TfMenu.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image5.SendToBack;
Image4.BringToFront;
end;

procedure TfMenu.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image4.SendToBack;
Image5.BringToFront;
end;

procedure TfMenu.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image7.SendToBack;
Image6.BringToFront;
end;

procedure TfMenu.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image6.SendToBack;
Image7.BringToFront;
end;

procedure TfMenu.Image4Click(Sender: TObject);
begin
fmesas.showmodal;

end;

procedure TfMenu.Image6Click(Sender: TObject);
begin
          if (flogin.ADOTable1Admin.Value = true) then
          fbackoffice.ShowModal;
          if (flogin.ADOTable1Admin.Value = false) then
          MessageDlg('Permissões Insuficientes', mtCustom, [mbOK], 0);
end;

procedure TfMenu.Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    image9.sendtoback;
    image8.BringToFront;
end;

procedure TfMenu.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image8.sendtoback;
  image9.BringToFront;
end;

procedure TfMenu.Image8Click(Sender: TObject);
begin
fconsultas.showmodal;
end;

end.
