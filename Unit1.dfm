object Form1: TForm1
  Left = 772
  Top = 239
  Width = 701
  Height = 404
  Caption = 'Form1'
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
    Left = 96
    Top = 56
    Width = 94
    Height = 16
    Caption = 'ID '#237#224#247#224#235#252#237#232#234#224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 24
    Width = 41
    Height = 16
    Caption = #206#242#228#229#235
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 168
    Width = 321
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = #196#238#225#224#226#232#242#252
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = #200#231#236#229#237#232#242#252
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = #211#228#224#235#232#242#252
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 200
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = 224
    Top = 104
    Width = 89
    Height = 25
    Caption = #209#238#245#240#224#237#232#242#252
    TabOrder = 5
    OnClick = Button4Click
  end
  object ComboBox1: TComboBox
    Left = 200
    Top = 24
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      '1 Depart'
      '2 Depart'
      '3 Depart'
      '4 Depart'
      '5 Depart')
  end
  object Button5: TButton
    Left = 128
    Top = 104
    Width = 89
    Height = 25
    Caption = #209#225#240#238#241#232#242#252' '#239#238#235#255
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 432
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Export Excel'
    TabOrder = 8
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 184
    Top = 296
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 216
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 320
    Top = 296
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    Left = 256
    Top = 296
  end
  object IBTransaction2: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 288
    Top = 296
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 144
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    Filter = 'excel|*.xls'
    Left = 512
    Top = 248
  end
end
