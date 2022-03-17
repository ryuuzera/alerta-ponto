object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Super '
  ClientHeight = 377
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 40
    Top = 81
    Width = 39
    Height = 13
    Caption = 'Entrada'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object pnFundo: TPanel
    Left = 0
    Top = 20
    Width = 659
    Height = 357
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnFundo'
    ShowCaption = False
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 659
      Height = 357
      ActivePage = tsCriarAlerta
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object tsCriarAlerta: TTabSheet
        Caption = 'tsCriarAlerta'
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 651
          Height = 326
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnFundo'
          Color = 14602181
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object SplitView2: TSplitView
            Left = 0
            Top = 0
            Width = 100
            Height = 326
            Color = 12615680
            OpenedWidth = 100
            Placement = svpLeft
            TabOrder = 0
            object Panel7: TPanel
              Left = 0
              Top = 195
              Width = 100
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Sexta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Panel6: TPanel
              Left = 0
              Top = 162
              Width = 100
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Quinta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Panel8: TPanel
              Left = 0
              Top = 129
              Width = 100
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Quarta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object Panel9: TPanel
              Left = 0
              Top = 96
              Width = 100
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Ter'#231'a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = Panel9Click
            end
            object Panel10: TPanel
              Left = 0
              Top = 63
              Width = 100
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Segunda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = Panel10Click
            end
            object Panel11: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 30
              Width = 100
              Height = 33
              Margins.Left = 0
              Margins.Top = 30
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Todos os Dias'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = Panel11Click
            end
            object Panel13: TPanel
              Left = 0
              Top = 228
              Width = 100
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Caption = 'S'#225'bado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 13748894
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentBackground = False
              ParentColor = True
              ParentFont = False
              TabOrder = 6
            end
          end
          object Panel3: TPanel
            Left = 100
            Top = 0
            Width = 457
            Height = 326
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel3'
            TabOrder = 1
            object PageControl2: TPageControl
              Left = 0
              Top = 0
              Width = 457
              Height = 326
              ActivePage = tsTodos
              Align = alClient
              TabOrder = 0
              object tsTodos: TTabSheet
                Caption = 'tsTodos'
                object Label1: TLabel
                  Left = 32
                  Top = 79
                  Width = 39
                  Height = 13
                  Caption = 'Entrada'
                  Color = clBlack
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 32
                  Top = 106
                  Width = 39
                  Height = 13
                  Caption = 'Almo'#231'o'
                  Color = clBlack
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 32
                  Top = 132
                  Width = 41
                  Height = 13
                  Caption = 'Retorno'
                  Color = clBlack
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 32
                  Top = 159
                  Width = 28
                  Height = 13
                  Caption = 'Saida'
                  Color = clBlack
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object MaskEdit1: TMaskEdit
                  Left = 88
                  Top = 76
                  Width = 120
                  Height = 21
                  EditMask = '99:99:99;9'
                  MaxLength = 8
                  TabOrder = 0
                  Text = '  :  :  '
                end
                object MaskEdit2: TMaskEdit
                  Left = 88
                  Top = 103
                  Width = 120
                  Height = 21
                  EditMask = '99:99:99;9'
                  MaxLength = 8
                  TabOrder = 1
                  Text = '  :  :  '
                end
                object MaskEdit4: TMaskEdit
                  Left = 88
                  Top = 156
                  Width = 120
                  Height = 21
                  EditMask = '99:99:99;9'
                  MaxLength = 8
                  TabOrder = 2
                  Text = '  :  :  '
                end
                object MaskEdit3: TMaskEdit
                  Left = 88
                  Top = 130
                  Width = 120
                  Height = 21
                  EditMask = '99:99:99;9'
                  MaxLength = 8
                  TabOrder = 3
                  Text = '  :  :  '
                end
              end
              object tsSegunda: TTabSheet
                Caption = 'tsSegunda'
                ImageIndex = 1
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object CheckBox1: TCheckBox
                  Left = 48
                  Top = 48
                  Width = 97
                  Height = 17
                  Caption = 'CheckBox1'
                  TabOrder = 0
                end
              end
              object tsTerca: TTabSheet
                Caption = 'tsTerca'
                ImageIndex = 2
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object Memo1: TMemo
                  Left = 3
                  Top = 46
                  Width = 185
                  Height = 89
                  Lines.Strings = (
                    'Memo1')
                  TabOrder = 0
                end
              end
              object tsQuarta: TTabSheet
                Caption = 'tsQuarta'
                ImageIndex = 3
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
              object tsQuinta: TTabSheet
                Caption = 'tsQuinta'
                ImageIndex = 4
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
              object tsSexta: TTabSheet
                Caption = 'tsSexta'
                ImageIndex = 5
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
              object tsSabado: TTabSheet
                Caption = 'tsSabado'
                ImageIndex = 6
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
            end
          end
          object Panel12: TPanel
            Left = 557
            Top = 0
            Width = 94
            Height = 326
            Align = alRight
            BevelOuter = bvNone
            ShowCaption = False
            TabOrder = 2
            object Panel2: TPanel
              Left = 6
              Top = 21
              Width = 81
              Height = 31
              BevelOuter = bvNone
              Caption = 'Gravar'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 20
    Width = 0
    Height = 357
    Color = 12615680
    Opened = False
    OpenedWidth = 100
    Placement = svpLeft
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 0
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnFundo'
      ShowCaption = False
      TabOrder = 0
      object Image1: TImage
        Left = -32
        Top = 0
        Width = 32
        Height = 33
        Align = alRight
        OnClick = Image1Click
        ExplicitLeft = 66
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    Color = 6307125
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    OnMouseDown = Panel5MouseDown
  end
end
