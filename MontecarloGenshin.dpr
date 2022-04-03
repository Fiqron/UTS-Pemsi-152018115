program MontecarloGenshin;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {FormFrekuensi},
  Unit3 in 'Unit3.pas' {FForcast};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormFrekuensi, FormFrekuensi);
  Application.CreateForm(TFForcast, FForcast);
  Application.Run;
end.
