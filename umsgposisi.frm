object frmMessagePos: TfrmMessagePos
  Left = 313
  Height = 188
  Top = 256
  Width = 431
  AlphaBlend = True
  AlphaBlendValue = 200
  BorderStyle = bsNone
  Caption = 'frmMessagePos'
  ClientHeight = 188
  ClientWidth = 431
  Color = 998852
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  LCLVersion = '7.7'
  object Panel1: TPanel
    Left = 2
    Height = 184
    Top = 2
    Width = 427
    Align = alClient
    BorderSpacing.Around = 2
    BevelOuter = bvNone
    ClientHeight = 184
    ClientWidth = 427
    Color = 5653292
    ParentColor = False
    TabOrder = 0
    object lb1: TBGRALabelFX
      AnchorSideTop.Control = Panel1
      Left = 0
      Height = 34
      Top = 34
      Width = 427
      Align = alTop
      AutoSize = True
      Caption = 'Apakah Anda akan mulai dari '
      Font.CharSet = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -21
      Font.Name = 'Bookman Old Style'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Outline.Alpha = 255
      Outline.Color = clWhite
      Outline.OffsetX = 0
      Outline.OffsetY = 0
      Outline.Visible = False
      Shadow.Alpha = 255
      Shadow.Color = clLime
      Shadow.OffsetX = 0
      Shadow.OffsetY = 0
      Shadow.Visible = True
      Shadow.Radius = 5
    end
    object lb2: TBGRALabelFX
      Left = 0
      Height = 34
      Top = 68
      Width = 427
      Align = alTop
      AutoSize = True
      Caption = 'Posisi terakhir ditonton ?'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -21
      Font.Name = 'Bookman Old Style'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Outline.Alpha = 255
      Outline.Color = clWhite
      Outline.OffsetX = 0
      Outline.OffsetY = 0
      Outline.Visible = False
      Shadow.Alpha = 255
      Shadow.Color = clLime
      Shadow.OffsetX = 0
      Shadow.OffsetY = 0
      Shadow.Visible = True
      Shadow.Radius = 5
    end
    object spYes: TColorSpeedButton
      Cursor = crHandPoint
      Left = 40
      Height = 38
      Top = 120
      Width = 136
      Caption = 'YA'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = spYesClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = clNavy
      StateNormal.BorderColor = clTeal
      StateNormal.BorderWidth = 1
      StateHover.Color = clLime
      StateHover.BorderColor = 14120960
      StateHover.BorderWidth = 1
      StateActive.Color = clRed
      StateActive.BorderColor = 10048512
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object spNo: TColorSpeedButton
      Cursor = crHandPoint
      Left = 248
      Height = 38
      Top = 120
      Width = 136
      Caption = 'TIDAK'
      Flat = True
      Font.CharSet = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      OnClick = spNoClick
      ParentFont = False
      TextAutoSize = True
      Toggle = False
      Pressed = False
      PopupMode = False
      StateNormal.Color = 7945527
      StateNormal.BorderColor = 12107329
      StateNormal.BorderWidth = 1
      StateHover.Color = clLime
      StateHover.BorderColor = 14120960
      StateHover.BorderWidth = 1
      StateActive.Color = clRed
      StateActive.BorderColor = 10048512
      StateActive.BorderWidth = 1
      StateDisabled.Color = 13421772
      StateDisabled.BorderColor = 12566463
      StateDisabled.BorderWidth = 1
    end
    object Panel2: TPanel
      Left = 0
      Height = 34
      Top = 0
      Width = 427
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
end
