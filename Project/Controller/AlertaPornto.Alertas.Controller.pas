unit AlertaPornto.Alertas.Controller;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

implementation

Type
  TAlerta = class
    private
    public
    class procedure AlertaAntesEvento;
  end;

{ Alerta }

class procedure TAlerta.AlertaAntesEvento;
begin
 ShowMessage('teste');
end;

end.
