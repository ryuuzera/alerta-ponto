unit AlertaPonto.Janelas.Controller;

interface

uses
  Classes, Windows, Messages, SysUtils, Variants, Graphics,
  Controls, Forms,Dialogs, ComCtrls, WinXCtrls,ExtCtrls;

type
  TJanelas = Class
  private
  public
  class procedure Arrastar(aForm: TForm);
  end;

implementation

{ TJanelas }

class procedure TJanelas.Arrastar(aForm: TForm);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  aForm.Perform(wm_SysCommand, sc_DragMove, 0);
end;


end.
