unit AlertaPonto.Principal.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, AlertaPonto.Janelas.Controller,
  Vcl.StdCtrls, Vcl.Mask, AlertaPonto.Principal.Controller, CommCtrl;

type
  TfrmPrincipal = class(TForm)
    pnFundo: TPanel;
    PageControl1: TPageControl;
    Panel4: TPanel;
    tsCriarAlerta: TTabSheet;
    Panel5: TPanel;
    PageControl2: TPageControl;
    tsTodos: TTabSheet;
    Panel3: TPanel;
    Panel12: TPanel;
    pnGravar: TPanel;
    tsSegunda: TTabSheet;
    tsTerca: TTabSheet;
    tsQuarta: TTabSheet;
    tsQuinta: TTabSheet;
    tsSexta: TTabSheet;
    tsSabado: TTabSheet;
    imgFechar: TImage;
    imgMinimizar: TImage;
    imgMenu: TImage;
    Panel6: TPanel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Shape1: TShape;
    SplitView2: TSplitView;
    pnSexta: TPanel;
    pnQuinta: TPanel;
    pnQuarta: TPanel;
    pnTerca: TPanel;
    pnSegunda: TPanel;
    pnTodosDias: TPanel;
    pnSabado: TPanel;
    SplitView1: TSplitView;
    Panel1: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure pnTodosDiasClick(Sender: TObject);
    procedure pnSegundaClick(Sender: TObject);
    procedure pnTercaClick(Sender: TObject);
    procedure pnQuartaClick(Sender: TObject);
    procedure pnQuintaClick(Sender: TObject);
    procedure pnSextaClick(Sender: TObject);
    procedure pnSabadoClick(Sender: TObject);
  private
    procedure EscondeTabsView;
  public
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses AlertaPonto.Alertas.Controller;

procedure TfrmPrincipal.EscondeTabsView;
begin
  EscondeTabs(PageControl1);
  EscondeTabs(PageControl2);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  EscondeTabsView;
  AlteraCursorBotoes(Self);
end;

procedure TfrmPrincipal.imgMenuClick(Sender: TObject);
begin
  ControlaSplitView(SplitView1);
end;

procedure TfrmPrincipal.pnSegundaClick(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsSegunda);
end;

procedure TfrmPrincipal.pnTodosDiasClick(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsTodos);
end;

procedure TfrmPrincipal.pnSabadoClick(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsSabado);
end;

procedure TfrmPrincipal.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Arrastar(Self);
end;

procedure TfrmPrincipal.pnQuintaClick(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsQuinta);
end;

procedure TfrmPrincipal.pnSextaClick(Sender: TObject);
begin
  NavegaMenus(PageControl2,tsSexta);
end;

procedure TfrmPrincipal.pnQuartaClick(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsQuarta);
end;

procedure TfrmPrincipal.pnTercaClick(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsTerca);
end;

end.
