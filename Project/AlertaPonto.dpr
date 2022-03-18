program AlertaPonto;

uses
  Vcl.Forms,
  AlertaPonto.Principal.View in '..\View\AlertaPonto.Principal.View.pas' {frmPrincipal},
  AlertaPonto.Alertas.Controller in '..\Controller\AlertaPonto.Alertas.Controller.pas',
  AlertaPonto.Alertas.Model in '..\Model\AlertaPonto.Alertas.Model.pas' {dmAlertas: TDataModule},
  AlertaPonto.Janelas.Controller in '..\Controller\AlertaPonto.Janelas.Controller.pas',
  AlertaPonto.Principal.Controller in '..\Controller\AlertaPonto.Principal.Controller.pas',
  AlertaPonto.Mensagens.Controller in '..\Controller\AlertaPonto.Mensagens.Controller.pas',
  AlertaPonto.Funcs.Controller in '..\Controller\AlertaPonto.Funcs.Controller.pas',
  AlertaPonto.FormDlgPadrao.View in '..\View\Forms_Owner\AlertaPonto.FormDlgPadrao.View.pas' {frmDlgPadrao},
  AlertaPonto.TimePicker.View in '..\View\AlertaPonto.TimePicker.View.pas' {frmTimePicker};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmAlertas, dmAlertas);
  Application.Run;
end.
