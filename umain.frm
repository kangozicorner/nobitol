object frmMain: TfrmMain
  Left = 43
  Height = 550
  Top = 57
  Width = 902
  BorderStyle = bsNone
  Caption = 'frmMain'
  ClientHeight = 550
  ClientWidth = 902
  Color = clBlack
  Font.CharSet = ANSI_CHARSET
  Font.Color = clWhite
  Font.Name = 'Century Gothic'
  Font.Pitch = fpVariable
  Font.Quality = fqDraft
  FormStyle = fsStayOnTop
  OnCreate = FormCreate
  OnShow = FormShow
  LCLVersion = '7.7'
  WindowState = wsFullScreen
  object pnLeft: TPanel
    Left = 0
    Height = 514
    Top = 33
    Width = 192
    Align = alLeft
    BevelOuter = bvNone
    ClientHeight = 514
    ClientWidth = 192
    TabOrder = 0
    object gAksi: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 48
      Width = 192
      Align = alTop
      Caption = 'Aksi'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gAksiClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gAnimasi: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 240
      Width = 192
      Align = alTop
      Caption = 'Animasi'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gAnimasiClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gScifi: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 432
      Width = 192
      Align = alTop
      Caption = 'Sci-fi'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gScifiClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gSejarah: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 208
      Width = 192
      Align = alTop
      Caption = 'Sejarah'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gSejarahClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gKriminal: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 176
      Width = 192
      Align = alTop
      Caption = 'Kriminal'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gKriminalClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gKeluarga: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 144
      Width = 192
      Align = alTop
      Caption = 'Keluarga'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gKeluargaClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gdrama: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 80
      Width = 192
      Align = alTop
      Caption = 'Drama'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gdramaClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gPetualangan: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 112
      Width = 192
      Align = alTop
      Caption = 'Petualangan'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gPetualanganClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gHoror: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 304
      Width = 192
      Align = alTop
      Caption = 'Horror'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gHororClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object ColorSpeedButton11: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 272
      Width = 192
      Align = alTop
      Caption = 'Komedi'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = ColorSpeedButton11Click
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gMisteri: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 368
      Width = 192
      Align = alTop
      Caption = 'Misteri'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gMisteriClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gThriller: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 336
      Width = 192
      Align = alTop
      Caption = 'Thriller'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gThrillerClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object gBiografi: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 400
      Width = 192
      Align = alTop
      Caption = 'Biografi'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gBiografiClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object Panel1: TPanel
      Left = 3
      Height = 42
      Top = 3
      Width = 186
      Align = alTop
      BorderSpacing.Around = 3
      BevelOuter = bvNone
      ClientHeight = 42
      ClientWidth = 186
      Color = 2901298
      ParentColor = False
      TabOrder = 0
      object ECariJudul: TEdit
        Left = 6
        Height = 25
        Top = 11
        Width = 174
        Align = alClient
        Alignment = taCenter
        BorderSpacing.Top = 5
        BorderSpacing.Around = 6
        BorderStyle = bsNone
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Montserrat'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        OnKeyPress = ECariJudulKeyPress
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
    end
    object gMusikal: TColorSpeedButton
      Cursor = crHandPoint
      Left = 0
      Height = 32
      Top = 464
      Width = 192
      Align = alTop
      Caption = 'Musikal'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = 14737632
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = gMusikalClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clBlack
      StateNormal.BorderColor = clBlack
      StateNormal.BorderWidth = 1
      StateHover.Color = 6766608
      StateHover.BorderColor = 6766608
      StateHover.BorderWidth = 1
      StateActive.Color = 1853126
      StateActive.BorderColor = 1853126
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
  end
  object pnMain: TPanel
    Left = 192
    Height = 514
    Top = 33
    Width = 710
    Align = alClient
    BevelOuter = bvNone
    Color = 3091744
    ParentColor = False
    TabOrder = 1
  end
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Height = 3
    Top = 547
    Width = 902
    Align = alBottom
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ColorFrom = 4802023
    ColorTo = 2499503
    ImageIndex = 0
  end
  object JvNavPanelHeader2: TJvNavPanelHeader
    Left = 0
    Height = 3
    Top = 30
    Width = 902
    Align = alTop
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ColorFrom = 4331290
    ColorTo = 7050855
    ImageIndex = 0
  end
  object pnAtas: TPanel
    Left = 0
    Height = 30
    Top = 0
    Width = 902
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 30
    ClientWidth = 902
    Color = 4863064
    ParentColor = False
    TabOrder = 4
    object ledMenu: TbgraLedEx
      Cursor = crHandPoint
      Left = 2
      Height = 26
      Top = 2
      Width = 30
      Active = True
      LedType = ledSquare
      Bright = False
      Reflection = True
      Color = clAqua
      OnChange = ledMenuChange
      Debug = False
      Align = alLeft
      BorderSpacing.Right = 12
      BorderSpacing.Around = 2
      ParentColor = False
      OnClick = ledMenuClick
    end
    object BGRALabel1: TBGRALabel
      Left = 199
      Height = 24
      Top = 4
      Width = 451
      AutoSize = False
      Align = alClient
      Background.Color = clBtnFace
      Background.Gradient1.StartColor = clWhite
      Background.Gradient1.EndColor = clBlack
      Background.Gradient1.GradientType = gtLinear
      Background.Gradient1.Point1XPercent = 0
      Background.Gradient1.Point1YPercent = 0
      Background.Gradient1.Point2XPercent = 0
      Background.Gradient1.Point2YPercent = 100
      Background.Gradient2.StartColor = clWhite
      Background.Gradient2.EndColor = clBlack
      Background.Gradient2.GradientType = gtLinear
      Background.Gradient2.Point1XPercent = 0
      Background.Gradient2.Point1YPercent = 0
      Background.Gradient2.Point2XPercent = 0
      Background.Gradient2.Point2YPercent = 100
      Background.Gradient1EndPercent = 35
      Background.LightWidth = 0
      Background.LightOpacity = 64
      BorderSpacing.Left = 5
      BorderSpacing.Top = 2
      BorderSpacing.Around = 2
      Caption = 'Nonton Bioskop Online'
      ParentColor = False
      TextAlign = btaCenter
      TextShadowColorOpacity = 255
      GlobalOpacity = 255
      TextApplyGlobalOpacity = False
      Font.CharSet = ANSI_CHARSET
      Font.Color = 4259584
      Font.Height = -15
      Font.Name = 'Bookman Old Style'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
    end
    object ledTutup: TbgraLedEx
      Cursor = crHandPoint
      Left = 873
      Height = 30
      Top = 0
      Width = 29
      Active = True
      LedType = ledRound
      Bright = False
      Reflection = False
      Color = clRed
      Debug = False
      Align = alRight
      ParentColor = False
      OnClick = ledTutupClick
    end
    object lbTentang: TLabel
      Cursor = crHandPoint
      Left = 817
      Height = 19
      Top = 7
      Width = 52
      Align = alRight
      BorderSpacing.Top = 3
      BorderSpacing.Around = 4
      Caption = 'Tentang'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ledAboutClick
    end
    object lbBantuan: TLabel
      Cursor = crHandPoint
      Left = 747
      Height = 19
      Top = 7
      Width = 66
      Align = alRight
      BorderSpacing.Top = 3
      BorderSpacing.Around = 4
      Caption = 'Bantuan |'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ledManualClick
    end
    object lbBantuan1: TLabel
      Cursor = crHandPoint
      Left = 46
      Height = 19
      Top = 7
      Width = 65
      Align = alLeft
      BorderSpacing.Top = 3
      BorderSpacing.Around = 4
      Caption = 'Tambah |'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ledAddClick
    end
    object lbTentang1: TLabel
      Cursor = crHandPoint
      Left = 115
      Height = 19
      Top = 7
      Width = 77
      Align = alLeft
      AutoSize = False
      BorderSpacing.Top = 3
      BorderSpacing.Around = 4
      Caption = 'Edit'
      Font.CharSet = ANSI_CHARSET
      Font.Color = 4227327
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ledEditClick
    end
    object lbTime: TLabel
      Cursor = crHandPoint
      Left = 654
      Height = 19
      Top = 7
      Width = 66
      Align = alRight
      BorderSpacing.Top = 3
      BorderSpacing.Right = 23
      BorderSpacing.Around = 4
      Caption = 'Bantuan |'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ledManualClick
    end
  end
  object Koneksi: TZConnection
    ControlsCodePage = cCP_UTF8
    Properties.Strings = (
      'RawStringEncoding=DB_CP'
    )
    Port = 0
    Protocol = 'sqlite'
    Left = 232
    Top = 48
  end
  object tmMenu: TTimer
    Enabled = False
    Interval = 30
    OnTimer = tmMenuTimer
    Left = 232
    Top = 107
  end
  object DPosisi: TZQuery
    Connection = Koneksi
    Params = <>
    Left = 232
    Top = 184
  end
  object twaktu: TTimer
    OnTimer = twaktuTimer
    Left = 288
    Top = 48
  end
end