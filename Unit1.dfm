object Form1: TForm1
  Left = 202
  Top = 125
  Width = 513
  Height = 161
  Caption = 'RC4 Text Encryption'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 33
    Height = 17
    Hint = 'x'
    HelpKeyword = '23'
    HelpContext = 12
    BiDiMode = bdRightToLeftNoAlign
    Caption = 'TEXT'
    Color = clBtnFace
    FocusControl = Button1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
  end
  object Button1: TButton
    Left = 40
    Top = 8
    Width = 73
    Height = 25
    Caption = 'd0 !t'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 240
    Top = 8
    Width = 257
    Height = 121
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 8
    Top = 40
    Width = 225
    Height = 89
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 120
    Top = 8
    Width = 113
    Height = 25
    TabOrder = 3
  end
  object DCP_rc41: TDCP_rc4
    Id = 19
    Algorithm = 'RC4'
    MaxKeySize = 2048
    Left = 248
    Top = 16
  end
end
