program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Dovidka},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Unit3 in 'Unit3.pas' {MainForm},
  Unit4 in 'Unit4.pas' {Report_GameOtchet},
  Unit5 in 'Unit5.pas' {ChekReport},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDovidka, Dovidka);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TReport_GameOtchet, Report_GameOtchet);
  Application.CreateForm(TChekReport, ChekReport);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
