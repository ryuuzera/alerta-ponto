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
  procedure AlteraCursorBotoes(aForm: TForm); {Tag 10: Componentes que serão tratados como botões}

implementation

procedure Arrastar(aForm: TForm);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  aForm.Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure AlteraCursorBotoes(aForm: TForm);
var
  i: integer;
begin
  for i := 0 to Pred(aForm.ComponentCount) do
  begin
    if (aForm.Components[i].ClassName = 'TPanel') and (aForm.Components[i].Tag = 10) then
      TPanel(aForm.Components[i]).Cursor := crHandPoint;
    if (aForm.Components[i].ClassName = 'TImage') and (aForm.Components[i].Tag = 10) then
      TImage(aForm.Components[i]).Cursor := crHandPoint;
  end;
end;

end.
