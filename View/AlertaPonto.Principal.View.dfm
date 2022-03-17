object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Super '
  ClientHeight = 333
  ClientWidth = 570
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
  object Panel13: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 333
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel13'
    Color = 15196122
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -15
    ExplicitTop = 149
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel11: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 568
      Height = 331
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel11'
      Color = 7410484
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 570
      ExplicitHeight = 333
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 568
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        Color = 6307125
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        OnMouseDown = Panel5MouseDown
        ExplicitWidth = 570
        object imgFechar: TImage
          Tag = 10
          Left = 544
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          OnClick = imgMenuClick
          ExplicitLeft = 639
        end
        object imgMinimizar: TImage
          Tag = 10
          Left = 520
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          OnClick = imgMenuClick
          ExplicitLeft = 619
        end
        object imgMenu: TImage
          Tag = 10
          Left = 0
          Top = 0
          Width = 24
          Height = 24
          Align = alLeft
          OnClick = imgMenuClick
        end
      end
      object pnFundo: TPanel
        Left = 50
        Top = 24
        Width = 518
        Height = 307
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnFundo'
        Color = 14602181
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        ExplicitWidth = 520
        ExplicitHeight = 309
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 518
          Height = 307
          ActivePage = tsCriarAlerta
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
          ExplicitWidth = 520
          ExplicitHeight = 309
          object tsCriarAlerta: TTabSheet
            Caption = 'tsCriarAlerta'
            ExplicitWidth = 512
            ExplicitHeight = 278
            DesignSize = (
              510
              276)
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 510
              Height = 276
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
              ExplicitWidth = 512
              ExplicitHeight = 278
              object Panel3: TPanel
                Left = 0
                Top = 0
                Width = 418
                Height = 276
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Panel3'
                Color = 14602181
                ParentBackground = False
                TabOrder = 0
                ExplicitHeight = 278
                object PageControl2: TPageControl
                  AlignWithMargins = True
                  Left = 5
                  Top = 8
                  Width = 413
                  Height = 260
                  Margins.Left = 5
                  Margins.Top = 8
                  Margins.Right = 0
                  Margins.Bottom = 8
                  ActivePage = tsTodos
                  Align = alClient
                  Style = tsButtons
                  TabOrder = 0
                  ExplicitHeight = 262
                  object tsTodos: TTabSheet
                    Caption = 'tsTodos'
                    ExplicitHeight = 231
                    object Panel6: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 229
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel6'
                      Color = 14602181
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      ExplicitHeight = 231
                      DesignSize = (
                        405
                        229)
                      object Shape1: TShape
                        Left = 77
                        Top = 33
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object MaskEdit1: TMaskEdit
                        Left = 100
                        Top = 85
                        Width = 113
                        Height = 26
                        Alignment = taCenter
                        Anchors = [akLeft, akTop, akRight]
                        EditMask = '99:99:99;1'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        MaxLength = 8
                        ParentFont = False
                        TabOrder = 0
                        Text = '  :  :  '
                      end
                      object MaskEdit2: TMaskEdit
                        Left = 251
                        Top = 85
                        Width = 113
                        Height = 26
                        Alignment = taCenter
                        Anchors = [akLeft, akTop, akRight]
                        EditMask = '99:99:99;1'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        MaxLength = 8
                        ParentFont = False
                        TabOrder = 1
                        Text = '  :  :  '
                      end
                      object MaskEdit3: TMaskEdit
                        Left = 100
                        Top = 163
                        Width = 113
                        Height = 26
                        Alignment = taCenter
                        Anchors = [akLeft, akTop, akRight]
                        EditMask = '99:99:99;1'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        MaxLength = 8
                        ParentFont = False
                        TabOrder = 2
                        Text = '  :  :  '
                      end
                      object MaskEdit4: TMaskEdit
                        Left = 251
                        Top = 163
                        Width = 113
                        Height = 26
                        Alignment = taCenter
                        Anchors = [akLeft, akTop, akRight]
                        EditMask = '99:99:99;1'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        MaxLength = 8
                        ParentFont = False
                        TabOrder = 3
                        Text = '  :  :  '
                      end
                      object Panel7: TPanel
                        Left = 100
                        Top = 66
                        Width = 113
                        Height = 19
                        Anchors = [akLeft, akTop, akRight]
                        BevelOuter = bvNone
                        Caption = 'Entrada'
                        Color = 12614926
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWhite
                        Font.Height = -11
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentBackground = False
                        ParentFont = False
                        TabOrder = 4
                      end
                      object Panel8: TPanel
                        Left = 251
                        Top = 66
                        Width = 113
                        Height = 19
                        Anchors = [akLeft, akTop, akRight]
                        BevelOuter = bvNone
                        Caption = 'Almo'#231'o'
                        Color = 12614926
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWhite
                        Font.Height = -11
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentBackground = False
                        ParentFont = False
                        TabOrder = 5
                      end
                      object Panel9: TPanel
                        Left = 100
                        Top = 144
                        Width = 113
                        Height = 19
                        Anchors = [akLeft, akTop, akRight]
                        BevelOuter = bvNone
                        Caption = 'Retorno'
                        Color = 12614926
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWhite
                        Font.Height = -11
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentBackground = False
                        ParentFont = False
                        TabOrder = 6
                      end
                      object Panel10: TPanel
                        Left = 251
                        Top = 144
                        Width = 113
                        Height = 19
                        Anchors = [akLeft, akTop, akRight]
                        BevelOuter = bvNone
                        Caption = 'Sa'#237'da'
                        Color = 12614926
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWhite
                        Font.Height = -11
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentBackground = False
                        ParentFont = False
                        TabOrder = 7
                      end
                    end
                  end
                  object tsSegunda: TTabSheet
                    Caption = 'tsSegunda'
                    ImageIndex = 1
                    ExplicitHeight = 227
                  end
                  object tsTerca: TTabSheet
                    Caption = 'tsTerca'
                    ImageIndex = 2
                    ExplicitHeight = 227
                  end
                  object tsQuarta: TTabSheet
                    Caption = 'tsQuarta'
                    ImageIndex = 3
                    ExplicitHeight = 227
                  end
                  object tsQuinta: TTabSheet
                    Caption = 'tsQuinta'
                    ImageIndex = 4
                    ExplicitHeight = 227
                  end
                  object tsSexta: TTabSheet
                    Caption = 'tsSexta'
                    ImageIndex = 5
                    ExplicitHeight = 227
                  end
                  object tsSabado: TTabSheet
                    Caption = 'tsSabado'
                    ImageIndex = 6
                    ExplicitHeight = 227
                  end
                end
              end
              object Panel12: TPanel
                Left = 418
                Top = 0
                Width = 92
                Height = 276
                Align = alRight
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelOuter = bvNone
                ShowCaption = False
                TabOrder = 1
                ExplicitWidth = 94
                ExplicitHeight = 278
                object pnGravar: TPanel
                  Tag = 10
                  AlignWithMargins = True
                  Left = 0
                  Top = 20
                  Width = 92
                  Height = 32
                  Margins.Left = 0
                  Margins.Top = 20
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alTop
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
                  ExplicitWidth = 94
                end
              end
            end
            object SplitView2: TSplitView
              Left = 0
              Top = 0
              Width = 70
              Height = 276
              Color = 12615680
              DisplayMode = svmOverlay
              OpenedWidth = 70
              Placement = svpLeft
              TabOrder = 1
              ExplicitHeight = 278
              object pnSexta: TPanel
                Tag = 10
                Left = 0
                Top = 190
                Width = 70
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
                OnClick = pnSextaClick
              end
              object pnQuinta: TPanel
                Tag = 10
                Left = 0
                Top = 157
                Width = 70
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
                OnClick = pnQuintaClick
              end
              object pnQuarta: TPanel
                Tag = 10
                Left = 0
                Top = 124
                Width = 70
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
                OnClick = pnQuartaClick
              end
              object pnTerca: TPanel
                Tag = 10
                Left = 0
                Top = 91
                Width = 70
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
                OnClick = pnTercaClick
              end
              object pnSegunda: TPanel
                Tag = 10
                Left = 0
                Top = 58
                Width = 70
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
                OnClick = pnSegundaClick
              end
              object pnTodosDias: TPanel
                Tag = 10
                AlignWithMargins = True
                Left = 0
                Top = 25
                Width = 70
                Height = 33
                Margins.Left = 0
                Margins.Top = 25
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Todos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnClick = pnTodosDiasClick
              end
              object pnSabado: TPanel
                Tag = 10
                Left = 0
                Top = 223
                Width = 70
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
                OnClick = pnSabadoClick
              end
            end
          end
        end
      end
      object SplitView1: TSplitView
        Left = 0
        Top = 24
        Width = 50
        Height = 307
        Color = 9001994
        OpenedWidth = 50
        Placement = svpLeft
        TabOrder = 2
        ExplicitHeight = 309
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 48
          Height = 307
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 2
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel1'
          Color = 5389616
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 46
          ExplicitHeight = 305
        end
      end
    end
  end
end
