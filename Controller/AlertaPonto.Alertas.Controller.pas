unit AlertaPonto.Alertas.Controller;

interface

uses
  Vcl.Dialogs;

type
  TAlerta = Class
    Private
    Public
    class procedure Alerta;
  End;

implementation

{ TAlerta }

class procedure TAlerta.Alerta;
begin
  ShowMessage('Teste');
end;

end.
