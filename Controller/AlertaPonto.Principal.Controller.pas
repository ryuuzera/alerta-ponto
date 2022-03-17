unit AlertaPonto.Principal.Controller;

interface

uses
  Classes, Windows, Messages, SysUtils, Graphics,
  Controls, Forms,Dialogs, ComCtrls, WinXCtrls,ExtCtrls;

type
  TPrincipal = class
  private
  public
    class procedure EscondeTabs(aPageControl: TPageControl);
    class procedure ControlaSplitView(aSplitView: TSplitView);
    class procedure NavegaMenus(aPageControl: TPageControl; aPagina: Integer); overload;
    class procedure NavegaMenus(aPageControl: TPageControl; aPagina: TTabSheet); overload;
  published
  end;

implementation


{ TPrincipal }

class procedure TPrincipal.ControlaSplitView(aSplitView: TSplitView);
begin
  aSplitView.Opened := not aSplitView.Opened;
end;

class procedure TPrincipal.EscondeTabs(aPageControl: TPageControl);
var
  i: Integer;
begin
  for i := 0 to Pred(aPageControl.PageCount) do
  begin
    aPageControl.Pages[i].TabVisible := False;
  end;
  aPageControl.ActivePageIndex := 0;
end;


class procedure TPrincipal.NavegaMenus(aPageControl: TPageControl;
  aPagina: TTabSheet);
begin
  aPageControl.ActivePage := aPagina;
end;

class procedure TPrincipal.NavegaMenus(aPageControl: TPageControl;
  aPagina: Integer);
begin
  aPageControl.ActivePage := aPageControl.Pages[aPagina];
end;

end.
