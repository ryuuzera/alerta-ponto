object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Super '
  ClientHeight = 532
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
    Height = 532
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel13'
    Color = 2958110
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    object Panel11: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 568
      Height = 530
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel11'
      Color = 7410484
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 568
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        Color = 6307125
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        ShowCaption = False
        TabOrder = 0
        OnMouseDown = Panel5MouseDown
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
        Height = 506
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnFundo'
        Color = 14602181
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        ShowCaption = False
        TabOrder = 1
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 518
          Height = 506
          ActivePage = tsCriarAlerta
          Align = alClient
          DoubleBuffered = True
          ParentDoubleBuffered = False
          Style = tsFlatButtons
          TabOrder = 0
          object tsCriarAlerta: TTabSheet
            Caption = 'tsCriarAlerta'
            DesignSize = (
              510
              475)
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 510
              Height = 475
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
              object Panel3: TPanel
                Left = 0
                Top = 0
                Width = 418
                Height = 475
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Panel3'
                Color = 14602181
                ParentBackground = False
                TabOrder = 0
                object PageControl2: TPageControl
                  AlignWithMargins = True
                  Left = 5
                  Top = 8
                  Width = 413
                  Height = 459
                  Margins.Left = 5
                  Margins.Top = 8
                  Margins.Right = 0
                  Margins.Bottom = 8
                  ActivePage = tsQuarta
                  Align = alClient
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  Style = tsButtons
                  TabOrder = 0
                  object tsTodos: TTabSheet
                    Caption = 'tsTodos'
                    object pnTsTodos: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 428
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'pnTsTodos'
                      Color = 14602181
                      DoubleBuffered = True
                      ParentBackground = False
                      ParentDoubleBuffered = False
                      ShowCaption = False
                      TabOrder = 0
                      DesignSize = (
                        405
                        428)
                      object Shape1: TShape
                        Left = 77
                        Top = 28
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object Label1: TLabel
                        Left = 191
                        Top = 32
                        Width = 83
                        Height = 17
                        Caption = 'Todos os Dias'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentFont = False
                      end
                      object edTDEntrada: TMaskEdit
                        Left = 100
                        Top = 80
                        Width = 87
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
                      object edTDAlmoco: TMaskEdit
                        Left = 251
                        Top = 80
                        Width = 87
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
                      object edTDRetorno: TMaskEdit
                        Left = 100
                        Top = 158
                        Width = 87
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
                      object edTDSaida: TMaskEdit
                        Left = 251
                        Top = 158
                        Width = 87
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
                        Top = 61
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
                        Top = 61
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
                        Top = 139
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
                        Top = 139
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
                      object DBGrid1: TDBGrid
                        Left = 83
                        Top = 240
                        Width = 320
                        Height = 169
                        DataSource = dmAlertas.dsAlertas
                        TabOrder = 8
                        TitleFont.Charset = DEFAULT_CHARSET
                        TitleFont.Color = clWindowText
                        TitleFont.Height = -11
                        TitleFont.Name = 'Tahoma'
                        TitleFont.Style = []
                      end
                      object btTDEntrada: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 9
                      end
                      object btTDRetorno: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 10
                      end
                      object btTDSaida: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 11
                      end
                      object btTDAlmoco: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 12
                      end
                    end
                  end
                  object tsSegunda: TTabSheet
                    Caption = 'tsSegunda'
                    ImageIndex = 1
                    object Panel28: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 428
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel6'
                      Color = 14602181
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      DesignSize = (
                        405
                        428)
                      object Shape5: TShape
                        Left = 77
                        Top = 28
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object Label2: TLabel
                        Left = 191
                        Top = 32
                        Width = 87
                        Height = 17
                        Caption = 'Segunda-Feira'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentFont = False
                      end
                      object edSGEntrada: TMaskEdit
                        Left = 100
                        Top = 80
                        Width = 87
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
                      object edSGAlmoco: TMaskEdit
                        Left = 251
                        Top = 80
                        Width = 87
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
                      object edSGRetorno: TMaskEdit
                        Left = 100
                        Top = 158
                        Width = 87
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
                      object edSGSaida: TMaskEdit
                        Left = 251
                        Top = 158
                        Width = 87
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
                      object Panel29: TPanel
                        Left = 100
                        Top = 61
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
                      object Panel30: TPanel
                        Left = 251
                        Top = 61
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
                      object Panel31: TPanel
                        Left = 100
                        Top = 139
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
                      object Panel32: TPanel
                        Left = 251
                        Top = 139
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
                      object btSGEntrada: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 8
                      end
                      object btSGRetorno: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 9
                      end
                      object btSGSaida: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 10
                      end
                      object btSGAlmoco: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 11
                      end
                    end
                  end
                  object tsTerca: TTabSheet
                    Caption = 'tsTerca'
                    ImageIndex = 2
                    object Panel38: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 428
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel6'
                      Color = 14602181
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      DesignSize = (
                        405
                        428)
                      object Shape7: TShape
                        Left = 77
                        Top = 28
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object Label3: TLabel
                        Left = 198
                        Top = 32
                        Width = 65
                        Height = 17
                        Caption = 'Ter'#231'a-Feira'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentFont = False
                      end
                      object edTCEntrada: TMaskEdit
                        Left = 100
                        Top = 80
                        Width = 87
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
                      object edTCAlmoco: TMaskEdit
                        Left = 251
                        Top = 80
                        Width = 87
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
                      object edTCRetorno: TMaskEdit
                        Left = 100
                        Top = 158
                        Width = 87
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
                      object edTCSaida: TMaskEdit
                        Left = 251
                        Top = 158
                        Width = 87
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
                      object Panel39: TPanel
                        Left = 100
                        Top = 61
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
                      object Panel40: TPanel
                        Left = 251
                        Top = 61
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
                      object Panel41: TPanel
                        Left = 100
                        Top = 139
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
                      object Panel42: TPanel
                        Left = 251
                        Top = 139
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
                      object btTCEntrada: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 8
                      end
                      object btTCRetorno: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 9
                      end
                      object btTCSaida: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 10
                      end
                      object btTCAlmoco: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 11
                      end
                    end
                  end
                  object tsQuarta: TTabSheet
                    Caption = 'tsQuarta'
                    ImageIndex = 3
                    object Panel2: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 428
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel6'
                      Color = 14602181
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      ExplicitLeft = -2
                      DesignSize = (
                        405
                        428)
                      object Shape2: TShape
                        Left = 77
                        Top = 28
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object Label4: TLabel
                        Left = 192
                        Top = 32
                        Width = 76
                        Height = 17
                        Caption = 'Quarta-Feira'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentFont = False
                      end
                      object edQTEntrada: TMaskEdit
                        Left = 100
                        Top = 80
                        Width = 87
                        Height = 26
                        Alignment = taCenter
                        Anchors = [akLeft, akTop, akRight]
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = False
                        TabOrder = 0
                        Text = ''
                        TextHint = '00:00'
                      end
                      object edQTAlmoco: TMaskEdit
                        Left = 251
                        Top = 80
                        Width = 87
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
                      object edQTRetorno: TMaskEdit
                        Left = 100
                        Top = 158
                        Width = 87
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
                      object edQTSaida: TMaskEdit
                        Left = 251
                        Top = 158
                        Width = 87
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
                      object Panel14: TPanel
                        Left = 100
                        Top = 61
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
                      object Panel15: TPanel
                        Left = 251
                        Top = 61
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
                      object Panel16: TPanel
                        Left = 100
                        Top = 139
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
                      object Panel17: TPanel
                        Left = 251
                        Top = 139
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
                      object btQTEntrada: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 8
                      end
                      object btQTRetorno: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 9
                      end
                      object btQTSaida: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 10
                      end
                      object btQTAlmoco: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 11
                      end
                    end
                  end
                  object tsQuinta: TTabSheet
                    Caption = 'tsQuinta'
                    ImageIndex = 4
                    object Panel18: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 428
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel6'
                      Color = 14602181
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      DesignSize = (
                        405
                        428)
                      object Shape3: TShape
                        Left = 77
                        Top = 28
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object Label5: TLabel
                        Left = 192
                        Top = 32
                        Width = 75
                        Height = 17
                        Caption = 'Quinta-Feira'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentFont = False
                      end
                      object edQNEntrada: TMaskEdit
                        Left = 100
                        Top = 80
                        Width = 87
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
                      object edQNAlmoco: TMaskEdit
                        Left = 251
                        Top = 80
                        Width = 87
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
                      object edQNRetorno: TMaskEdit
                        Left = 100
                        Top = 158
                        Width = 87
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
                      object edQNSaida: TMaskEdit
                        Left = 251
                        Top = 158
                        Width = 87
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
                      object Panel19: TPanel
                        Left = 100
                        Top = 61
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
                      object Panel20: TPanel
                        Left = 251
                        Top = 61
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
                      object Panel21: TPanel
                        Left = 100
                        Top = 139
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
                      object Panel22: TPanel
                        Left = 251
                        Top = 139
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
                      object btQNEntrada: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 8
                      end
                      object btQNRetorno: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 9
                      end
                      object btQNSaida: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 10
                      end
                      object btQNAlmoco: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 11
                      end
                    end
                  end
                  object tsSexta: TTabSheet
                    Caption = 'tsSexta'
                    ImageIndex = 5
                    object Panel33: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 428
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel6'
                      Color = 14602181
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      DesignSize = (
                        405
                        428)
                      object Shape6: TShape
                        Left = 77
                        Top = 28
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object Label6: TLabel
                        Left = 200
                        Top = 32
                        Width = 67
                        Height = 17
                        Caption = 'Sexta-Feira'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentFont = False
                      end
                      object edSXEntrada: TMaskEdit
                        Left = 100
                        Top = 80
                        Width = 87
                        Height = 26
                        Alignment = taCenter
                        Anchors = [akLeft, akTop, akRight]
                        EditMask = '99:99;1'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        MaxLength = 5
                        ParentFont = False
                        TabOrder = 0
                        Text = '  :  '
                      end
                      object edSXAlmoco: TMaskEdit
                        Left = 251
                        Top = 80
                        Width = 87
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
                      object edSXRetorno: TMaskEdit
                        Left = 100
                        Top = 158
                        Width = 87
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
                      object edSXSaida: TMaskEdit
                        Left = 251
                        Top = 158
                        Width = 87
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
                      object Panel34: TPanel
                        Left = 100
                        Top = 61
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
                      object Panel35: TPanel
                        Left = 251
                        Top = 61
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
                      object Panel36: TPanel
                        Left = 100
                        Top = 139
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
                      object Panel37: TPanel
                        Left = 251
                        Top = 139
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
                      object btSXEntrada: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 8
                      end
                      object btSXRetorno: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 9
                      end
                      object btSXAlmoco: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 10
                      end
                      object btSXSaida: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 11
                      end
                    end
                  end
                  object tsSabado: TTabSheet
                    Caption = 'tsSabado'
                    ImageIndex = 6
                    object Panel23: TPanel
                      Left = 0
                      Top = 0
                      Width = 405
                      Height = 428
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel6'
                      Color = 14602181
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      ExplicitLeft = 1
                      ExplicitTop = -9
                      DesignSize = (
                        405
                        428)
                      object Shape4: TShape
                        Left = 77
                        Top = 28
                        Width = 313
                        Height = 190
                        Anchors = [akLeft, akTop, akRight]
                        Pen.Style = psClear
                        Shape = stRoundRect
                      end
                      object Label7: TLabel
                        Left = 207
                        Top = 32
                        Width = 45
                        Height = 17
                        Caption = 'S'#225'bado'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = []
                        ParentFont = False
                      end
                      object edSBEntrada: TMaskEdit
                        Left = 100
                        Top = 80
                        Width = 87
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
                      object edSBAlmoco: TMaskEdit
                        Left = 251
                        Top = 80
                        Width = 87
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
                      object edSBRetorno: TMaskEdit
                        Left = 100
                        Top = 158
                        Width = 87
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
                      object edSBSaida: TMaskEdit
                        Left = 251
                        Top = 158
                        Width = 87
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
                      object Panel24: TPanel
                        Left = 100
                        Top = 61
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
                      object Panel25: TPanel
                        Left = 251
                        Top = 61
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
                      object Panel26: TPanel
                        Left = 100
                        Top = 139
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
                      object Panel27: TPanel
                        Left = 251
                        Top = 139
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
                      object btSBAlmoco: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 8
                      end
                      object btSBEntrada: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 80
                        Width = 26
                        Height = 26
                        TabOrder = 9
                      end
                      object btSBRetorno: TBitBtn
                        Tag = 10
                        Left = 187
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 10
                      end
                      object btSBSaida: TBitBtn
                        Tag = 10
                        Left = 338
                        Top = 158
                        Width = 26
                        Height = 26
                        TabOrder = 11
                      end
                    end
                  end
                end
              end
              object Panel12: TPanel
                Left = 418
                Top = 0
                Width = 92
                Height = 475
                Align = alRight
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelOuter = bvNone
                ShowCaption = False
                TabOrder = 1
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
                  OnClick = pnGravarClick
                end
              end
            end
            object SplitView2: TSplitView
              Left = 0
              Top = 0
              Width = 70
              Height = 475
              Color = 12615680
              DisplayMode = svmOverlay
              OpenedWidth = 70
              Placement = svpLeft
              TabOrder = 1
              object pnSexta: TPanel
                Tag = 10
                Left = 0
                Top = 190
                Width = 70
                Height = 33
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Sexta'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentBackground = False
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
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentBackground = False
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
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentBackground = False
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
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentBackground = False
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
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentBackground = False
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
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentBackground = False
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
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 13748894
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = []
                ParentBackground = False
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
        Height = 506
        Color = 9001994
        OpenedWidth = 50
        Placement = svpLeft
        TabOrder = 2
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 48
          Height = 506
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
        end
      end
    end
  end
  object pnEvents: TPanel
    Tag = 25
    Left = 53
    Top = 4
    Width = 62
    Height = 18
    Caption = 'pnEvents'
    TabOrder = 1
    Visible = False
    OnClick = pnEventsClick
    OnMouseLeave = pnEventsMouseLeave
    OnMouseMove = pnEventsMouseMove
  end
end
