object Form1: TForm1
  Left = 266
  Top = 161
  Cursor = crArrow
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'tic tac toe v.1.3'
  ClientHeight = 308
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pole1: TImage
    Left = 8
    Top = 8
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole1Click
  end
  object pole2: TImage
    Left = 104
    Top = 8
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole2Click
  end
  object pole3: TImage
    Left = 200
    Top = 8
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole3Click
  end
  object pole4: TImage
    Left = 8
    Top = 104
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole4Click
  end
  object pole5: TImage
    Left = 104
    Top = 104
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole5Click
  end
  object pole6: TImage
    Left = 200
    Top = 104
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole6Click
  end
  object pole7: TImage
    Left = 8
    Top = 200
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole7Click
  end
  object pole8: TImage
    Left = 104
    Top = 200
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole8Click
  end
  object pole9: TImage
    Left = 200
    Top = 200
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole9Click
  end
  object tura: TImage
    Left = 520
    Top = 80
    Width = 50
    Height = 50
  end
  object Label1: TLabel
    Left = 328
    Top = 88
    Width = 180
    Height = 37
    Caption = 'tura gracza :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 328
    Top = 48
    Width = 151
    Height = 29
    Caption = 'Zaczyna k'#243#322'ko'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 16
    Width = 165
    Height = 29
    Caption = 'Stan: poprawny'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 360
    Top = 192
    Width = 177
    Height = 49
    Cursor = crHandPoint
    Caption = 'od nowa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = FormCreate
  end
  object StaticText1: TStaticText
    Left = 336
    Top = 280
    Width = 219
    Height = 17
    Caption = 'Program stworzony przez: EnergeticArchBTW'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 384
    Top = 248
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = 'informacje o programie'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 144
    Width = 193
    Height = 33
    Cursor = crHandPoint
    Caption = 'Cofnij ostatni ruch'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    Left = 552
    object gra1: TMenuItem
      Caption = '&gra'
      OnClick = gra1Click
      object odpocztku1: TMenuItem
        Caption = '&od nowa'
        OnClick = odpocztku1Click
      end
      object oprogramie1: TMenuItem
        Caption = 'o &programie'
        OnClick = oprogramie1Click
      end
    end
    object dodatkoweinformacje1: TMenuItem
      Caption = '&dodatkowe informacje'
      OnClick = dodatkoweinformacje1Click
      object Facebookodwiedmojeprofilowe1: TMenuItem
        Caption = 'odwied'#378' m'#243'j profil Github'
        OnClick = Facebookodwiedmojeprofilowe1Click
      end
    end
    object ustawienia1: TMenuItem
      Caption = '&ustawienia'
      OnClick = ustawienia1Click
      object zaczynakrzyyk1: TMenuItem
        Caption = 'zaczyna krzy'#380'yk (po naci'#347'ni'#281'ciu"Od Nowa")'
        OnClick = zaczynakrzyyk1Click
      end
      object zaczynakko1: TMenuItem
        Caption = 'zaczyna k'#243#322'ko  (po naci'#347'ni'#281'ciu"Od Nowa")  domy'#347'lnie'
        Checked = True
        OnClick = zaczynakko1Click
      end
      object zaczynagraczwybranylosowo1: TMenuItem
        Caption = 'zaczyna gracz wybrany losowo  (po naci'#347'ni'#281'ciu"Od Nowa")'
        OnClick = zaczynagraczwybranylosowo1Click
      end
    end
    object widok1: TMenuItem
      Caption = '&widok'
      OnClick = widok1Click
      object widokstanuwcz1: TMenuItem
        Caption = 'widok stanu w'#322#261'cz'
        Enabled = False
        OnClick = widokstanuwcz1Click
      end
      object widokstanuwycz1: TMenuItem
        Caption = 'widok stanu wy'#322#261'cz'
        OnClick = widokstanuwycz1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object inforozpoczciuwcz1: TMenuItem
        Caption = 'inf. o rozpocz'#281'ciu  w'#322#261'cz'
        Enabled = False
        OnClick = inforozpoczciuwcz1Click
      end
      object inforozpoczciuwycz1: TMenuItem
        Caption = 'inf. o rozpocz'#281'ciu wy'#322#261'cz'
        OnClick = inforozpoczciuwycz1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object przyciskOdNowawcz1: TMenuItem
        Caption = 'przycisk Od Nowa w'#322#261'cz'
        Enabled = False
        OnClick = przyciskOdNowawcz1Click
      end
      object przyciskOdNowawycz1: TMenuItem
        Caption = 'przycisk Od Nowa wy'#322#261'cz'
        OnClick = przyciskOdNowawycz1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object przyciskcofnijwcz1: TMenuItem
        Caption = 'przycisk cofnij w'#322#261'cz'
        Enabled = False
        OnClick = przyciskcofnijwcz1Click
      end
      object przyciskcofnijwycz1: TMenuItem
        Caption = 'przycisk cofnij wy'#322#261'cz'
        OnClick = przyciskcofnijwycz1Click
      end
    end
  end
end
