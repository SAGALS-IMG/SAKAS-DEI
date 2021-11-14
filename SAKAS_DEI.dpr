program SAKAS_DEI;

uses
  Vcl.Forms,
  main in 'main.pas' {Form_Main},
  SelShape in 'SelShape.pas',
  Unit_ABOUT in 'Unit_ABOUT.pas' {AboutBox},
  Unit_LP in 'Unit_LP.pas' {Form_LP},
  Unit_PW in 'Unit_PW.pas' {PW},
  FFTUnit in 'FFTUnit.pas',
  Unit_SAKAS in 'Unit_SAKAS.pas' {Form_SAKAS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Main, Form_Main);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TPW, PW);
  Application.CreateForm(TForm_SAKAS, Form_SAKAS);
  Application.CreateForm(TForm_SAKAS, Form_SAKAS);
  Application.Run;
end.
