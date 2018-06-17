unit pap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DB, ADODB, Buttons, XPMan;

type
  TfLogin = class(TForm)
    edit1: TEdit;
    Edit2: TEdit;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1ID_Utilizador: TAutoIncField;
    ADOTable1username: TWideStringField;
    ADOTable1pass: TWideStringField;
    ADOTable1Admin: TBooleanField;
    Image1: TImage;
    Panel1: TPanel;
    Image7: TImage;
    Panel2: TPanel;
    Image4: TImage;
    Image5: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3Click(Sender: TObject);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4click(Sender: TObject);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  x:string;
  fLogin: TfLogin;

implementation

uses Unit1, Unit7;

{$R *.dfm}

procedure TfLogin.Image2Click(Sender: TObject);

begin

         FMenu.ShowModal;


end;

procedure TfLogin.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin


 Image4.SendToBack;
 Image5.BringToFront;
end;

procedure TfLogin.Image3Click(Sender: TObject);
begin
fmenu.showmodal;
end;

procedure TfLogin.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image5.SendToBack;
 Image4.BringToFront
end;

procedure TfLogin.Image4click(Sender: TObject);
Var enc:boolean;


begin
enc:=False;
ADotable1.First;
Repeat
     if (Edit1.Text = ADOTable1username.Text) AND (Edit2.Text = ADOTable1pass.text) then
       Begin
         flogin.Hide;
         FMenu.ShowModal;
         Enc:=True;


       End;
Adotable1.Next;
Until Adotable1.Eof;
If enc = False Then
       MessageDlg('Utilizador or Palavra Passe Incorrectos! Tente Novamente.', mtCustom, [mbOK], 0);




end;

procedure TfLogin.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image4.SendToBack;
 Image5.BringToFront
end;

procedure TfLogin.Button1Click(Sender: TObject);
begin
 fMenu.ShowModal;
end;

procedure TfLogin.Image7Click(Sender: TObject);
begin
halt;
end;

procedure TfLogin.FormShow(Sender: TObject);
begin
  edit1.text:='';
  edit2.text:='';

end;

end.
