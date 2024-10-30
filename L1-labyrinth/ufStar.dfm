object fStar: TfStar
  Left = 0
  Top = 0
  ParentCustomHint = False
  BiDiMode = bdLeftToRight
  Caption = 'fStar'
  ClientHeight = 126
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  Visible = True
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 213
    Height = 126
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 441
    object btnstart: TButton
      Left = 56
      Top = 51
      Width = 75
      Height = 25
      Caption = 'btnstart'
      TabOrder = 0
      OnClick = btnstartClick
    end
  end
end
