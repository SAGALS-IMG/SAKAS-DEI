object Form_Main: TForm_Main
  Left = 0
  Top = 0
  Caption = 'SAKAS DEI'
  ClientHeight = 972
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 453
    Height = 193
    Align = alTop
    Caption = 'Tag Files'
    Color = 16771022
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 18
      Width = 449
      Height = 87
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object SB_Help: TSpeedButton
        Left = 416
        Top = -4
        Width = 31
        Height = 31
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333CCCCC33
          33333FFFF77777FFFFFFCCCCCC808CCCCCC3777777F7F777777F008888070888
          8003777777777777777F0F0770F7F0770F0373F33337F333337370FFFFF7FFFF
          F07337F33337F33337F370FFFB99FBFFF07337F33377F33337F330FFBF99BFBF
          F033373F337733333733370BFBF7FBFB0733337F333FF3337F33370FBF98BFBF
          0733337F3377FF337F333B0BFB990BFB03333373FF777FFF73333FB000B99000
          B33333377737777733333BFBFBFB99FBF33333333FF377F333333FBF99BF99BF
          B333333377F377F3333333FB99FB99FB3333333377FF77333333333FB9999FB3
          333333333777733333333333FBFBFB3333333333333333333333}
        NumGlyphs = 2
        OnClick = SB_HelpClick
      end
      object SB_ViewInfo: TSpeedButton
        Left = 299
        Top = 30
        Width = 111
        Height = 22
        Caption = 'View Details'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SB_ViewInfoClick
      end
      object Label37: TLabel
        Left = 11
        Top = 5
        Width = 17
        Height = 14
        Caption = 'Dir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SB_Dir: TSpeedButton
        Left = 369
        Top = 1
        Width = 23
        Height = 22
        Hint = 'Select Dir'
        HelpType = htKeyword
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
          333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
          300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
          333337F373F773333333303330033333333337F3377333333333303333333333
          333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
          333337777F337F33333330330BB00333333337F373F773333333303330033333
          333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
          333377777F77377733330BBB0333333333337F337F33333333330BB003333333
          333373F773333333333330033333333333333773333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_DirClick
      end
      object SB_TagList_Reload: TSpeedButton
        Left = 395
        Top = 2
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
          B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
          B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
          0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
          55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
          55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
          55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
          5555575FFF755555555557000075555555555577775555555555}
        NumGlyphs = 2
        OnClick = SB_TagList_ReloadClick
      end
      object BB_Proc: TBitBtn
        Left = 11
        Top = 56
        Width = 100
        Height = 25
        Caption = 'Calc dP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FF3F3337F3E0F330030333
          70E337F3377F7FF337F3E0F33003003370E337F3377F77FF37F3E0F330030003
          70E337F3377F777337F3E0F33003003370E337F3377F773337F3E0F330030333
          70E337F33773733337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = BB_ProcClick
      end
      object CB_Ext: TComboBox
        Left = 297
        Top = 0
        Width = 67
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = '*.tag'
        Items.Strings = (
          '*.tag'
          '*.ini'
          '*.*')
      end
      object CB_AllCK: TCheckBox
        Left = 303
        Top = 60
        Width = 79
        Height = 17
        Caption = 'Check All'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = CB_AllCKClick
      end
      object RB_Proc2: TRadioButton
        Left = 11
        Top = 32
        Width = 160
        Height = 17
        Caption = 'DEI cond. in Tag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Edit_Dir: TEdit
        Left = 35
        Top = 0
        Width = 256
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'Edit_Dir'
      end
      object BB_STOP_Proc: TBitBtn
        Left = 117
        Top = 56
        Width = 100
        Height = 25
        Caption = 'STOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FFFFF337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F33777773337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 5
        OnClick = BB_STOP_ProcClick
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 105
      Width = 449
      Height = 86
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object CLB_File: TCheckListBox
        Left = 0
        Top = 0
        Width = 449
        Height = 86
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnClick = CLB_FileClick
      end
    end
  end
  object SB: TStatusBar
    Left = 0
    Top = 953
    Width = 453
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
    SimplePanel = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 305
    Width = 453
    Height = 250
    Align = alTop
    Caption = 'File Info'
    Color = 15135487
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 56
      Height = 14
      Caption = 'File Name'
    end
    object SB_FN: TSpeedButton
      Left = 418
      Top = 41
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_FNClick
    end
    object Label2: TLabel
      Left = 8
      Top = 70
      Width = 112
      Height = 14
      Caption = 'Original image size'
    end
    object Label3: TLabel
      Left = 144
      Top = 70
      Width = 66
      Height = 14
      Caption = 'Image Size'
    end
    object Label5: TLabel
      Left = 286
      Top = 70
      Width = 38
      Height = 14
      Caption = 'Offset'
    end
    object Label4: TLabel
      Left = 144
      Top = 117
      Width = 55
      Height = 14
      Caption = 'Img Num'
    end
    object Label11: TLabel
      Left = 214
      Top = 117
      Width = 47
      Height = 14
      Caption = 'BK Num'
    end
    object Label6: TLabel
      Left = 286
      Top = 117
      Width = 39
      Height = 14
      Caption = 'BK Int'
    end
    object Label10: TLabel
      Left = 8
      Top = 117
      Width = 29
      Height = 14
      Caption = 'Scan'
    end
    object SB_BKFN: TSpeedButton
      Left = 418
      Top = 186
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_BKFNClick
    end
    object Label19: TLabel
      Left = 78
      Top = 117
      Width = 38
      Height = 14
      Caption = 'Offset'
    end
    object SB_BKFN2: TSpeedButton
      Left = 418
      Top = 214
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_BKFN2Click
    end
    object Label21: TLabel
      Left = 8
      Top = 168
      Width = 133
      Height = 14
      Caption = 'Background File Name'
    end
    object Edit_FN: TEdit
      Left = 14
      Top = 41
      Width = 398
      Height = 22
      TabOrder = 0
      Text = 'D:\201712_PF\12112045_1'
    end
    object Edit_OH: TEdit
      Left = 78
      Top = 89
      Width = 46
      Height = 22
      TabOrder = 2
      Text = '408'
    end
    object Edit_OW: TEdit
      Left = 14
      Top = 89
      Width = 46
      Height = 22
      TabOrder = 1
      Text = '776'
    end
    object Edit_PW: TEdit
      Left = 150
      Top = 89
      Width = 46
      Height = 22
      TabOrder = 3
      Text = '776'
    end
    object Edit_PH: TEdit
      Left = 214
      Top = 89
      Width = 46
      Height = 22
      TabOrder = 4
      Text = '408'
    end
    object Edit_OFFY: TEdit
      Left = 356
      Top = 89
      Width = 46
      Height = 22
      TabOrder = 6
      Text = '0'
    end
    object Edit_OFFX: TEdit
      Left = 292
      Top = 89
      Width = 46
      Height = 22
      TabOrder = 5
      Text = '0'
    end
    object Edit_Pro: TEdit
      Left = 150
      Top = 135
      Width = 46
      Height = 22
      TabOrder = 7
      Text = '510'
    end
    object Edit_BKN: TEdit
      Left = 214
      Top = 135
      Width = 46
      Height = 22
      TabOrder = 8
      Text = '1'
    end
    object Edit_BKINT: TEdit
      Left = 292
      Top = 135
      Width = 46
      Height = 22
      TabOrder = 9
      Text = '506'
      TextHint = '505'
    end
    object Edit_SN: TEdit
      Left = 14
      Top = 135
      Width = 46
      Height = 22
      TabOrder = 10
      Text = '17'
    end
    object Edit_BKFN: TEdit
      Left = 14
      Top = 187
      Width = 398
      Height = 22
      TabOrder = 11
      Text = 'D:\Saga\12221250'
    end
    object Edit_offsetpro: TEdit
      Left = 78
      Top = 135
      Width = 46
      Height = 22
      TabOrder = 12
      Text = '0'
    end
    object Edit_BKFN2: TEdit
      Left = 14
      Top = 214
      Width = 398
      Height = 22
      TabOrder = 13
      Text = 'D:\Saga\12221250'
    end
    object CB_Dammy: TCheckBox
      Left = 159
      Top = 165
      Width = 66
      Height = 17
      Caption = 'Dammy'
      TabOrder = 14
    end
  end
  object Chart1: TChart
    Left = 0
    Top = 769
    Width = 453
    Height = 136
    BackWall.Brush.Style = bsClear
    BackWall.Brush.Gradient.Direction = gdBottomTop
    BackWall.Brush.Gradient.EndColor = clWhite
    BackWall.Brush.Gradient.StartColor = 15395562
    BackWall.Brush.Gradient.Visible = True
    BackWall.Transparent = False
    Foot.Font.Color = clBlue
    Foot.Font.Name = 'Verdana'
    Gradient.Direction = gdBottomTop
    Gradient.EndColor = clWhite
    Gradient.MidColor = 15395562
    Gradient.StartColor = 15395562
    Gradient.Visible = True
    LeftWall.Color = 14745599
    Legend.Font.Charset = SHIFTJIS_CHARSET
    Legend.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    Legend.Shadow.Transparency = 0
    Legend.Visible = False
    RightWall.Color = 14745599
    Title.Font.Name = 'Verdana'
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Axis.Color = 4210752
    BottomAxis.Grid.Color = 11119017
    BottomAxis.LabelsFormat.Font.Charset = SHIFTJIS_CHARSET
    BottomAxis.LabelsFormat.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    BottomAxis.TicksInner.Color = 11119017
    BottomAxis.Title.Font.Charset = SHIFTJIS_CHARSET
    BottomAxis.Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    DepthAxis.Axis.Color = 4210752
    DepthAxis.Grid.Color = 11119017
    DepthAxis.LabelsFormat.Font.Charset = SHIFTJIS_CHARSET
    DepthAxis.LabelsFormat.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    DepthAxis.TicksInner.Color = 11119017
    DepthAxis.Title.Font.Charset = SHIFTJIS_CHARSET
    DepthAxis.Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    DepthTopAxis.Axis.Color = 4210752
    DepthTopAxis.Grid.Color = 11119017
    DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
    DepthTopAxis.TicksInner.Color = 11119017
    DepthTopAxis.Title.Font.Name = 'Verdana'
    LeftAxis.Axis.Color = 4210752
    LeftAxis.Grid.Color = 11119017
    LeftAxis.LabelsFormat.Font.Charset = SHIFTJIS_CHARSET
    LeftAxis.LabelsFormat.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    LeftAxis.TicksInner.Color = 11119017
    LeftAxis.Title.Font.Charset = SHIFTJIS_CHARSET
    LeftAxis.Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    RightAxis.Axis.Color = 4210752
    RightAxis.Grid.Color = 11119017
    RightAxis.LabelsFormat.Font.Charset = SHIFTJIS_CHARSET
    RightAxis.LabelsFormat.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    RightAxis.TicksInner.Color = 11119017
    RightAxis.Title.Font.Charset = SHIFTJIS_CHARSET
    RightAxis.Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    TopAxis.Axis.Color = 4210752
    TopAxis.Grid.Color = 11119017
    TopAxis.LabelsFormat.Font.Charset = SHIFTJIS_CHARSET
    TopAxis.LabelsFormat.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    TopAxis.TicksInner.Color = 11119017
    TopAxis.Title.Font.Charset = SHIFTJIS_CHARSET
    TopAxis.Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    View3D = False
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      HoverElement = [heCurrent]
      Marks.Font.Charset = SHIFTJIS_CHARSET
      Marks.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      SeriesColor = clRed
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      HoverElement = [heCurrent]
      Marks.Font.Charset = SHIFTJIS_CHARSET
      Marks.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      SeriesColor = clGreen
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      HoverElement = [heCurrent]
      Marks.Font.Charset = SHIFTJIS_CHARSET
      Marks.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      SeriesColor = clYellow
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 905
    Width = 453
    Height = 48
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ScrollBars = ssVertical
    TabOrder = 4
    Zoom = 100
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 193
    Width = 453
    Height = 112
    Align = alTop
    Caption = 'Proc'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object Label17: TLabel
      Left = 105
      Top = 55
      Width = 39
      Height = 14
      Caption = 'Range'
    end
    object Label18: TLabel
      Left = 249
      Top = 55
      Width = 13
      Height = 14
      Caption = #65374
    end
    object Label12: TLabel
      Left = 337
      Top = 82
      Width = 9
      Height = 14
      Caption = #916
    end
    object Label22: TLabel
      Left = 249
      Top = 82
      Width = 13
      Height = 14
      Caption = #65374
    end
    object BB_Proc_Calc: TBitBtn
      Left = 9
      Top = 19
      Width = 85
      Height = 25
      Caption = 'Proc Calc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BB_Proc_CalcClick
    end
    object CB_Swap: TCheckBox
      Left = 105
      Top = 23
      Width = 97
      Height = 17
      Caption = 'Swap XY'
      TabOrder = 1
    end
    object CB_Bin: TCheckBox
      Left = 184
      Top = 23
      Width = 76
      Height = 17
      Caption = 'Binning'
      TabOrder = 2
    end
    object BB_MakeSino: TBitBtn
      Left = 9
      Top = 50
      Width = 85
      Height = 25
      Caption = 'Make Sino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BB_MakeSinoClick
    end
    object Edit_SinoST: TEdit
      Left = 184
      Top = 52
      Width = 57
      Height = 22
      TabOrder = 4
      Text = '200'
    end
    object Edit_SinoEnd: TEdit
      Left = 271
      Top = 52
      Width = 58
      Height = 22
      TabOrder = 5
      Text = '200'
    end
    object CB_TT: TComboBox
      Left = 15
      Top = 81
      Width = 69
      Height = 22
      ItemIndex = 1
      TabOrder = 6
      Text = 'Phase'
      Items.Strings = (
        'Abs'
        'Phase'
        'SAX')
    end
    object CB_CBKL: TCheckBox
      Left = 105
      Top = 83
      Width = 73
      Height = 15
      Caption = 'Cor. BK'
      TabOrder = 7
    end
    object Edit_CBK_L: TEdit
      Left = 184
      Top = 79
      Width = 57
      Height = 22
      TabOrder = 8
      Text = '85'
    end
    object Edit_CBK_R: TEdit
      Left = 271
      Top = 79
      Width = 58
      Height = 22
      TabOrder = 9
      Text = '830'
    end
    object BB_Stop: TBitBtn
      Left = 356
      Top = 19
      Width = 85
      Height = 25
      Caption = 'STOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BB_StopClick
    end
    object BB_Save_Cond: TBitBtn
      Left = 356
      Top = 50
      Width = 85
      Height = 25
      Caption = 'Save Cond.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BB_Save_CondClick
    end
    object CB_SAX: TCheckBox
      Left = 274
      Top = 23
      Width = 76
      Height = 17
      Caption = 'SAX'
      TabOrder = 12
    end
    object Edit_CBW: TEdit
      Left = 356
      Top = 79
      Width = 36
      Height = 22
      TabOrder = 13
      Text = '5'
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 555
    Width = 453
    Height = 214
    Align = alTop
    Caption = 'Calc dP'
    Color = 14478300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    object Label7: TLabel
      Left = 100
      Top = 23
      Width = 48
      Height = 14
      Caption = 'Img No.'
    end
    object Label8: TLabel
      Left = 100
      Top = 54
      Width = 40
      Height = 14
      Caption = 'BK No.'
    end
    object Label13: TLabel
      Left = 100
      Top = 85
      Width = 45
      Height = 14
      Caption = 'Pro No.'
    end
    object Label15: TLabel
      Left = 100
      Top = 116
      Width = 39
      Height = 14
      Caption = 'Range'
    end
    object Label9: TLabel
      Left = 239
      Top = 54
      Width = 48
      Height = 14
      Caption = 'Img No.'
    end
    object Label14: TLabel
      Left = 239
      Top = 85
      Width = 48
      Height = 14
      Caption = 'Img No.'
    end
    object Label16: TLabel
      Left = 239
      Top = 116
      Width = 13
      Height = 14
      Caption = #65374
    end
    object Label20: TLabel
      Left = 239
      Top = 23
      Width = 53
      Height = 14
      Caption = 'Mon Pos'
    end
    object BB_PreView: TBitBtn
      Left = 8
      Top = 18
      Width = 85
      Height = 25
      Caption = 'Pre View'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BB_PreViewClick
    end
    object BB_LoadBK: TBitBtn
      Left = 9
      Top = 49
      Width = 85
      Height = 25
      Caption = 'Load BK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BB_LoadBKClick
    end
    object BB_Load_Pro: TBitBtn
      Left = 8
      Top = 80
      Width = 85
      Height = 25
      Caption = 'Load Pro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BB_Load_ProClick
    end
    object BB_Calc_dP: TBitBtn
      Left = 8
      Top = 111
      Width = 85
      Height = 25
      Caption = 'Calc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BB_Calc_dPClick
    end
    object CB_DispType: TComboBox
      Left = 15
      Top = 148
      Width = 69
      Height = 22
      ItemIndex = 1
      TabOrder = 4
      Text = 'Phase'
      OnChange = CB_DispTypeChange
      Items.Strings = (
        'Abs'
        'Phase'
        'SAX')
    end
    object CB_Cor_Base: TCheckBox
      Left = 100
      Top = 151
      Width = 87
      Height = 17
      Caption = 'Cor. Base --'
      TabOrder = 5
    end
    object CB_Step: TCheckBox
      Left = 253
      Top = 151
      Width = 97
      Height = 17
      Caption = 'Conv. step'
      TabOrder = 6
    end
    object Edit_R1: TEdit
      Left = 152
      Top = 113
      Width = 45
      Height = 22
      TabOrder = 7
      Text = '0'
    end
    object Edit_TPro: TEdit
      Left = 152
      Top = 82
      Width = 45
      Height = 22
      TabOrder = 8
      Text = '0'
    end
    object Edit_BKNo: TEdit
      Left = 152
      Top = 51
      Width = 45
      Height = 22
      TabOrder = 9
      Text = '0'
    end
    object Edit_ImgNo: TEdit
      Left = 152
      Top = 20
      Width = 45
      Height = 22
      TabOrder = 10
      Text = '0'
    end
    object UD_R1: TUpDown
      Left = 197
      Top = 113
      Width = 16
      Height = 22
      Associate = Edit_R1
      Max = 10000
      TabOrder = 11
      Thousands = False
    end
    object UD_TPro: TUpDown
      Left = 197
      Top = 82
      Width = 16
      Height = 22
      Associate = Edit_TPro
      Max = 1000
      TabOrder = 12
      Thousands = False
      OnClick = UD_TProClick
    end
    object UD_BKNo: TUpDown
      Left = 197
      Top = 51
      Width = 16
      Height = 22
      Associate = Edit_BKNo
      Max = 2
      TabOrder = 13
      Thousands = False
      OnClick = UD_BKNoClick
    end
    object UD_PreV: TUpDown
      Left = 197
      Top = 20
      Width = 16
      Height = 22
      Associate = Edit_ImgNo
      Max = 300000
      TabOrder = 14
      Thousands = False
      OnClick = UD_PreVClick
    end
    object Edit_BKImgNo: TEdit
      Left = 305
      Top = 51
      Width = 45
      Height = 22
      TabOrder = 15
      Text = '0'
    end
    object UD_BKImgNo: TUpDown
      Left = 350
      Top = 51
      Width = 16
      Height = 22
      Associate = Edit_BKImgNo
      Max = 40
      TabOrder = 16
      Thousands = False
      OnClick = UD_BKNoClick
    end
    object UD_ProImg: TUpDown
      Left = 350
      Top = 82
      Width = 16
      Height = 22
      Associate = Edit_ProImg
      Max = 1000
      TabOrder = 17
      Thousands = False
      OnClick = UD_ProImgClick
    end
    object Edit_ProImg: TEdit
      Left = 305
      Top = 82
      Width = 45
      Height = 22
      TabOrder = 18
      Text = '0'
    end
    object Edit_R2: TEdit
      Left = 305
      Top = 113
      Width = 45
      Height = 22
      TabOrder = 19
      Text = '16'
    end
    object UD_R2: TUpDown
      Left = 350
      Top = 113
      Width = 16
      Height = 22
      Associate = Edit_R2
      Max = 30000
      Position = 16
      TabOrder = 20
      Thousands = False
    end
    object BB_SaveImg: TBitBtn
      Left = 9
      Top = 177
      Width = 85
      Height = 25
      Caption = 'Save Img'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = BB_SaveImgClick
    end
    object RG_Dir: TRadioGroup
      Left = 193
      Top = 139
      Width = 49
      Height = 69
      Caption = 'Dir'
      ItemIndex = 0
      Items.Strings = (
        'X'
        'Y')
      TabOrder = 22
    end
    object Edit_lY: TEdit
      Left = 370
      Top = 20
      Width = 55
      Height = 22
      TabOrder = 23
      Text = '350'
    end
    object Edit_lX: TEdit
      Left = 305
      Top = 20
      Width = 55
      Height = 22
      TabOrder = 24
      Text = '750'
    end
    object CB_Cont_Mes: TCheckBox
      Left = 253
      Top = 181
      Width = 87
      Height = 17
      Caption = 'Cont. Mes.'
      TabOrder = 25
    end
    object CB_1stBK: TCheckBox
      Left = 372
      Top = 54
      Width = 78
      Height = 17
      Caption = '1st Only'
      TabOrder = 26
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 408
    Top = 393
  end
  object SaveDialog1: TSaveDialog
    Left = 392
    Top = 425
  end
end
