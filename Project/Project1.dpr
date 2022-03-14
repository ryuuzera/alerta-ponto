program Project1;

uses
  Vcl.Forms,
  AlertaPonto.Principal.View in '..\AlertaPonto.Principal.View.pas' {Form1},
  AlertaPonto.Alertas.Controller in 'Controller\AlertaPonto.Alertas.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
