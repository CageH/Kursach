object Dovidka: TDovidka
  Left = 531
  Top = 154
  Width = 923
  Height = 540
  Caption = #1044#1086#1074#1110#1076#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 907
    Height = 501
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #1030#1075#1088#1080
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 899
        Height = 299
        Align = alClient
        DataSource = DataModule2.DataGame
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 385
        Width = 899
        Height = 88
        Align = alBottom
        TabOrder = 1
        object AddNote: TButton
          Left = 8
          Top = 8
          Width = 105
          Height = 33
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = AddNoteClick
        end
        object ChangeNote: TButton
          Left = 112
          Top = 8
          Width = 105
          Height = 33
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = ChangeNoteClick
        end
        object Delete: TButton
          Left = 216
          Top = 8
          Width = 105
          Height = 33
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = DeleteClick
        end
        object Panel3: TPanel
          Left = 512
          Top = 1
          Width = 386
          Height = 86
          Align = alRight
          TabOrder = 3
          object Label1: TLabel
            Left = 41
            Top = 24
            Width = 97
            Height = 13
            Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1085#1072#1079#1074#1110' '#1075#1088#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 45
            Top = 48
            Width = 94
            Height = 13
            Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1082#1086#1076#1091' '#1075#1088#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Cancel2: TButton
            Left = 311
            Top = 48
            Width = 75
            Height = 33
            Caption = #1042#1110#1076#1084#1110#1085#1072
            TabOrder = 0
          end
          object Edit1: TEdit
            Left = 153
            Top = 24
            Width = 232
            Height = 21
            TabOrder = 1
            OnChange = Edit1Change
          end
          object Edit2: TEdit
            Left = 153
            Top = 48
            Width = 81
            Height = 21
            TabOrder = 2
          end
          object Ok: TButton
            Left = 239
            Top = 48
            Width = 75
            Height = 33
            Caption = #1054#1050
            TabOrder = 3
            OnClick = OkClick
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 299
        Width = 899
        Height = 86
        Align = alBottom
        TabOrder = 2
        Visible = False
        object Label3: TLabel
          Left = 64
          Top = 8
          Width = 52
          Height = 13
          Caption = #1053#1072#1079#1074#1072' '#1075#1088#1080
        end
        object Label4: TLabel
          Left = 64
          Top = 40
          Width = 47
          Height = 13
          Caption = #1050#1086#1084#1087#1072#1085#1110#1103
        end
        object Label6: TLabel
          Left = 328
          Top = 8
          Width = 22
          Height = 13
          Caption = #1062#1110#1085#1072
        end
        object Label5: TLabel
          Left = 328
          Top = 40
          Width = 94
          Height = 13
          Caption = #1042#1110#1082#1086#1074#1077' '#1086#1073#1084#1077#1078#1077#1085#1085#1103
        end
        object CostEdit: TEdit
          Left = 432
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 0
        end
        object ButtonAdd: TButton
          Left = 584
          Top = 24
          Width = 137
          Height = 49
          Caption = #1044#1086#1076#1072#1090#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 1
          OnClick = ButtonAddClick
        end
        object GameEdit: TEdit
          Left = 128
          Top = 8
          Width = 169
          Height = 21
          TabOrder = 2
        end
        object Cancel: TButton
          Left = 720
          Top = 24
          Width = 137
          Height = 49
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 3
          OnClick = CancelClick
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 128
          Top = 40
          Width = 169
          Height = 21
          KeyField = #1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072
          ListField = #1053#1072#1079#1074#1072
          ListSource = DataModule2.DataCompany
          TabOrder = 4
        end
        object ButtonChange: TButton
          Left = 584
          Top = 24
          Width = 137
          Height = 49
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 5
          OnClick = ButtonChangeClick
        end
        object AgeEdit: TEdit
          Left = 432
          Top = 40
          Width = 145
          Height = 21
          TabOrder = 6
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 899
        Height = 410
        Align = alClient
        DataSource = DataModule2.DataPersonal
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel5: TPanel
        Left = 0
        Top = 410
        Width = 899
        Height = 63
        Align = alBottom
        TabOrder = 1
        object AddButton1: TButton
          Left = 8
          Top = 8
          Width = 121
          Height = 49
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = AddButton1Click
        end
        object ChangeButton1: TButton
          Left = 128
          Top = 8
          Width = 121
          Height = 49
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = ChangeButton1Click
        end
        object DeletButton1: TButton
          Left = 248
          Top = 8
          Width = 121
          Height = 49
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = DeletButton1Click
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1050#1086#1084#1087#1072#1085#1080#1080
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 899
        Height = 405
        Align = alClient
        DataSource = DataModule2.DataCompany
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 0
        Top = 405
        Width = 899
        Height = 68
        Align = alBottom
        TabOrder = 1
        object AddButton2: TButton
          Left = 8
          Top = 8
          Width = 129
          Height = 49
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = AddButton2Click
        end
        object ChangeButton2: TButton
          Left = 136
          Top = 8
          Width = 129
          Height = 49
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = ChangeButton2Click
        end
        object DeleteButton2: TButton
          Left = 264
          Top = 8
          Width = 121
          Height = 49
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = DeleteButton2Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1080
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 899
        Height = 402
        Align = alClient
        DataSource = DataModule2.DataProdaj
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel6: TPanel
        Left = 0
        Top = 402
        Width = 899
        Height = 71
        Align = alBottom
        TabOrder = 1
        object Label7: TLabel
          Left = 40
          Top = 16
          Width = 97
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1085#1072#1079#1074#1110' '#1075#1088#1080
        end
        object SearchGameName: TEdit
          Left = 40
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 0
          OnChange = SearchGameNameChange
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 899
        Height = 394
        Align = alClient
        DataSource = DataModule2.DataChek
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel7: TPanel
        Left = 0
        Top = 394
        Width = 899
        Height = 79
        Align = alBottom
        TabOrder = 1
        object DateTimePicker1: TDateTimePicker
          Left = 8
          Top = 8
          Width = 186
          Height = 21
          Date = 44509.534072395830000000
          Time = 44509.534072395830000000
          TabOrder = 0
        end
        object Button1: TButton
          Left = 8
          Top = 32
          Width = 185
          Height = 41
          Caption = #1047#1085#1072#1081#1090#1080' '#1095#1077#1082' '#1087#1086' '#1076#1072#1090#1110
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
  end
end
