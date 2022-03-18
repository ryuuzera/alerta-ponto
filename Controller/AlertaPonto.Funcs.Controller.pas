unit AlertaPonto.Funcs.Controller;

interface

uses
  SysUtils, System.MaskUtils;

function FormatarHoras(aHora:String; Quant:Integer):String;
function LimpaMascara(aTexto : String): String;

implementation

function FormatarHoras(aHora:String; Quant:Integer):String;
begin
  case Length(aHora) of
    0:result:='';
    1:result:='0:0'+aHora;
    2:result:='0:'+aHora;
    3:result:=FormatMaskText('0:00;0', aHora);
    4:result:=FormatMaskText('00:00;0', aHora);
  end;
end;

function LimpaMascara(aTexto : String): String;
var
  I : Byte;
begin
  Result := '';
  for I := 1 To Length(aTexto) do
     if aTexto [I] In ['1','2','3','4','5','6','7','8','9','0'] Then
       Result := Result + aTexto [I];
end;
end.
