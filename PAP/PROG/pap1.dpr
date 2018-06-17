program pap1;

uses
  Forms,
  pap in 'pap.pas' {fLogin},
  Unit2 in 'Unit2.pas' {fBackOffice},
  Unit6 in 'Unit6.pas' {fPontoVenda},
  Unit7 in 'Unit7.pas' {fMenu},
  Unit3 in 'Unit3.pas' {fMesas},
  Unit1 in '..\IMG\Unit1.pas' {fPagar},
  Unit4 in '..\IMG\Unit4.pas' {fConsultas},
  Unit9 in 'Unit9.pas' {fClientes},
  Unit5 in '..\IMG\Unit5.pas' {fFatura};

{$R *.res}
 
begin
  Application.Initialize;
  Application.CreateForm(TfLogin, fLogin);
  Application.CreateForm(TfBackOffice, fBackOffice);
  Application.CreateForm(TfPontoVenda, fPontoVenda);
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfMesas, fMesas);
  Application.CreateForm(TfPagar, fPagar);
  Application.CreateForm(TfConsultas, fConsultas);
  Application.CreateForm(TfClientes, fClientes);
  Application.CreateForm(TfFatura, fFatura);
  Application.Run;
end.
