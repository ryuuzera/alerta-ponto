inherited frmTimePicker: TfrmTimePicker
  Caption = 'frmTimePicker'
  Color = 2953728
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 359
    ExplicitHeight = 208
    inherited Panel12: TPanel
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 357
      ExplicitHeight = 206
      inherited Panel1: TPanel
        Color = 14602181
        ParentBackground = False
        ExplicitLeft = 2
        ExplicitTop = 28
        ExplicitWidth = 355
        ExplicitHeight = 180
        object Label1: TLabel
          Left = 96
          Top = 26
          Width = 159
          Height = 17
          Caption = 'Selecione a Hora Desejada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 24
          Top = 49
          Width = 308
          Height = 96
          Brush.Color = 15392729
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 43
          Top = 79
          Width = 134
          Height = 39
          Brush.Color = 6307125
          Pen.Style = psClear
        end
        object TimePicker: TTimePicker
          Left = 45
          Top = 82
          Width = 129
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 0
          Time = 44638.035052754630000000
          TimeFormat = 'hh:mm'
        end
        object pnOK: TPanel
          Tag = 10
          AlignWithMargins = True
          Left = 226
          Top = 82
          Width = 89
          Height = 32
          Margins.Left = 0
          Margins.Top = 20
          Margins.Right = 0
          Margins.Bottom = 0
          BevelOuter = bvNone
          Caption = 'OK'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnClick = pnOKClick
        end
      end
      inherited Panel5: TPanel
        OnMouseDown = nil
        ExplicitWidth = 357
        inherited imgFechar: TImage
          OnClick = nil
        end
        inherited imgMinimizar: TImage
          OnClick = nil
        end
        inherited imgMenu: TImage
          OnClick = nil
        end
      end
    end
  end
end
