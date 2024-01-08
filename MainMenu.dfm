object FormMenu: TFormMenu
  Left = 484
  Top = 179
  Width = 625
  Height = 540
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 128
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Pelanggan'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Servis'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 128
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Stok'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Supplier'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 344
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Transaksi'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 344
    Top = 240
    Width = 75
    Height = 25
    Caption = 'user'
    TabOrder = 5
    OnClick = Button6Click
  end
end
