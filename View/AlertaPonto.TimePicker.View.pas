unit AlertaPonto.TimePicker.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AlertaPonto.FormDlgPadrao.View,
  Vcl.WinXPickers, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmTimePicker = class(TfrmDlgPadrao)
    TimePicker: TTimePicker;
    pnOK: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    procedure pnOKClick(Sender: TObject);
  private
    FTime: TTime;
    function GetTime: String;
    { Private declarations }
  public
    { Public declarations }
    constructor Create; reintroduce;
  published
    property Time: String read GetTime;
  end;

var
  frmTimePicker: TfrmTimePicker;

implementation

{$R *.dfm}

constructor TfrmTimePicker.Create;
begin
  inherited Create(owner);
  TimePicker.Time := Now;
end;

function TfrmTimePicker.GetTime: String;
begin
  FTime := TimePicker.Time;
  Result := TimeToStr(FTime);
end;

procedure TfrmTimePicker.pnOKClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

end.
