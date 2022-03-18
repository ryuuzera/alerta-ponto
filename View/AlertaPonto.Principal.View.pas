unit AlertaPonto.Principal.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, AlertaPonto.Janelas.Controller,
  Vcl.StdCtrls, Vcl.Mask, AlertaPonto.Principal.Controller, CommCtrl,
  Vcl.WinXPickers;

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
    pnTsTodos: TPanel;
    edTDEntrada: TMaskEdit;
    edTDAlmoco: TMaskEdit;
    edTDRetorno: TMaskEdit;
    edTDSaida: TMaskEdit;
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
    Panel2: TPanel;
    Shape2: TShape;
    edQTEntrada: TMaskEdit;
    edQTAlmoco: TMaskEdit;
    edQTRetorno: TMaskEdit;
    edQTSaida: TMaskEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Shape3: TShape;
    edQNEntrada: TMaskEdit;
    edQNAlmoco: TMaskEdit;
    edQNRetorno: TMaskEdit;
    edQNSaida: TMaskEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Shape4: TShape;
    edSBEntrada: TMaskEdit;
    edSBAlmoco: TMaskEdit;
    edSBRetorno: TMaskEdit;
    edSBSaida: TMaskEdit;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Shape5: TShape;
    edSGEntrada: TMaskEdit;
    edSGAlmoco: TMaskEdit;
    edSGRetorno: TMaskEdit;
    edSGSaida: TMaskEdit;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Shape6: TShape;
    edSXEntrada: TMaskEdit;
    edSXAlmoco: TMaskEdit;
    edSXRetorno: TMaskEdit;
    edSXSaida: TMaskEdit;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Shape7: TShape;
    edTCEntrada: TMaskEdit;
    edTCAlmoco: TMaskEdit;
    edTCRetorno: TMaskEdit;
    edTCSaida: TMaskEdit;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    pnEvents: TPanel;
    DBGrid1: TDBGrid;
    btSXEntrada: TBitBtn;
    btSXRetorno: TBitBtn;
    btSXAlmoco: TBitBtn;
    btSXSaida: TBitBtn;
    btTDEntrada: TBitBtn;
    btTDRetorno: TBitBtn;
    btTDSaida: TBitBtn;
    btTDAlmoco: TBitBtn;
    btQTEntrada: TBitBtn;
    btQTRetorno: TBitBtn;
    btQTSaida: TBitBtn;
    btQTAlmoco: TBitBtn;
    btQNEntrada: TBitBtn;
    btQNRetorno: TBitBtn;
    btQNSaida: TBitBtn;
    btQNAlmoco: TBitBtn;
    btTCEntrada: TBitBtn;
    btTCRetorno: TBitBtn;
    btTCSaida: TBitBtn;
    btTCAlmoco: TBitBtn;
    btSGEntrada: TBitBtn;
    btSGRetorno: TBitBtn;
    btSGSaida: TBitBtn;
    btSGAlmoco: TBitBtn;
    btSBAlmoco: TBitBtn;
    btSBEntrada: TBitBtn;
    btSBRetorno: TBitBtn;
    btSBSaida: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
    procedure pnEventsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnEventsMouseLeave(Sender: TObject);
    procedure pnGravarClick(Sender: TObject);
    procedure pnEventsClick(Sender: TObject);
  private
    procedure EscondeTabsView;
  public
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses AlertaPonto.Alertas.Controller, AlertaPonto.Alertas.Model,
  AlertaPonto.Mensagens.Controller, AlertaPonto.Funcs.Controller,
  AlertaPonto.TimePicker.View;


procedure TfrmPrincipal.EscondeTabsView;
begin
  EscondeTabs(PageControl1);
  EscondeTabs(PageControl2);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  EscondeTabsView;
  AlteraCursorBotoes(Self);
  AtribuiEventosMouse(Self);
  MascaraHoraEdits(Self);
  AtribuiEventosClick(Self);
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

procedure TfrmPrincipal.pnEventsClick(Sender: TObject);
begin
  OnClickBitBtn(Self, Sender);
end;

procedure TfrmPrincipal.pnEventsMouseLeave(Sender: TObject);
begin
  MouseLeaveColor(TPanel(Sender));
end;

procedure TfrmPrincipal.pnEventsMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  MouseHoverColor(TPanel(Sender));
end;

procedure TfrmPrincipal.pnGravarClick(Sender: TObject);
const
  MsgTodos = 'Deseja Gravar esses horários para TODOS os dias?';
  MsgDefault = 'Deseja Gravar esses horários para ';
begin
  ValidaCamposVazios(Self, PageControl2.ActivePage);
  if PageControl2.ActivePage = tsTodos then
  begin
    if (Mensagem(msgTodos, mtInformation, [mbyes, mbNo], 0)=mryes) then
      GravaHorariosTodos(dmAlertas.cdsAlertas, edTDEntrada.Text, edTDAlmoco.Text, edTDRetorno.Text, edTDSaida.Text);
  end;
  if PageControl2.ActivePage = tsSegunda then
  begin
    if (Mensagem(msgDefault+'toda Segunda-Feira?', mtInformation, [mbyes, mbNo], 0)=mryes) then
      GravaHorario(1, dmAlertas.cdsAlertas, edSGEntrada.Text, edSGAlmoco.Text, edSGRetorno.Text, edSGSaida.Text);
  end;
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
