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
    TabSheet1: TTabSheet;
    Button1: TButton;
    DBGrid1: TDBGrid;
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
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure EscondeTabsView;
    procedure Gravar;
  public
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses AlertaPonto.Alertas.Controller, AlertaPonto.Alertas.Model,
  AlertaPonto.Mensagens.Controller, AlertaPonto.Funcs.Controller,
  AlertaPonto.TimePicker.View;


procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  if PageControl1.ActivePage <> tsCriarAlerta then
  begin
    PageControl1.ActivePage := tsCriarAlerta;
    SplitView2.Open;
  end
  else
  begin
    SplitView2.Close;
    PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure TfrmPrincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(DBGrid1.DataSource.DataSet.RecNo) then
    DBGrid1.Canvas.Brush.Color := $00D0BCAE
  else
    DBGrid1.Canvas.Brush.Color := clWhite;

  if (gdSelected in State) then
  begin
    DBGrid1.Canvas.Brush.Color := $00C07D0E;
    DBGrid1.Canvas.Font.Color  := ClWhite;
  end;
end;

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

procedure TfrmPrincipal.Gravar;
const
  MsgDefault = 'Deseja Gravar esses horários para ';

    procedure EfetuaGravacao(Msg: String ; aDia: Integer; aPageControl: TPageControl; aTab: TTabSheet;
      aED1, aED2, aED3, aED4: TMaskEdit; Todos: Boolean);
    begin
      if aPageControl.ActivePage = aTab then
      begin
        if (Todos = True) then
        begin
          if (Mensagem(msgDefault+Msg, mtInformation, [mbyes, mbNo], 0)=mryes) then
            GravaHorariosTodos(dmAlertas.cdsAlertas, aED1.Text, aED2.Text, aED3.Text, aED4.Text)
        end
        else
          if (Mensagem(msgDefault+Msg, mtInformation, [mbyes, mbNo], 0)=mryes) then
            GravaHorario(aDia, dmAlertas.cdsAlertas, aED1.Text, aED2.Text, aED3.Text, aED4.Text);
      end;
    end;

begin
  EfetuaGravacao('TODOS os dias?', 0, PageControl2, tsTodos, edTDEntrada, edTDAlmoco, edTDRetorno, edTDSaida, True);
  EfetuaGravacao('toda Segunda-Feira?', 1, PageControl2, tsSegunda, edSGEntrada, edSGAlmoco, edSGRetorno,edSGSaida, False);
  EfetuaGravacao('toda Terça-Feira?', 2, PageControl2, tsTerca, edTCEntrada, edTCAlmoco, edTCRetorno, edTCSaida, False);
  EfetuaGravacao('toda Quarta-Feira?', 3, PageControl2, tsQuarta, edQTEntrada, edQTAlmoco, edQTRetorno, edQTSaida, False);
  EfetuaGravacao('toda Quinta-Feira?', 4, PageControl2, tsQuinta, edQNEntrada, edQNAlmoco, edQNRetorno, edQNSaida, False);
  EfetuaGravacao('toda Sexta-Feira?', 5, PageControl2, tsSexta, edSXEntrada, edSXAlmoco, edSXRetorno, edSXSaida, False);
  EfetuaGravacao('todo Sábado?', 6, PageControl2, tsSabado, edSBEntrada, edSBAlmoco, edSBRetorno, edSBSaida, False);
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
begin
  ValidaCamposVazios(Self, PageControl2.ActivePage);
  Gravar;
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
