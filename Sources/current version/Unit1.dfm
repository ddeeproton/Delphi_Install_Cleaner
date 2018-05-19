object Form1: TForm1
  Left = 192
  Top = 152
  Width = 378
  Height = 182
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    362
    144)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 264
    Top = 112
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Clean Delphi 7'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 362
    Height = 105
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object XPManifest1: TXPManifest
    Left = 320
    Top = 8
  end
end
