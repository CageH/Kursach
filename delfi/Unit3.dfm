object MainForm: TMainForm
  Left = 571
  Top = 116
  Width = 837
  Height = 534
  Caption = #1052#1072#1075#1072#1079#1080#1085' '#1074#1080#1076#1077#1086' '#1080#1075#1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 161
    Top = 0
    Width = 660
    Height = 475
    Align = alClient
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 120
      Width = 54
      Height = 16
      Caption = #8470' '#1095#1077#1082#1091': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 72
      Width = 50
      Height = 13
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
    end
    object Label7: TLabel
      Left = 8
      Top = 152
      Width = 38
      Height = 13
      Caption = #1030#1058#1054#1043#1054': '
    end
    object DateTimePicker1: TDateTimePicker
      Left = 8
      Top = 16
      Width = 129
      Height = 21
      Date = 44509.725463414350000000
      Time = 44509.725463414350000000
      Enabled = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 320
      Top = 1
      Width = 339
      Height = 255
      Align = alRight
      Enabled = False
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 31
        Height = 13
        Alignment = taCenter
        Caption = #1058#1086#1074#1072#1088
        Transparent = False
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 8
        Top = 48
        Width = 83
        Height = 13
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1090#1086#1074#1072#1088#1091
      end
      object Label5: TLabel
        Left = 152
        Top = 88
        Width = 92
        Height = 16
        Caption = #1062#1077#1085#1072' '#1090#1086#1074#1072#1088#1072':  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 112
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '1'
      end
      object AddChek: TButton
        Left = 8
        Top = 80
        Width = 129
        Height = 33
        Caption = #1044#1086#1076#1072#1090#1080' '#1090#1086#1074#1072#1088' '#1076#1086' '#1095#1077#1082#1091
        TabOrder = 1
        OnClick = AddChekClick
      end
      object PrintChek: TButton
        Left = 8
        Top = 160
        Width = 129
        Height = 33
        Caption = #1053#1072#1076#1088#1091#1082#1091#1074#1072#1090#1080' '#1095#1077#1082
        TabOrder = 2
        OnClick = PrintChekClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 48
        Top = 16
        Width = 145
        Height = 21
        KeyField = #1050#1086#1076'_'#1075#1088#1080
        ListField = #1053#1072#1079#1074#1072
        ListSource = DataModule2.DataGameF
        TabOrder = 3
      end
      object DelChek: TButton
        Left = 8
        Top = 120
        Width = 129
        Height = 33
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        TabOrder = 4
        OnClick = DelChekClick
      end
    end
    object NewCheck: TButton
      Left = 8
      Top = 40
      Width = 129
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1095#1077#1082
      Enabled = False
      TabOrder = 2
      OnClick = NewCheckClick
    end
    object Panel1: TPanel
      Left = 1
      Top = 256
      Width = 658
      Height = 218
      Align = alBottom
      TabOrder = 3
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 656
        Height = 216
        Align = alClient
        DataSource = DataModule2.DataProdaj
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 8
      Top = 88
      Width = 145
      Height = 21
      KeyField = #1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1091
      ListField = #1060#1030#1054
      ListSource = DataModule2.DataPersonal
      TabOrder = 4
      OnClick = DBLookupComboBox2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 161
    Height = 475
    Align = alLeft
    DataSource = DataModule2.DataChek
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 785
    Top = 9
    object By1: TMenuItem
      Caption = #1044#1086#1074#1110#1076#1082#1072
      OnClick = By1Click
    end
    object Praic: TMenuItem
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnClick = PraicClick
    end
  end
end
