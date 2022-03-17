unit AlertaPonto.Principal.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, AlertaPonto.Janelas.Controller,
  Vcl.StdCtrls, Vcl.Mask, AlertaPonto.Principal.Controller;

type
  TfrmPrincipal = class(TForm)
    pnFundo: TPanel;
    SplitView1: TSplitView;
    Panel1: TPanel;
    PageControl1: TPageControl;
    Panel4: TPanel;
    tsCriarAlerta: TTabSheet;
    Image1: TImage;
    Panel5: TPanel;
    SplitView2: TSplitView;
    Panel7: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    PageControl2: TPageControl;
    tsTodos: TTabSheet;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit2: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit3: TMaskEdit;
    Panel3: TPanel;
    Panel12: TPanel;
    Panel2: TPanel;
    Panel13: TPanel;
    tsSegunda: TTabSheet;
    tsTerca: TTabSheet;
    tsQuarta: TTabSheet;
    tsQuinta: TTabSheet;
    tsSexta: TTabSheet;
    tsSabado: TTabSheet;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
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
end;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin
  ControlaSplitView(SplitView1);
end;

procedure TfrmPrincipal.Panel10Click(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsSegunda);
end;

procedure TfrmPrincipal.Panel11Click(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsTodos);
end;

procedure TfrmPrincipal.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Arrastar(Self);
end;

procedure TfrmPrincipal.Panel9Click(Sender: TObject);
begin
  NavegaMenus(PageControl2, tsTerca);
end;

end.
