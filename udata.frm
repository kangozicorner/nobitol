object frmData: TfrmData
  Left = 43
  Height = 521
  Top = 71
  Width = 922
  AlphaBlendValue = 220
  BorderStyle = bsNone
  Caption = 'frmData'
  ClientHeight = 521
  ClientWidth = 922
  Color = clYellow
  OnShow = FormShow
  Position = poDesktopCenter
  LCLVersion = '7.7'
  object Panel1: TPanel
    Left = 2
    Height = 517
    Top = 2
    Width = 918
    Align = alClient
    BorderSpacing.Around = 2
    BevelOuter = bvNone
    ClientHeight = 517
    ClientWidth = 918
    Color = clBlack
    Font.Name = 'Century Gothic'
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Height = 36
      Top = 473
      Width = 918
      Align = alBottom
      BorderSpacing.Bottom = 8
      BevelOuter = bvNone
      ClientHeight = 36
      ClientWidth = 918
      Color = 1513233
      Font.CharSet = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Tahoma'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object spCover: TColorSpeedButton
        Cursor = crHandPoint
        Left = 3
        Height = 30
        Top = 3
        Width = 131
        Align = alLeft
        BorderSpacing.Around = 3
        Caption = '# Cover'
        Flat = True
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        OnClick = spCoverClick
        ParentFont = False
        TextAutoSize = True
        Toggle = False
        Pressed = False
        PopupMode = False
        StateNormal.Color = 4472098
        StateNormal.BorderColor = 4472098
        StateNormal.BorderWidth = 1
        StateHover.Color = 5323116
        StateHover.BorderColor = 6636181
        StateHover.BorderWidth = 1
        StateActive.Color = 5868104
        StateActive.BorderColor = 5868104
        StateActive.BorderWidth = 1
        StateDisabled.Color = 13421772
        StateDisabled.BorderColor = 12566463
        StateDisabled.BorderWidth = 1
      end
      object spBanner: TColorSpeedButton
        Cursor = crHandPoint
        Left = 148
        Height = 30
        Top = 3
        Width = 139
        Align = alLeft
        BorderSpacing.Left = 11
        BorderSpacing.Around = 3
        Caption = '# Banner'
        Flat = True
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        OnClick = spBannerClick
        ParentFont = False
        TextAutoSize = True
        Toggle = False
        Pressed = False
        PopupMode = False
        StateNormal.Color = 4472098
        StateNormal.BorderColor = 4472098
        StateNormal.BorderWidth = 1
        StateHover.Color = 5323116
        StateHover.BorderColor = 6636181
        StateHover.BorderWidth = 1
        StateActive.Color = 5868104
        StateActive.BorderColor = 5868104
        StateActive.BorderWidth = 1
        StateDisabled.Color = 13421772
        StateDisabled.BorderColor = 12566463
        StateDisabled.BorderWidth = 1
      end
      object spSave: TColorSpeedButton
        Cursor = crHandPoint
        Left = 790
        Height = 30
        Top = 3
        Width = 121
        Align = alRight
        BorderSpacing.Left = 50
        BorderSpacing.Right = 4
        BorderSpacing.Around = 3
        Caption = 'Simpan'
        Color = clLime
        Flat = True
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        OnClick = spSaveClick
        ParentFont = False
        TextAutoSize = True
        Toggle = False
        Pressed = False
        PopupMode = False
        StateNormal.Color = 4756813
        StateNormal.BorderColor = 4756813
        StateNormal.BorderWidth = 1
        StateHover.Color = 5323116
        StateHover.BorderColor = 6636181
        StateHover.BorderWidth = 1
        StateActive.Color = 5868104
        StateActive.BorderColor = 5868104
        StateActive.BorderWidth = 1
        StateDisabled.Color = 13421772
        StateDisabled.BorderColor = 12566463
        StateDisabled.BorderWidth = 1
      end
      object spHapus: TColorSpeedButton
        Cursor = crHandPoint
        Left = 667
        Height = 30
        Top = 3
        Width = 70
        Align = alRight
        BorderSpacing.Around = 3
        Caption = 'Hapus'
        Flat = True
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        OnClick = spHapusClick
        ParentFont = False
        TextAutoSize = True
        Toggle = False
        Pressed = False
        PopupMode = False
        StateNormal.Color = 2170532
        StateNormal.BorderColor = 2170532
        StateNormal.BorderWidth = 1
        StateHover.Color = 5323116
        StateHover.BorderColor = 6636181
        StateHover.BorderWidth = 1
        StateActive.Color = 5868104
        StateActive.BorderColor = 5868104
        StateActive.BorderWidth = 1
        StateDisabled.Color = 13421772
        StateDisabled.BorderColor = 12566463
        StateDisabled.BorderWidth = 1
      end
      object DBEdit7: TDBEdit
        Left = 360
        Height = 22
        Top = 8
        Width = 80
        DataField = 'id'
        DataSource = DsMovie
        Alignment = taRightJustify
        MaxLength = 0
        TabOrder = 0
        Visible = False
      end
    end
    object Panel4: TPanel
      Left = 0
      Height = 447
      Top = 26
      Width = 504
      Align = alLeft
      BevelOuter = bvNone
      ClientHeight = 447
      ClientWidth = 504
      Color = clBlack
      Font.CharSet = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Montserrat'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 12
        Height = 18
        Top = 31
        Width = 36
        Caption = 'Judul'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Height = 18
        Top = 72
        Width = 69
        Caption = 'Sutradara'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object Label3: TLabel
        Left = 12
        Height = 18
        Top = 112
        Width = 56
        Caption = 'Genre 1'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object Label4: TLabel
        Left = 293
        Height = 18
        Top = 116
        Width = 56
        Caption = 'Genre 2'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Height = 18
        Top = 144
        Width = 40
        Caption = 'Tahun'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object Label9: TLabel
        Left = 12
        Height = 18
        Top = 240
        Width = 42
        Caption = 'Cover'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object Label10: TLabel
        Left = 144
        Height = 18
        Top = 240
        Width = 50
        Caption = 'Banner'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object Panel5: TPanel
        Left = 144
        Height = 178
        Top = 264
        Width = 352
        BevelOuter = bvNone
        ClientHeight = 178
        ClientWidth = 352
        Color = 8752194
        ParentColor = False
        TabOrder = 0
        object DBImage3: TDBImage
          Left = 0
          Height = 178
          Top = 0
          Width = 352
          Align = alClient
          DataField = 'banner'
          DataSource = DsMovie
          Stretch = True
        end
      end
      object Panel6: TPanel
        Left = 3
        Height = 178
        Top = 264
        Width = 130
        BorderSpacing.Around = 2
        BevelOuter = bvNone
        ClientHeight = 178
        ClientWidth = 130
        Color = 7039805
        ParentColor = False
        TabOrder = 1
        object DBImage1: TDBImage
          Left = 2
          Height = 174
          Top = 2
          Width = 126
          Align = alClient
          BorderSpacing.Around = 2
          DataField = 'cover'
          DataSource = DsMovie
          Stretch = True
        end
      end
      object Label11: TLabel
        Left = 11
        Height = 18
        Top = 192
        Width = 31
        Caption = 'URL'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object deGenre1: TDBComboBox
        Left = 148
        Height = 25
        Top = 112
        Width = 135
        Color = 5912126
        DataField = 'genre1'
        DataSource = DsMovie
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ItemHeight = 17
        Items.Strings = (
          'Aksi'
          'Drama'
          'Petualangan'
          'Keluarga'
          'Kriminal'
          'Sejarah'
          'Animasi'
          'Komedi'
          'Horror'
          'Triller'
          'Sci-fi'
          'Biografi'
          'Misteri'
        )
        MaxLength = 0
        ParentFont = False
        Style = csDropDownList
        TabOrder = 2
      end
      object deGenre2: TDBComboBox
        Left = 368
        Height = 25
        Top = 112
        Width = 128
        Color = 5912126
        DataField = 'genre2'
        DataSource = DsMovie
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ItemHeight = 17
        Items.Strings = (
          'Aksi'
          'Drama'
          'Petualangan'
          'Keluarga'
          'Kriminal'
          'Sejarah'
          'Animasi'
          'Komedi'
          'Horror'
          'Triller'
          'Sci-fi'
          'Biografi'
          'Misteri'
        )
        MaxLength = 0
        ParentFont = False
        Style = csDropDownList
        TabOrder = 3
      end
      object deGenre3: TDBComboBox
        Left = 148
        Height = 25
        Top = 144
        Width = 135
        Color = 5912126
        DataField = 'tahun'
        DataSource = DsMovie
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ItemHeight = 17
        Items.Strings = (
          '2022'
          '2021'
          '2020'
          '2019'
          '2018'
          '2017'
          '2016'
          '2015'
          '2014'
          '2013'
          '2012'
          '2011'
          '2010'
          '2009'
          '2008'
          '2007'
          '2006'
          '2005'
          '2004'
          '2003'
          '2002'
          '2001'
          '2000'
          '1999'
          '1998'
          '1997'
          '1996'
          '1995'
          '1994'
          '1993'
          '1992'
          '1991'
          '1990'
          '1989'
          '1988'
          '1987'
          '1986'
          '1985'
          '1984'
          '1983'
        )
        MaxLength = 0
        ParentFont = False
        Style = csDropDownList
        TabOrder = 4
      end
      object Panel8: TPanel
        Left = 148
        Height = 33
        Top = 31
        Width = 348
        BevelOuter = bvNone
        ClientHeight = 33
        ClientWidth = 348
        Color = 4733480
        ParentColor = False
        TabOrder = 5
        object deJudul: TDBEdit
          Left = 5
          Height = 23
          Top = 5
          Width = 338
          DataField = 'judul'
          DataSource = DsMovie
          Align = alClient
          BorderSpacing.Around = 5
          BorderStyle = bsNone
          Color = 4733480
          Font.CharSet = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          MaxLength = 200
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel9: TPanel
        Left = 148
        Height = 33
        Top = 70
        Width = 348
        BevelOuter = bvNone
        ClientHeight = 33
        ClientWidth = 348
        Color = 4733480
        ParentColor = False
        TabOrder = 6
        object DBEdit2: TDBEdit
          Left = 5
          Height = 23
          Top = 5
          Width = 338
          DataField = 'sutradara'
          DataSource = DsMovie
          Align = alClient
          BorderSpacing.Around = 5
          BorderStyle = bsNone
          Color = 4733480
          Font.CharSet = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          MaxLength = 200
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel10: TPanel
        Left = 148
        Height = 33
        Top = 196
        Width = 345
        BevelOuter = bvNone
        ClientHeight = 33
        ClientWidth = 345
        Color = 4733480
        ParentColor = False
        TabOrder = 7
        object deURL: TDBEdit
          Left = 5
          Height = 23
          Top = 5
          Width = 335
          DataField = 'media'
          DataSource = DsMovie
          Align = alClient
          BorderSpacing.Around = 5
          BorderStyle = bsNone
          Color = 4733480
          Font.CharSet = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          MaxLength = 200
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object Panel3: TPanel
      Left = 504
      Height = 447
      Top = 26
      Width = 414
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 447
      ClientWidth = 414
      TabOrder = 2
      object DBMemo1: TDBMemo
        Left = 5
        Height = 137
        Top = 31
        Width = 404
        Align = alTop
        BorderSpacing.Around = 5
        BorderStyle = bsNone
        Color = 4733480
        DataField = 'pemain'
        DataSource = DsMovie
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Label7: TLabel
        Left = 0
        Height = 18
        Top = 173
        Width = 414
        Align = alTop
        Alignment = taCenter
        Caption = 'Sinopsis'
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
      end
      object deSInops: TDBMemo
        Left = 5
        Height = 246
        Top = 196
        Width = 404
        Align = alClient
        BorderSpacing.Around = 5
        BorderStyle = bsNone
        Color = 4733480
        DataField = 'synopsis'
        DataSource = DsMovie
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object Panel11: TPanel
        Left = 0
        Height = 26
        Top = 0
        Width = 414
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel11'
        ClientHeight = 26
        ClientWidth = 414
        TabOrder = 2
        object Label6: TLabel
          Left = 5
          Height = 16
          Top = 5
          Width = 404
          Align = alClient
          Alignment = taCenter
          BorderSpacing.Around = 5
          Caption = 'Pemain'
          Font.CharSet = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentFont = False
        end
      end
    end
    object Panel12: TPanel
      Left = 0
      Height = 26
      Top = 0
      Width = 918
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Input Data Movie'
      ClientHeight = 26
      ClientWidth = 918
      Color = 3223857
      ParentColor = False
      TabOrder = 3
      object ledTutup: TbgraLedEx
        Cursor = crHandPoint
        Left = 892
        Height = 26
        Top = 0
        Width = 26
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
      object BGRALabel1: TBGRALabel
        Left = 7
        Height = 20
        Top = 4
        Width = 883
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
        Caption = 'Input Data Movie'
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
    end
  end
  object DsMovie: TDataSource
    DataSet = qaMovie
    Left = 628
    Top = 416
  end
  object odPicBanner: TOpenPictureDialog
    Filter = 'JPEG/JPG|*.jpg|BMP File|*.bmp'
    Left = 716
    Top = 416
  end
  object odSub: TOpenDialog
    Filter = 'SubTitle File|*.srt|Text File|*.csv'
    Left = 584
    Top = 416
  end
  object qaMovie: TZQuery
    Connection = frmMain.Koneksi
    SQL.Strings = (
      'select * from movie where id= :vid'
    )
    Params = <    
      item
        Name = 'vid'
      end>
    Left = 677
    Top = 380
    ParamData = <    
      item
        Name = 'vid'
      end>
  end
end
