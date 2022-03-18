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
  procedure AlteraCursorBotoes(aForm: TForm);
  procedure MouseHoverColor(aPanel: TPanel);
  procedure MouseLeaveColor(aPanel: TPanel);
  procedure MascaraHoraEdits(aForm: TForm);

  const
    COR_BOTAO = $00C08000;
    COR_BOTAO_HOVER = $00AF6E00;

implementation

uses
  Vcl.Mask;

procedure Arrastar(aForm: TForm);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  aForm.Perform(wm_SysCommand, sc_DragMove, 0);
end;

{**************************************************************
| Tag 10 padrão para Component que será botão.                |
| Procedimento Verifica Todos os Componentes tratados         |
| como botão e atribui dinamicamente o cursor a ele.          |
**************************************************************}
procedure AlteraCursorBotoes(aForm: TForm);
var
  i: integer;
begin
  for i := 0 to Pred(aForm.ComponentCount) do
  begin
    if (aForm.Components[i].ClassName = 'TPanel') and (aForm.Components[i].Tag = 10) then
    begin
      TPanel(aForm.Components[i]).Cursor := crHandPoint;
    end;
    if (aForm.Components[i].ClassName = 'TImage') and (aForm.Components[i].Tag = 10) then
      TImage(aForm.Components[i]).Cursor := crHandPoint;
  end;
end;

{Eventos de troca de cor ao passar o mouse}
procedure MouseHoverColor(aPanel: TPanel);
begin
  aPanel.Color := COR_BOTAO_HOVER;
end;

procedure MouseLeaveColor(aPanel: TPanel);
begin
   aPanel.Color := COR_BOTAO;
end;

procedure MascaraHoraEdits(aForm: TForm);
var
  i: integer;
  Event: TComponent;
begin
  Event := aForm.FindComponent('pnEvents');
  for i := 0 to aForm.ComponentCount-1 do
  begin
    if aForm.Components[i].ClassName = 'TMaskEdit' then
    begin
      TMaskEdit(aForm.Components[i]).EditMask := '00:00;1;_';
      TMaskEdit(aForm.Components[i]).Alignment := taCenter;
    end;
  end;

end;
end.
