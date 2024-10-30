object fGotoRoom: TfGotoRoom
  Left = 0
  Top = 0
  Caption = 'fGotoRoom'
  ClientHeight = 190
  ClientWidth = 381
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 96
    Top = 48
    Width = 161
    Height = 28
    Caption = #1042#1086#1081#1090#1080' '#1074' '#1082#1086#1084#1085#1072#1090#1091'?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnYes: TButton
    Left = 56
    Top = 112
    Width = 75
    Height = 25
    Caption = #1044#1072
    TabOrder = 0
    OnClick = btnYesClick
  end
  object btnNo: TButton
    Left = 224
    Top = 112
    Width = 75
    Height = 25
    Caption = #1053#1077#1090
    TabOrder = 1
    OnClick = btnNoClick
  end
end
