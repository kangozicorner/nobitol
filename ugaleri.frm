object frmGaleri: TfrmGaleri
  Left = 43
  Height = 676
  Top = 14
  Width = 925
  Caption = 'frmGaleri'
  ClientHeight = 676
  ClientWidth = 925
  Color = clBlack
  Font.CharSet = ANSI_CHARSET
  Font.Height = -13
  Font.Name = 'Century Gothic'
  Font.Pitch = fpVariable
  Font.Quality = fqDraft
  OnShow = FormShow
  LCLVersion = '7.7'
  object scbMain: TScrollBox
    Left = 0
    Height = 316
    Top = 360
    Width = 925
    HorzScrollBar.Page = 1
    VertScrollBar.Increment = 1
    VertScrollBar.Page = 1
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alBottom
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 0
  end
  object ScbBaner: TScrollBox
    Left = 0
    Height = 360
    Top = 0
    Width = 925
    HorzScrollBar.Page = 1
    HorzScrollBar.Visible = False
    VertScrollBar.Increment = 1
    VertScrollBar.Page = 1
    VertScrollBar.Smooth = True
    VertScrollBar.Visible = False
    Align = alClient
    BorderStyle = bsNone
    ClientHeight = 360
    ClientWidth = 925
    Color = clBlack
    ParentColor = False
    TabOrder = 1
    object pnBanner: TPanel
      Left = 0
      Height = 354
      Top = 0
      Width = 925
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 354
      ClientWidth = 925
      Color = clBlack
      Font.CharSet = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object imgBanner: TDBImage
        Left = 0
        Height = 354
        Top = 0
        Width = 599
        Align = alClient
        DataField = 'banner'
        DataSource = dsPlay
        Stretch = True
        Transparent = True
      end
      object pnSynopsis: TPanel
        Left = 611
        Height = 354
        Top = 0
        Width = 314
        Align = alRight
        BorderSpacing.Left = 12
        BevelOuter = bvNone
        ClientHeight = 354
        ClientWidth = 314
        Color = clBlack
        ParentColor = False
        TabOrder = 0
        object DBText1: TDBText
          AnchorSideBottom.Side = asrBottom
          Left = 3
          Height = 238
          Top = 74
          Width = 304
          Align = alTop
          AutoSize = False
          BorderSpacing.Right = 4
          BorderSpacing.Around = 3
          DataField = 'synopsis'
          DataSource = dsPlay
          Font.CharSet = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object spPlayMovie: TColorSpeedButton
          AnchorSideLeft.Control = pnSynopsis
          AnchorSideLeft.Side = asrCenter
          AnchorSideRight.Control = pnSynopsis
          AnchorSideRight.Side = asrBottom
          AnchorSideBottom.Control = pnSynopsis
          AnchorSideBottom.Side = asrBottom
          Cursor = crHandPoint
          Left = 181
          Height = 45
          Top = 299
          Width = 119
          Anchors = [akRight, akBottom]
          BorderSpacing.Left = 6
          BorderSpacing.Right = 14
          BorderSpacing.Bottom = 10
          Caption = ' Play'
          Color = 213
          Flat = True
          Font.CharSet = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000064000000640000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FFAA2B0CF9AA2957FAAB2898FAAB28C8FAAB28E9FAAB28F9F9AA29FFFAA7
            2AFDF9A32DF0F99E2FC8F693356FFF80400C0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFAA2B18FAAC
            2996FAAB28F4FAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF9A02EFCF69035A7F8873C22000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FFB62407F9AC2881FAAB28F4FAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAA29FFF89932FCF6863B87FF92
            4907000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FFAA2415FAAA28C1FAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFF99F2EFFF589
            3BC7F48A40180000000000000000000000000000000000000000000000000000
            00000000000000000000F9AC272EFBAB28E3FAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFF8A1
            2DFFF5893AE3F488392D00000000000000000000000000000000000000000000
            000000000000FFAA2B18FAAC27E2FAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFF79B31FFF5883BE5F684391B000000000000000000000000000000000000
            0000FF9F2008FAAA28C7FAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFF79236FFF5893BC6FF9249070000000000000000000000000000
            0000F9AC298AFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAB035FFFCC15CFFFAAD2BFFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAA62AFFF5883AFFF6883B87000000000000000000000000F8AC
            2925FAAB28FAFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFBB94BFFFFF9EFFFFFFFFFFFFFF7E2FFFCCA6BFFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFF79434FFF5883BF9F8873C220000000000000000FAAC
            279CFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDD799FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9FFFEEABAFFFBB844FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFF9A52BFFF5883BFFF5883C9A00000000FFAA2B0CFAAB
            28F4FAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBFFFDDB
            95FFFAB135FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF68E38FFF5883BF4FF80400CF9AB2958FAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
            FAFFFFF3D0FFFCCC70FFFAAD2CFFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF79733FFF5883BFFF6873C55FAAB289AFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFBEBFFFEEAB3FFFBC055FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF8A12EFFF5883BFFF5883B98FAAA28CAFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFAFFFFF7D7FFFEE09BFFFBB741FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF9A52BFFF5883BFFF5883BC7FAAB28EBFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE6FFFFF1C0FFFCCA6CFFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF9A929FFF5883BFFF5883BE9FAAB28F9FAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CFFFFFF3C3FFFBB3
            38FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFF5893AFFF5883BF8FAAB28F9FAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CFFFFFF3C4FFFBB3
            3AFFFAAB28FFFAAB28FFFAAB28FFFAAB28FFF5893AFFF5883BF8FAAB28EBFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE6FFFFF1C0FFFCCA6CFFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF9A929FFF5883BFFF5883BE9FAAA28CAFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFAFFFFF7D7FFFEE09BFFFBB741FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF9A62BFFF5883BFFF5883BC7FAAB279BFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFBEBFFFEEAB3FFFBC055FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF8A12EFFF5883BFFF5893A99F9AC2859FAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
            FAFFFFF3D0FFFCCC70FFFAAD2CFFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF79732FFF5883BFFF6873B57FFA4240EFAAB
            28F5FAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDDCA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBFFFDDB
            95FFFAB136FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF68D38FFF5883BF4EB893B0D00000000FAAB
            299DFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFDD799FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9FFFEEABAFFFBB844FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFF9A52BFFF5883BFFF5883C960000000000000000F8A8
            2826FAAB28FBFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFBB94BFFFFF9F0FFFFFFFFFFFFF7E3FFFCCA6BFFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFF79434FFF5883BF4F5853D1900000000000000000000
            0000FAAB288CFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAB035FFFCC15CFFFAAD2BFFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAA72BFFF5883AFFF5883B810000000000000000000000000000
            0000FF9F2008FAAA28D0FAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFF79136FFF5883BCCFF8E39090000000000000000000000000000
            000000000000F8AC2925FAAB28EAFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFF79B30FFF5883BE5F684391B000000000000000000000000000000000000
            00000000000000000000FAAC2A31FAAB28EAFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFF8A1
            2EFFF5883BE4F48B3D2E00000000000000000000000000000000000000000000
            0000000000000000000000000000F8AC2925FAAA28D3FAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFF99F2FFFF68A
            3BC8F5853D190000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FFAA1C09FAAB288CFAAB28FBFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAA29FFF89A33FCF68A3B8BFF80
            4008000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000F8A82826FAAB
            299DFAAB28F5FAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB28FFFAAB
            28FFFAAB28FFFAAB28FFFAAB28FFF8A22EFCF68F38AAF88A3E25000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FFA4240EF9AC2859FAAB279BFAAA28CAFAAB28EAFAAB28FAFAAA29FFF9A7
            29FDF9A32CF1F99C30CBF6943372EB893B0D0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000
          }
          OnClick = spPlayMovieClick
          ParentFont = False
          TextAutoSize = True
          Toggle = False
          Pressed = False
          PopupMode = False
          StateNormal.Color = 8082348
          StateNormal.BorderColor = clBlack
          StateNormal.BorderWidth = 1
          StateHover.Color = 6766608
          StateHover.BorderColor = clBlack
          StateHover.BorderWidth = 1
          StateActive.Color = 9585851
          StateActive.BorderColor = clBlack
          StateActive.BorderWidth = 1
          StateDisabled.Color = clBlack
          StateDisabled.BorderColor = clBlack
          StateDisabled.BorderWidth = 1
        end
        object DBText4: TDBText
          Left = 3
          Height = 35
          Top = 3
          Width = 308
          Align = alTop
          AutoSize = False
          BorderSpacing.Around = 3
          DataField = 'judul'
          DataSource = dsPlay
          Font.CharSet = ANSI_CHARSET
          Font.Color = 11140947
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 3
          Height = 21
          Top = 50
          Width = 304
          Align = alTop
          AutoSize = False
          BorderSpacing.Top = 9
          BorderSpacing.Right = 4
          BorderSpacing.Around = 3
          DataField = 'sutradara'
          DataSource = dsPlay
          Font.CharSet = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqCleartypeNatural
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object DBText5: TDBText
        AnchorSideLeft.Control = imgBanner
        AnchorSideRight.Control = imgBanner
        AnchorSideRight.Side = asrBottom
        AnchorSideBottom.Control = imgBanner
        AnchorSideBottom.Side = asrBottom
        Left = 14
        Height = 28
        Top = 310
        Width = 585
        Anchors = [akLeft, akRight, akBottom]
        AutoSize = False
        BorderSpacing.Left = 14
        BorderSpacing.Bottom = 16
        DataField = 'pemain'
        DataSource = dsPlay
        Font.CharSet = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object taPlay: TZQuery
    Connection = frmMain.Koneksi
    SQL.Strings = (
      'select * from movie where id= :vid'
    )
    Params = <    
      item
        Name = 'vid'
      end>
    Left = 336
    Top = 136
    ParamData = <    
      item
        Name = 'vid'
      end>
  end
  object taMovie: TZQuery
    Connection = frmMain.Koneksi
    Params = <>
    Left = 337
    Top = 192
  end
  object dsMovie: TDataSource
    DataSet = taMovie
    Left = 376
    Top = 192
  end
  object dsPlay: TDataSource
    DataSet = taPlay
    Left = 376
    Top = 136
  end
end
