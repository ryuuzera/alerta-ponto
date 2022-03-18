unit AlertaPonto.FormDlgPadrao.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmDlgPadrao = class(TForm)
    Panel5: TPanel;
    imgFechar: TImage;
    imgMinimizar: TImage;
    imgMenu: TImage;
    Panel12: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Timer: TTimer;
    procedure OnTimer(Sender: TObject);
    procedure FadeIn;
  public
    { Public declarations }
  end;

var
  frmDlgPadrao: TfrmDlgPadrao;

implementation

{$R *.dfm}

{ TfrmDlgPadrao }

procedure TfrmDlgPadrao.FadeIn;
begin
  Self.AlphaBlend := True;
  Self.AlphaBlendValue := 0;
  Timer.OnTimer := OnTimer;
  Timer.Interval := 3;
  Timer.Enabled := True;
end;

procedure TfrmDlgPadrao.FormCreate(Sender: TObject);
begin
  Timer := TTimer.Create(nil);
  FadeIn;
end;

procedure TfrmDlgPadrao.OnTimer(Sender: TObject);
begin
  if Self.AlphaBlendValue > 250 then
  begin
    Self.AlphaBlendValue := 255;
    Timer.Enabled := False;
  end
  else
    Self.AlphaBlendValue := Self.AlphaBlendValue + 18;
end;

end.
