object frmPlayer: TfrmPlayer
  Left = 285
  Height = 431
  Top = 256
  Width = 913
  ClientHeight = 431
  ClientWidth = 913
  Color = clBlack
  OnCreate = FormCreate
  OnShow = FormShow
  LCLVersion = '7.7'
  object VLCPlayer: TPasLibVlcPlayer
    Left = 0
    Height = 416
    Top = 0
    Width = 704
    Align = alClient
    BevelOuter = bvNone
    Caption = 'VLCPlayer'
    ParentColor = False
    PopupMenu = popPlayer
    TabOrder = 0
    SnapShotFmt = 'png'
    OnMediaPlayerPlaying = VLCPlayerMediaPlayerPlaying
    OnMediaPlayerEndReached = VLCPlayerMediaPlayerEndReached
    OnMediaPlayerPositionChanged = VLCPlayerMediaPlayerPositionChanged
    MouseEventsHandler = mehComponent
  end
  object pnPogress: TPanel
    Left = 0
    Height = 15
    Top = 416
    Width = 913
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 15
    ClientWidth = 913
    TabOrder = 1
    Visible = False
    object ProgressPlayer: TBGRAFlashProgressBar
      Cursor = crHandPoint
      Left = 0
      Height = 15
      Top = 0
      Width = 851
      Align = alClient
      OnClick = ProgressPlayerClick
      MinValue = 0
      MaxValue = 100
      Value = 30
      BarColor = clLime
      BackgroundColor = clBlack
      BackgroundRandomizeMinIntensity = 4000
      BackgroundRandomizeMaxIntensity = 5000
      BackgroundRandomize = False
    end
    object lbProgress: TLabel
      Left = 856
      Height = 15
      Top = 0
      Width = 57
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      BorderSpacing.Left = 5
      Caption = '00:00'
      Font.CharSet = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Montserrat'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Splitter1: TSplitter
    Left = 704
    Height = 416
    Top = 0
    Width = 5
    Align = alRight
    ResizeAnchor = akRight
  end
  object grdSensor: TDBGrid
    Left = 711
    Height = 412
    Top = 2
    Width = 200
    Align = alRight
    AutoFillColumns = True
    BorderSpacing.Around = 2
    BorderStyle = bsNone
    Color = 3425329
    Columns = <    
      item
        Title.Caption = 'Awal'
        Width = 100
        FieldName = 'Awal'
      end    
      item
        Title.Caption = 'Akhir'
        Width = 100
        FieldName = 'Akhir'
      end    
      item
        Title.Caption = 'idy'
        Width = 0
        Visible = False
        FieldName = 'idy'
      end>
    DataSource = DsSensor
    FixedCols = 0
    Flat = True
    Font.CharSet = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Options = [dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    ParentFont = False
    PopupMenu = popGrid
    Scrollbars = ssNone
    TabOrder = 3
    Visible = False
    OnDblClick = grdSensorDblClick
  end
  object popPlayer: TPopupMenu
    Images = ImageList1
    Left = 312
    Top = 176
    object spMenu: TMenuItem
      Caption = 'Menu'
      ImageIndex = 10
      OnClick = spMenuClick
    end
    object mnYt: TMenuItem
      Caption = 'Open Youtube'
      ImageIndex = 18
      OnClick = mnYtClick
    end
    object mnImdb: TMenuItem
      Caption = 'Open IMDB'
      ImageIndex = 20
      OnClick = mnImdbClick
    end
    object mnCapture: TMenuItem
      Caption = 'Open FCapture'
      ImageIndex = 21
      OnClick = mnCaptureClick
    end
    object Separator3: TMenuItem
      Caption = '-'
    end
    object spPause: TMenuItem
      Caption = 'Pause'
      ImageIndex = 1
      OnClick = spPauseClick
    end
    object spStop: TMenuItem
      Caption = 'Stop'
      ImageIndex = 2
      OnClick = spStopClick
    end
    object spResume: TMenuItem
      Caption = 'Resume'
      ImageIndex = 0
      OnClick = spResumeClick
    end
    object mnNext: TMenuItem
      Caption = 'Next'
      ImageIndex = 22
      OnClick = mnNextClick
    end
    object mnBack: TMenuItem
      Caption = 'Back'
      ImageIndex = 23
      OnClick = mnBackClick
    end
    object Separator1: TMenuItem
      Caption = '-'
    end
    object spMte: TMenuItem
      Caption = 'Mute'
      ImageIndex = 3
      OnClick = spMteClick
    end
    object spUnmute: TMenuItem
      Caption = 'Unmute'
      ImageIndex = 4
      OnClick = spUnmuteClick
    end
    object spAddData: TMenuItem
      Caption = 'Tambah Data'
      ImageIndex = 5
      OnClick = spAddDataClick
    end
    object spEditData: TMenuItem
      Caption = 'Edit Data'
      ImageIndex = 6
      OnClick = spEditDataClick
    end
    object Separator2: TMenuItem
      Caption = '-'
    end
    object mnSenBegin: TMenuItem
      Caption = 'Mulai Sensor'
      ImageIndex = 12
      OnClick = mnSenBeginClick
    end
    object mnSenEnd: TMenuItem
      Caption = 'Akhiri Sensor'
      ImageIndex = 13
      OnClick = mnSenEndClick
    end
    object mnSenList: TMenuItem
      Caption = 'Show Daftar Sensor'
      ImageIndex = 14
      OnClick = mnSenListClick
    end
    object mnHidegrd: TMenuItem
      Caption = 'Hide  Data Sensor'
      ImageIndex = 16
      OnClick = mnHidegrdClick
    end
    object spCapture: TMenuItem
      Caption = 'Capture'
      ImageIndex = 11
      OnClick = spCaptureClick
    end
    object spHelp: TMenuItem
      Caption = 'Bantuan'
      ImageIndex = 9
      OnClick = spHelpClick
    end
    object spInfo: TMenuItem
      Caption = 'Info Aplikasi'
      ImageIndex = 8
      OnClick = spInfoClick
    end
    object Separator4: TMenuItem
      Caption = '-'
    end
    object mnLogout: TMenuItem
      Caption = 'Keluar Aplikasi'
      ImageIndex = 17
      OnClick = mnLogoutClick
    end
  end
  object ImageList1: TImageList
    Left = 352
    Top = 176
    Bitmap = {
      4C7A180000001000000010000000BD0E00000000000078DAED5C077455451A7E
      0910021840080A4813055CCA92488222D19504214BB5651511A4198A22091D6B
      8425AF24A18A66CF0A1E5D2B16B0C05110B19D63598F2C562088A0141704F25A
      9096D9F99FDF0DF3863BB7BD048F6BE69CEFBC3777E6FBEF94FF9FFABFE77245
      C2731C57B99C871D1C951CAB39DA3AE43320C451C051DF215F4319474E0C7C0D
      1B39BAC5C0279CE058CAD1C4215FC3CF1CD338E21DF2357C26F5F7B9E21FE0C8
      75507EADFD1A3BECBFAE0EFA8F9E0D3987FA4BF6F314474B07F6F334C7150E6D
      97ECE4B00ED60879862AF268D06BF77704FECD06FD53CBAFE5D7F27F3BFE3C8E
      0A9BE33F0367AE43AE2883D5A2167F60C46203E1186C90B87338BEE2B8C9C23A
      21196BA9FBA5E737721CE31861C04DE1D885F72ED5493792711BCACA0CF82ED4
      41945197C3A3536F15FF028ED7B0D624599770FC6483BF4A5AAF928C2E1CFB2D
      F2D74BF94EA12EB20CAB7C950C3B7C3D1976F9B28CB90AFE3316F600D4A6750C
      FA6F02F61784CD0632AC0495FE9C32D175398C92ECF34BC46FB22143B61F2B36
      27871692FDD2FBBF648CB96A023C64725CA4F33C8EA395097724C7498E6C9DB4
      D1D807272BB893384EA3ADB2A5F726617F55CEF1840E778ED4D7227F0AC74E8E
      448EBB90DE87E31B8C13FFD5D1956CE1DD5DA17F05D8FF5219E69BE87C36ECE5
      25C8211BD98AEFEF72BC61819F0F7DA3BACF4219123896E88C4D35C1372B7F4C
      ED176BFF55A7FE5487FE0AF9AEE368E3C47E62B4DBCE68E3D7D1BFFBF19D9E75
      36E051B9F24CD62215C813A7C35D6763EDB24E9401997AF95649F3B2883CA1BE
      AA32DF0AA8EAA2B51573C0273C84B675CA7F5DB2C1550287D00E109F89EDB1BF
      1AF8B1963FD6F68BA9FF62D59FEAD0DF58EDA73AECF7FFD4FE8D60C5FE65ECE6
      08D8B07F119F7334E378D886FD6BD8026EA6B41712ED3F00D96189FB1F8EE63A
      5CD9FE77EBBC63AB0157CFFEB708F93FC69E51C555D9FF566D6E34E11AD93FAD
      B1679B70ADD8BFA9FED4DA7F8DD9FF5AE4CDC377ABF64FF7282374CA37026966
      F6BFD2A08E2B2DCCFF830DF8832DCCFF7D0DF87D4DE67FC26C03FE6C03FBD770
      44B16FBB0869CCC2FC7F00EBDCD6C0683CB33AFF533FEDC17E7523BE579AD8FF
      49E8C9308E063AE56F80B4B5C82BDB3F8D153758B08F1B9057CFFE2BB1478A53
      D8C72CE431B3FF23689BD9C0EB7856EDF6AF13BA636FF715EE3243F8BE0469AA
      407BC215C2DE49750EB41C7965EE261BE3E7DB928C150679E99E3A43E7F932A1
      BEA70CF8C4BD5A51976E681715F7238E4739DE52A42FE2F85A913651A85F1345
      9E2F85F5888C07703EE1C23DB65E9E80019F900EFE0B8A74BF41F9BF15CA7ECC
      A0FC8B1569F7823FC1A07CC5E803BDFEEB28B45F7B45FF697E01CB15FD4E6766
      03D08F72FA12497FDFB6A1BF34A6D5D3B1816526BA7812EFAD676087DDA057D4
      B64180BE9758F083B0132EE3F8A7035E739C61525D36D8E025C0F7A55CEA7FB3
      10873DE0F7C2BD87C61F63C225FDFF40C8BF4DD2F75405AF0D7C392A259F9925
      525F264ABC4618A7657B790F6B8793C2B3AF055EBCC11CFB06E6E0DDD2F3E7C0
      ED8F35B79EBE3D87765F6B609FDD704E2EBFBB14E59AA1903D54E7BC7D087CC8
      16A2DF7A731C57F03B58E8FB5D0A6E39E49B05713DB347887F68516719EC2F15
      6D41FB9927398A2CF2692E1D1E838D4EB591B71073FD42C41B40EF8E72FC15CF
      FAE09C56DBCB8A2128CC092E69CE5D8D678F08CF6E94F80B31172D403C116B02
      7ADF403C231FA77D1C9F709CEFAADED0083A992C3CBB14EF16FDD5FA29FC0137
      A05EDBA15B6D85B1E661E4B94BB0FD1E127F9BA02F75A1335A5B3D813C5EE1D9
      4089DF0B36D75F78968BB1B615E2E763CC9C6E51FFED840C9CEF8BFA3A03E767
      ED843BA852E10C5FF643D3F655F530F66A757D0A798A85678324FE6BC2F9810B
      75F60B3E2E14C623FE0BE62F3190BFDE5F70C6AF05DAF35C29E5BB9CE3628B6D
      427B85FB389A3A68CFEEC2FC51EA807F89305F1499F49BECFFB8C140BF99A0E7
      1A77B083F20D1174DE498813CAA2173A364D4A1CD72AB961AE417FE9F1EB77B8
      A8E9AB4D92124F0CC9EAC286A75DCC9A272556A67569F9AECEBEE5ACB6226EFF
      BE979CDEF7C92C56B1ED41C65E98C27E7E7C1C1B98D28EA55FD672B34E9B4695
      99DEAB7135BE2683CA6134EF517DA9CC1A57E41386A57560BC3DEEAC293EB533
      957FEFC786E56F6FD4061DDA345D937555C7D39A0C8D3BA0675B96DAE9C20D0A
      9D8C5A277219AF503906F7EB5C49656EC6DF0B6E8285FEAF2A4A52A3C431A86F
      7B1BFA63577FB7BBACFB198B6118ECA7AF604776EC779BD15993C919088DC37B
      F5CED92C70938533822F74D2E331C73653F03B88E7F13AE925C2DE36C301FF59
      213D28CBB0C0EF24AD85A364C87CCC89F3B037D020FBD204B5BED2E1BF6271CF
      B959C17FDE22BF4CC14FC2BC3A57C0CB3A3EAAA916DB2F4DDAE3D15D798A8DF6
      7F47483FC4D1D366FF697E4807698DE6407FEA610D96E4447F63B51FBBF60BD0
      F76287B2BE40594E9BF93428F8E2BEB483224F338C09F176F958A368675C2576
      F8E00685F467ADF275B8342674B2C2C7981E946C68BD3446CCC3D8A1C7DF6CD1
      A65F51F0CB2CF29F57F0535D67FBA5BF2C8D11E33176A8DA2F05B62FEED9D36C
      F65F4F8C01553EF10EF4A707C6028A3CE3507F933026D4AB01FB89D57EE3B1BF
      9F6B119912BFD4C6B9E726F84FADC079D8209C391CB3F0DE19E07EEC8AFE8D5F
      44372CD4B389C425BC6985AFE01E803F6B151FFBEB52D8552F032EDDC97441BA
      C89F259DCD0F5471E92C40873FD6A4FDF7E17E88DAFF171D7E82C13DF65E6DFC
      D2F6D0325F90F19A8A6BC617643C099B20FF854BA57443BE38572A9E5BE21BE8
      83C8B7AABF22226B1307F623C2E7D07E0959DA1D62AFFEC7DAF5CE0A7DCAF14D
      EF7EA19E669B0ECA734566E85BE280BB8583013F1BC9A0B4489E33F93FE7F841
      882B65E870097B7A6755F4E19F7E23190AAE9FB891743D19FD43477A5F174E03
      F790C40DA56706AF892A9F7E39287ED48C6B22C312374A466628A4C3AD30E30A
      6D7554871FA0F6B0C03DA42C3FDAD42AF70A5EE6DE59E190990CA33E32EA5B33
      AE61BF68FA9115FC4EA557E67D1BDE19B13B13AE818CAFD3FA05BAF0CF1DE959
      A17D465C49C67E8EEDC4D53DD4602CAEB830D8D5E70B0FF19584079594FCD2D9
      CA81444101ABEB7B3038D5373FB4AB68619815B9397C1C256156BCB86267F1F2
      F024CAA3C75D9C77B4A9F7DED07BBEFB43277C05E1477DF303572F2AF037F378
      8E34F17A83FD8A8AC2A55CC6A9E2A5E18D8B171F8D3A4F5D9DC3EA786704DFF3
      CE0EEE2B9AA76E035E9FCB8B16551C24196239BC53FD777BF382278A66064CDB
      AFB8389C5EB4287CBC644978E2AF13018BF34C09ECF24CF53F5A256F56F00BEF
      EC509E162F2A08E5F9E6877756C9F08557F23689C40BC706BB7A260618979151
      C59F1ECAF3CE0C56FAE686F27DF772DC1FAA2419557CCFB10C6A57EA17CF98C0
      50CFF8002BCE0D2447D5353F944F32789B54928CA88B9EC24073EA1B9F2F945D
      787B60987B8C9F158C3C1CF5DB7ADF34CECFE3FC199C3F2B9AEFF51E4A2A5AC0
      FB75617870E1C86057F7283F738F2DCFAC4A9FECCFE3F5A974DFEDCF8F9483CB
      F0CE3C537EEF7D1557FA0A42CCBB20D085DACF7D9B7FB77BA4FF312DDD332150
      E6CDF59FC99FC7DB637AB0ACAA3DE78597FB1E08EF242EC5DD39FEBBDD23FCA7
      DCB795F732EB3F5E9714EF9CE071DFBCE064517F0A73CA377319077939D295DC
      BC508A273FB8D73733B8893851BA7FFDD1A624A3F0D6F2E3EE91E52B3DA30319
      85A303CD0BA61C3CAF7062A08F7B5270B9E7AEC071CFB4C0A665530FEBFE8F01
      C974DFEC9F52784BF94EDE262CD2AEBC6FDCE3FCCC931BF8CE332938597EAF2A
      2CC80974F18C080C2D1CE51FE41DA76FE7088F9BF81C50DAFB2EF5FF12E87169
      4D443A43FFBF41BF85F801E7724667A84CE7FEB8AA69843B44ABFCD50ABE8FE3
      CF36F9D7032EC1472ECD065FAFBC9A0C337E9AC11DF8F716F8F57127970344F9
      B05A2C7F5BD799FF75D1D2E7DAA83F9DA93D8DEFDFE1BD4EFB2FD6FEB7CAFFC8
      A2FE1E3659A79FC23DFA850AFE20EC8599C23FC36AE8085FC17FE3AC64982507
      859AFB1D513CEED41BE99DDB09F9EAE27E7C3BF6D48770EE439F3F02E2B303B8
      BBF83BF689E37136D6D9E83D52B93A618F7A27C6B65407F54B856F10FD762D51
      277D05FC8EE214FC4470CB156901F889517F5EAB90516EC0FF09DFE90C61A7B6
      5FB4C387CE3E86FDFB0D36F809D813EFC5FD772383F2ABDA2F5B75072495F103
      87FD9702EE9DF08F259F8E8626BEB571782FE9CFABE0525D1FC439DE7E8CEBE5
      F8DC0B1CC6B3A3D0DFED9AFEC66A3FD560A77FE8D0EEADFD2F711C7188173918
      A155E926D66AD507EC02CF0BACF5BF3EFDF5F3F1F7239F2D97AD636DD7ED6117
      14BDC4DAACD9CE348E88867D06B0A49B27B3B8B83876DEC05B239F8D878F8F7C
      26B4EFCC1ADF98CBEA2435611796AC8DC852F1E3EB27B2BA2D5AB3F8C486557C
      92D7E8DAE1117EC2C57F628D32062BF9751A9FCFF9AD22F9AAF8036EA9E2270D
      19CD1AA46418F21BF4ECCB1A5E957DA6FCED3AB1A441B747F894D6203DF32C3E
      B551ABC736B116054FB0964BDF602D1F7993E32D967CDF3F588B879F646D567F
      C55A3CB48AD77F0D6BBDF24391FB620CFDB7DA551B6AC3AF6B08F277BC437846
      F3C1D5B88B73C3EF8BC268D7D97EBB0C73C249DCC9B9B0DE5D0ABC8D35643CFC
      A53A29F80C734A7DCC171AFF1EAC79BA81BF5EF0C994F91BB0F663127F23CE7D
      77C0D7729B0EFF47CC51EB912EF23F425B105FFB2DBECCDF8175EB69B419717B
      63BF7518F7B894E71ADCA96981DEDB1A7E9DE40B43BF97188339722AFCF85622
      EF67F0AB2CB1E16723FEEF62824BFD3F8CB5E1B70B03B056D2EEF5E45026DC25
      0DD049A7E76BB167EBAB93DE17696BA16F7AFB402BFF179AA3F0F92A93DEDB43
      B09FEE5239CA4CDED103EBE72DB8FF3AE632FEED951C9682170F6C7545FF5EA5
      A6F9DD51E6AD4085CBFC3F54E5F6EB2EF83A74B3D07EB1F69F99FE6498E8CF00
      3C37D3DF5DAE681FEDDA507D210777E05AA03DE4ED36F8C4251FD5E9888F41FC
      1E1B32B433B579429C644C3BC732F2C1192BC547DBE48F91E27758E452F9E728
      E235C59D8032E629E266E16FAEE8DF84C9F1DAF0FB0AA3A4B5C228C5DA416583
      95E0E8C5ADD8EF1C45BCA6B8DA7895AF885B1DFFF215713B63D75C45FC5CC998
      2E8D7F72DC6A7BDC6410FFDD87FF01CA43B187
    }
  end
  object RunQ: TZQuery
    Connection = frmMain.Koneksi
    Params = <>
    Left = 393
    Top = 176
  end
  object DataSensor: TZQuery
    Connection = frmMain.Koneksi
    SQL.Strings = (
      'SELECT  nsen, awal, akhir, idy'
      'FROM  sensor'
      'Where idy = :vidy        '
    )
    Params = <    
      item
        Name = 'vidy'
      end>
    Left = 432
    Top = 176
    ParamData = <    
      item
        Name = 'vidy'
      end>
  end
  object DsSensor: TDataSource
    DataSet = DataSensor
    Left = 432
    Top = 213
  end
  object popGrid: TPopupMenu
    Images = ImageList1
    Left = 742
    Top = 80
    object mnDel: TMenuItem
      Caption = 'Hapus'
      ImageIndex = 15
      OnClick = mnDelClick
    end
  end
end
