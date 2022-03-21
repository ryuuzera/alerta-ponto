unit AlertaPonto.Principal.Model;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.ExtCtrls, AlertaPonto.Mensagens.Controller, AlertaPonto.Principal.View, Vcl.Dialogs;

type
  TdmPrincipal = class(TDataModule)
    imgList: TImageList;
    AfterCreate: TTimer;
    procedure AfterCreateTimer(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
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
var
  CrmCreate: Boolean;
begin
  ConfiguraIconesBt(frmPrincipal);
  while not CrmCreate do
  begin
    if frmPrincipal.Chromium.Browser <> nil then
    begin
      frmPrincipal.Chromium.Browser.Host.ZoomLevel := frmPrincipal.Chromium.Browser.Host.ZoomLevel - 1.75;
      CrmCreate := True;
    end;
  end;
  AfterCreate.Enabled := False;
end;

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
  AfterCreate.Enabled := True;
end;

end.
