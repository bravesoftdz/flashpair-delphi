object DifficultyForm: TDifficultyForm
  Left = 179
  Top = 82
  BorderStyle = bsDialog
  Caption = 'Game Speed'
  ClientHeight = 348
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 128
    Width = 188
    Height = 24
    Caption = 'Questions per Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 32
    Width = 211
    Height = 24
    Caption = 'Seconds Per Question'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 497
    Height = 209
  end
  object Bevel2: TBevel
    Left = 16
    Top = 240
    Width = 497
    Height = 49
  end
  object RxSpinEdit1: TRxSpinEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    MaxValue = 30
    MinValue = 2
    Value = 12
    TabOrder = 0
  end
  object RxSpinEdit2: TRxSpinEdit
    Left = 128
    Top = 176
    Width = 121
    Height = 21
    MaxValue = 50
    MinValue = 3
    Value = 10
    TabOrder = 1
  end
  object OkButton: TBitBtn
    Left = 80
    Top = 248
    Width = 89
    Height = 33
    Caption = 'OK'
    TabOrder = 2
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
      777777770000774448877777777777770000772244887777777777770000A222
      22488777777777770000A22222248877777777770000A2222222488777777777
      0000A22222222488777777770000A22222222248877777770000A22248A22224
      887777770000A222488A2222488777770000A2224887A2224488777700007A22
      48877A222488777700007A22477777A222488777000077777777777A22244877
      0000777777777777A222488700007777777777777A2224870000777777777777
      77A224480000777777777777777A224800007777777777777777A24800007777
      7777777777777A270000}
  end
  object CancelButton: TBitBtn
    Left = 352
    Top = 248
    Width = 89
    Height = 33
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = CancelButtonClick
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888877777
      8877777700007770888777778887777700007911088877910888777700007911
      0088879100888777000079111008891110087777000079911108911111007777
      0000779111101111110777770000777911111111077777770000777991111111
      8777777700007777991111108877777700007777791111108887777700007777
      7911111088877777000077777911111108887777000077779111991100888777
      0000777911108991100888770000777911187799110088870000777111187779
      1110888700007771110777779111087700007779997777777991777700007777
      77777777779977770000}
  end
end
