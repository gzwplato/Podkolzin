object Form2: TForm2
  Left = 536
  Top = 178
  Width = 997
  Height = 677
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 64
    Width = 116
    Height = 16
    Caption = #209#242#224#242#252#241#255' '#240#224#241#245#238#228#238#226
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 40
    Width = 88
    Height = 16
    Caption = #196#229#239#224#240#242#224#236#229#237#242
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 208
    Top = 88
    Width = 23
    Height = 16
    Caption = #195#238#228
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 200
    Top = 112
    Width = 43
    Height = 16
    Caption = #209#243#236#236#224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 496
    Top = 176
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 240
    Width = 945
    Height = 217
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 48
    Width = 113
    Height = 17
    Caption = #196#238#225#224#226#232#242#252
    Checked = True
    TabOrder = 1
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 72
    Width = 113
    Height = 17
    Caption = #208#229#228#224#234#242#232#240#238#226#224#242#252
    TabOrder = 2
    OnClick = RadioButton2Click
  end
  object Button3: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = #211#228#224#235#232#242#252
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button1: TButton
    Left = 456
    Top = 64
    Width = 75
    Height = 25
    Caption = #200#231#236#229#237#232#242#252
    TabOrder = 4
  end
  object Button4: TButton
    Left = 304
    Top = 144
    Width = 121
    Height = 25
    Caption = #209#238#245#240#224#237#232#242#252
    TabOrder = 5
    OnClick = Button4Click
  end
  object ComboBox1: TComboBox
    Left = 296
    Top = 40
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 296
    Top = 64
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'ComboBox2'
  end
  object ComboBox3: TComboBox
    Left = 296
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'ComboBox3'
    Items.Strings = (
      '2019'
      '2020'
      '2021'
      '2022'
      '2023'
      '')
  end
  object Edit1: TEdit
    Left = 296
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 9
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 456
    Top = 40
    Width = 75
    Height = 25
    Caption = #206#225#237#238#226#232#242#252
    TabOrder = 10
    OnClick = Button2Click
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 544
    Top = 488
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 600
    Top = 488
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 656
    Top = 488
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 736
    Top = 480
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    Left = 600
    Top = 528
  end
  object IBTransaction2: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 656
    Top = 528
  end
  object IBQuery3: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction3
    BufferChunks = 1000
    CachedUpdates = False
    Left = 600
    Top = 568
  end
  object IBTransaction3: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 656
    Top = 568
  end
end
