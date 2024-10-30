object fThird: TfThird
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'fThird'
  ClientHeight = 555
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 555
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 696
    ExplicitHeight = 554
    object sLestnica32: TShape
      Left = 576
      Top = 440
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object SKomnata33: TShape
      Left = 232
      Top = 440
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object sLift31: TShape
      Left = 96
      Top = 440
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object sKomnata31: TShape
      Left = 96
      Top = 256
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object sLestnica31: TShape
      Left = 96
      Top = 71
      Width = 25
      Height = 50
      Shape = stCircle
      Visible = False
    end
    object sKomnata32: TShape
      Left = 217
      Top = 73
      Width = 25
      Height = 48
      Shape = stCircle
      Visible = False
    end
    object sLift32: TShape
      Left = 576
      Top = 71
      Width = 25
      Height = 50
      Shape = stCircle
      Visible = False
    end
    object sPunktY: TShape
      Left = 576
      Top = 368
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 65
      Width = 70
      Height = 425
      Align = alLeft
      Color = clGreen
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 424
      object Komnata31: TPanel
        Left = 1
        Top = 176
        Width = 71
        Height = 59
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentBackground = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 629
      Top = 65
      Width = 70
      Height = 425
      Align = alRight
      Color = clGreen
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 625
      ExplicitHeight = 424
      object PunktY: TPanel
        Left = -2
        Top = 295
        Width = 75
        Height = 57
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Color = clGreen
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentBackground = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 698
      Height = 64
      Align = alTop
      Color = clGreen
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 694
      object Lift32: TPanel
        Left = 628
        Top = 1
        Width = 69
        Height = 62
        Align = alRight
        BorderWidth = 1
        TabOrder = 0
        ExplicitLeft = 624
        object Panel7: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 58
          ParentCustomHint = False
          Align = alClient
          BiDiMode = bdLeftToRight
          Caption = 'Down'
          Ctl3D = True
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = Panel7Click
        end
      end
      object Lestnica31: TPanel
        Left = 1
        Top = 1
        Width = 69
        Height = 62
        Align = alLeft
        BiDiMode = bdLeftToRight
        BorderWidth = 1
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 1
        object Panel6: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 58
          ParentCustomHint = False
          Align = alClient
          BiDiMode = bdLeftToRight
          Caption = 'Down'
          Ctl3D = True
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = Panel6Click
        end
      end
      object Komnata32: TPanel
        Left = 192
        Top = -2
        Width = 57
        Height = 68
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Color = clRed
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentBackground = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 490
      Width = 698
      Height = 64
      Align = alBottom
      Color = clGreen
      ParentBackground = False
      TabOrder = 3
      ExplicitTop = 489
      ExplicitWidth = 694
      object Lift31: TPanel
        Left = 1
        Top = 1
        Width = 69
        Height = 62
        Align = alLeft
        BorderWidth = 1
        TabOrder = 0
        object Panel9: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 58
          ParentCustomHint = False
          Align = alClient
          BiDiMode = bdLeftToRight
          Caption = 'Down'
          Ctl3D = True
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = Panel9Click
          ExplicitTop = 5
        end
      end
      object Lestnica32: TPanel
        Left = 628
        Top = 1
        Width = 69
        Height = 62
        Align = alRight
        BorderWidth = 1
        TabOrder = 1
        ExplicitLeft = 624
        object Panel8: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 58
          ParentCustomHint = False
          Align = alClient
          BiDiMode = bdLeftToRight
          BorderWidth = 1
          Caption = 'Down'
          Ctl3D = True
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = Panel8Click
        end
      end
      object Komnata33: TPanel
        Left = 216
        Top = -2
        Width = 57
        Height = 68
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBiDiMode = False
        ParentBackground = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
      end
    end
    object Panel12: TPanel
      Left = 152
      Top = 136
      Width = 393
      Height = 281
      Caption = '3-'#1080#1081' '#1069#1090#1072#1078
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
  end
end
