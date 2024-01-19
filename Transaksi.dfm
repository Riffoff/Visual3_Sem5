object FormTransaksi: TFormTransaksi
  Left = 290
  Top = 206
  Width = 1038
  Height = 459
  Caption = 'Form Transaksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Lb2: TLabel
    Left = 24
    Top = 88
    Width = 64
    Height = 16
    Caption = 'NO SERVIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 24
    Top = 136
    Width = 84
    Height = 16
    Caption = 'ID PELANGGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 192
    Width = 105
    Height = 13
    Caption = 'TANGGAL TRANSAKSI'
  end
  object Label3: TLabel
    Left = 24
    Top = 240
    Width = 40
    Height = 13
    Caption = 'ID USER'
  end
  object cbb2: TComboBox
    Left = 160
    Top = 136
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object cbb1: TComboBox
    Left = 160
    Top = 88
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object cbb3: TComboBox
    Left = 160
    Top = 240
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object B1: TButton
    Left = 504
    Top = 40
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 3
    OnClick = B1Click
  end
  object B2: TButton
    Left = 632
    Top = 40
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = B2Click
  end
  object B3: TButton
    Left = 752
    Top = 40
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = B3Click
  end
  object B4: TButton
    Left = 880
    Top = 40
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = B4Click
  end
  object B5: TButton
    Left = 752
    Top = 104
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 7
    OnClick = B5Click
  end
  object B6: TButton
    Left = 880
    Top = 104
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 8
    OnClick = B6Click
  end
  object Button1: TButton
    Left = 360
    Top = 352
    Width = 633
    Height = 33
    Caption = 'KEMBALI KE MENU'
    TabOrder = 9
  end
  object dg1: TDBGrid
    Left = 363
    Top = 170
    Width = 630
    Height = 169
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_transaksi'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_servis'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pelanggan'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_transaksi'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_user'
        Width = 115
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 160
    Top = 184
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 432
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from transaksi')
    Params = <>
    Left = 496
    Top = 112
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual3akhir'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Uniska\Delphi7\Semester 5\Visual3Akhir\libmysql.dll'
    Left = 368
    Top = 40
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from data_servis'
      '')
    Params = <>
    Left = 552
    Top = 112
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 600
    Top = 112
  end
  object zqry4: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 640
    Top = 112
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45114.372448819400000000
    ReportOptions.LastChange = 45310.751552395800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'dstransaksi'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 230.551330000000000000
          Top = 18.897650000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA TRANSAKSI')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'dstransaksi'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_transaksi'
          DataSet = frxDBDataset1
          DataSetName = 'dstransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dstransaksi."id_transaksi"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 113.385900000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_servis'
          DataSet = frxDBDataset1
          DataSetName = 'dstransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dstransaksi."no_servis"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 627.401980000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_user'
          DataSet = frxDBDataset1
          DataSetName = 'dstransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dstransaksi."id_user"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 442.205010000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_transaksi'
          DataSet = frxDBDataset1
          DataSetName = 'dstransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dstransaksi."tgl_transaksi"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 279.685220000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_pelanggan'
          DataSet = frxDBDataset1
          DataSetName = 'dstransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dstransaksi."id_pelanggan"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO SERVIS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID USER')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 442.205010000000000000
          Top = 3.779530000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL TRANSAKSI'
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 279.685220000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID PELANGGAN')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        DataSet = FormServis.frxdbdtst1
        DataSetName = 'datasetsservis'
        RowCount = 0
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'dstransaksi'
    CloseDataSource = False
    DataSource = ds1
    BCDToCurrency = False
    Left = 376
    Top = 112
  end
end
