unit AlertaPonto.Principal.Controller;

interface

uses
  Classes, Windows, Messages, SysUtils, Graphics,
  Controls, Forms,Dialogs, ComCtrls, WinXCtrls,ExtCtrls;

type
  TPrincipal = class
  private
  public
  published
  end;

  procedure EscondeTabs(aPageControl: TPageControl);
  procedure ControlaSplitView(aSplitView: TSplitView);
  procedure NavegaMenus(aPageControl: TPageControl; aPagina: Integer); overload;
  procedure NavegaMenus(aPageControl: TPageControl; aPagina: TTabSheet); overload;

implementation

procedure EscondeTabs(aPageControl: TPageControl);
var
  i: Integer;
begin
  for i := 0 to Pred(aPageControl.PageCount) do
  begin
    aPageControl.Pages[i].TabVisible := False;
  end;
  aPageControl.ActivePageIndex := 0;
end;

procedure ControlaSplitView(aSplitView: TSplitView);
begin
  aSplitView.Opened := not aSplitView.Opened;
end;

procedure NavegaMenus(aPageControl: TPageControl;
  aPagina: TTabSheet);
begin
  aPageControl.ActivePage := aPagina;
end;

procedure NavegaMenus(aPageControl: TPageControl;
  aPagina: Integer);
begin
  aPageControl.ActivePage := aPageControl.Pages[aPagina];
end;

end.
