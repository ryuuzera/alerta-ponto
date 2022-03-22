unit AlertaPonto.Principal.Model;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.ExtCtrls, AlertaPonto.Mensagens.Controller, AlertaPonto.Principal.View, Vcl.Dialogs;

type
  TdmPrincipal = class(TDataModule)
    imgList: TImageList;
    AfterCreate: TTimer;
    RelogioWeb: TTimer;
    procedure AfterCreateTimer(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure RelogioWebTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AlertaPonto.Principal.Controller;

{$R *.dfm}

procedure TdmPrincipal.AfterCreateTimer(Sender: TObject);
begin
  ConfiguraIconesBt(frmPrincipal);
  AfterCreate.Enabled := False;
end;

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
  AfterCreate.Enabled := True;
end;

procedure TdmPrincipal.RelogioWebTimer(Sender: TObject);
begin
  if Assigned(frmPrincipal.Chromium) then
    frmPrincipal.Chromium.Browser.MainFrame.ExecuteJavaScript('SetClock()','about: blank', 0);
end;

end.
