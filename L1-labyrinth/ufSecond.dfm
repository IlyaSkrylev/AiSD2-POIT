object fSecond: TfSecond
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'fSecond'
  ClientHeight = 557
  ClientWidth = 708
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object Shape1: TShape
    Left = 568
    Top = 432
    Width = 25
    Height = 33
    Shape = stCircle
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 557
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 704
    ExplicitHeight = 556
    object sLestnica22: TShape
      Left = 568
      Top = 440
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object sMedL: TShape
      Left = 568
      Top = 368
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object sLift22: TShape
      Left = 568
      Top = 71
      Width = 25
      Height = 50
      Shape = stCircle
      Visible = False
    end
    object sKomnata22: TShape
      Left = 464
      Top = 73
      Width = 25
      Height = 50
      Shape = stCircle
      Visible = False
    end
    object sKomnata21: TShape
      Left = 192
      Top = 71
      Width = 25
      Height = 50
      Shape = stCircle
      Visible = False
    end
    object sLestnica21: TShape
      Left = 96
      Top = 80
      Width = 25
      Height = 34
      Shape = stCircle
      Visible = False
    end
    object sKomnata23: TShape
      Left = 248
      Top = 440
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object sLift21: TShape
      Left = 96
      Top = 440
      Width = 25
      Height = 33
      Shape = stCircle
      Visible = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 65
      Width = 70
      Height = 427
      Align = alLeft
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 426
    end
    object Panel3: TPanel
      Left = 637
      Top = 65
      Width = 70
      Height = 427
      Align = alRight
      Color = clSilver
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 633
      ExplicitHeight = 426
      object MedL: TPanel
        Left = -3
        Top = 295
        Width = 76
        Height = 57
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        BorderStyle = bsSingle
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
      Width = 706
      Height = 64
      Align = alTop
      Color = clSilver
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 702
      object Lift22: TPanel
        Left = 636
        Top = 1
        Width = 69
        Height = 62
        ParentCustomHint = False
        Align = alRight
        BiDiMode = bdLeftToRight
        BorderWidth = 1
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
        ExplicitLeft = 632
        object Panel7: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 32
          Align = alTop
          Caption = 'Up'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Panel7Click
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 67
        end
        object Panel22: TPanel
          Left = 2
          Top = 34
          Width = 65
          Height = 26
          Align = alClient
          Caption = 'Down'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Panel22Click
          ExplicitLeft = 1
          ExplicitTop = 48
          ExplicitWidth = 67
          ExplicitHeight = 13
        end
      end
      object Lestnica21: TPanel
        Left = 1
        Top = 1
        Width = 69
        Height = 62
        ParentCustomHint = False
        Align = alLeft
        BiDiMode = bdLeftToRight
        BorderWidth = 1
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
        TabOrder = 1
        object Panel21: TPanel
          Left = 2
          Top = 34
          Width = 65
          Height = 26
          Align = alClient
          Caption = 'Down'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Panel21Click
          ExplicitLeft = 1
          ExplicitTop = 48
          ExplicitWidth = 67
          ExplicitHeight = 13
        end
        object Panel6: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 32
          Align = alTop
          Caption = 'Up'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Panel6Click
          ExplicitLeft = 4
          ExplicitTop = 10
        end
      end
      object Komnata22: TPanel
        Left = 448
        Top = -2
        Width = 57
        Height = 68
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        BorderStyle = bsSingle
        Color = clSilver
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
      object Komnata21: TPanel
        Left = 176
        Top = -5
        Width = 57
        Height = 73
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        BorderStyle = bsSingle
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
        TabOrder = 3
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 492
      Width = 706
      Height = 64
      Align = alBottom
      Color = clSilver
      ParentBackground = False
      TabOrder = 3
      ExplicitTop = 491
      ExplicitWidth = 702
      object Lift21: TPanel
        Left = 1
        Top = 1
        Width = 69
        Height = 62
        ParentCustomHint = False
        Align = alLeft
        BiDiMode = bdLeftToRight
        BorderWidth = 1
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
        object Panel9: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 32
          Align = alTop
          Caption = 'Up'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Panel9Click
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 67
        end
        object Panel20: TPanel
          Left = 2
          Top = 34
          Width = 65
          Height = 26
          Align = alClient
          Caption = 'Down'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Panel20Click
          ExplicitLeft = 1
          ExplicitTop = 48
          ExplicitWidth = 67
          ExplicitHeight = 13
        end
      end
      object Lestnica22: TPanel
        Left = 636
        Top = 1
        Width = 69
        Height = 62
        ParentCustomHint = False
        Align = alRight
        BiDiMode = bdLeftToRight
        BorderWidth = 1
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
        TabOrder = 1
        ExplicitLeft = 632
        object Panel8: TPanel
          Left = 2
          Top = 2
          Width = 65
          Height = 32
          Align = alTop
          Caption = 'Up'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Panel8Click
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 67
        end
        object Panel23: TPanel
          Left = 2
          Top = 34
          Width = 65
          Height = 26
          Align = alClient
          Caption = 'Down'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Panel23Click
          ExplicitLeft = 1
          ExplicitTop = 48
          ExplicitWidth = 67
          ExplicitHeight = 13
        end
      end
      object Komnata23: TPanel
        Left = 232
        Top = -4
        Width = 57
        Height = 68
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        BorderStyle = bsSingle
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
      Caption = '2-'#1086#1081' '#1069#1090#1072#1078
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
  end
end
