unit AlertaPonto.Janelas.Controller;

interface

uses
  Classes, Windows, Messages, SysUtils, Variants, Graphics,
  Controls, Forms,Dialogs, ComCtrls, WinXCtrls,ExtCtrls;

type
  TJanelas = Class
  private
  public
  end;

  procedure Arrastar(aForm: TForm);

implementation

procedure Arrastar(aForm: TForm);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  aForm.Perform(wm_SysCommand, sc_DragMove, 0);
end;


end.
