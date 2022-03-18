unit AlertaPonto.Mensagens.Controller;

interface

uses Vcl.Dialogs, System.UITypes, Vcl.Forms, Vcl.StdCtrls, Vcl.Controls;

function Mensagem(Msg :String; AType: TMsgDlgType; AButtons : TMsgDlgButtons;
 DefButton : TModalResult=MrNone) : Word;

implementation

function Mensagem(Msg :String; AType: TMsgDlgType; AButtons : TMsgDlgButtons;
DefButton : TModalResult=MrNone) : Word;
Var
  I:Integer;
  Mensagem:TForm;
Begin
  Mensagem := CreateMessageDialog(Msg, AType, Abuttons);
  With Mensagem Do
  Begin
    For i :=0 To ComponentCount -1 Do Begin
      If (Components[i] is TButton) Then Begin
        If (TButton(Components[i]).ModalResult=DefButton) Then Begin
          ActiveControl:=TWincontrol(Components[i]);
        End;
      End;
    End;
    If      Atype=mtConfirmation Then Caption := 'Confirma��o'
    else If AType=mtWarning      Then Caption := 'Aten��o'
    else If AType=mtError        Then Caption := 'Erro'
    else If AType=mtInFormation  Then Caption := 'Informa��o';
    TButton(Mensagem.FindComponent('YES')).Caption    := '&Sim';
    TButton(Mensagem.FindComponent('NO')).Caption     := '&N�o';
    TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
    TButton(Mensagem.FindComponent('ABORT')).Caption  := '&Abortar';
    TButton(Mensagem.FindComponent('RETRY')).Caption  := '&Repetir';
    TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
    TButton(Mensagem.FindComponent('ALL')).Caption    := '&Todos';
    TButton(Mensagem.FindComponent('HELP')).Caption   := 'A&juda';
  End;
  Result := Mensagem.ShowModal;
  Mensagem.Free;
End;


end.
