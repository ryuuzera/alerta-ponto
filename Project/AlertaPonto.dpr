program AlertaPonto;

uses
  Vcl.Forms,
  AlertaPonto.Principal.View in '..\View\AlertaPonto.Principal.View.pas' {frmPrincipal},
  AlertaPonto.Alertas.Controller in '..\Controller\AlertaPonto.Alertas.Controller.pas',
  AlertaPonto.Alertas.Model in '..\Model\AlertaPonto.Alertas.Model.pas' {DataModule1: TDataModule},
  AlertaPonto.Janelas.Controller in '..\Controller\AlertaPonto.Janelas.Controller.pas',
  AlertaPonto.Principal.Controller in '..\Controller\AlertaPonto.Principal.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
