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
  procedure MouseHoverIcon(aImg: TImage);
  procedure MouseLeaveIcon(aImg: TImage);

  const
    COR_BOTAO = $00C07D0E;
    COR_BOTAO_HOVER = $00B4760E;
    Menu: TArray<String> = ['Home','Alertas','Grid'];

implementation

uses
  Vcl.Mask, AlertaPonto.Principal.Model;

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
    if (aForm.Components[i].ClassName = 'TImage') and ((aForm.Components[i].Tag = 10) or (aForm.Components[i].Tag = 11))  then
      TImage(aForm.Components[i]).Cursor := crHandPoint;
    if (aForm.Components[i].ClassName = 'TBitBtn') and (aForm.Components[i].Tag = 10) then
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

procedure MouseHoverIcon(aImg: TImage);
var
  Img: TResourceStream;
begin
  try
    if Pos(Menu[0], aImg.Name) > 0 then
      Img := TResourceStream.Create(HInstance, 'home_hover', RT_RCDATA);
    if Pos(Menu[1], aImg.Name) > 0 then
      Img := TResourceStream.Create(HInstance, 'alarme_hover', RT_RCDATA);
    if Pos(Menu[2], aImg.Name) > 0 then
      Img := TResourceStream.Create(HInstance, 'calendar_hover', RT_RCDATA);

    aImg.Picture.LoadFromStream(Img);

  finally
    Img.Free;
  end;
end;

procedure MouseLeaveIcon(aImg: TImage);
var
  Img: TResourceStream;
begin
  try
    if Pos(Menu[0], aImg.Name) > 0 then
      Img := TResourceStream.Create(HInstance, 'home', RT_RCDATA);
    if Pos(Menu[1], aImg.Name) > 0 then
      Img := TResourceStream.Create(HInstance, 'alarme', RT_RCDATA);
    if Pos(Menu[2], aImg.Name) > 0 then
      Img := TResourceStream.Create(HInstance, 'calendar', RT_RCDATA);

    aImg.Picture.LoadFromStream(Img);

  finally
    Img.Free;
  end;
end;


end.
