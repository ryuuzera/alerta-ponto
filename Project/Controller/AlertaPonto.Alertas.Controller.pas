unit AlertaPonto.Alertas.Controller;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

implementation

Type
  TAlerta = class(TObject)
    private
    public
      class procedure AlertaAntesEvento;
    constructor Create;
  end;

var
  Alerta: TAlerta;
{ Alerta }

class procedure TAlerta.AlertaAntesEvento;
begin
  ShowMessage('teste');
end;

constructor TAlerta.Create;
begin
  inherited;
end;

end.
