object FormServis: TFormServis
  Left = 281
  Top = 187
  Width = 1057
  Height = 442
  Caption = 'Form Servis'
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
  object l2: TLabel
    Left = 48
    Top = 40
    Width = 34
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 48
    Top = 80
    Width = 69
    Height = 16
    Caption = 'KERUSAKAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 48
    Top = 160
    Width = 40
    Height = 16
    Caption = 'HARGA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lb2: TLabel
    Left = 48
    Top = 120
    Width = 89
    Height = 16
    Caption = 'PERLENGKAPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 48
    Top = 200
    Width = 85
    Height = 16
    Caption = 'ID SPAREPART'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 248
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label2: TLabel
    Left = 48
    Top = 288
    Width = 84
    Height = 13
    Caption = 'TANGGAL SERVIS'
  end
  object Label3: TLabel
    Left = 48
    Top = 328
    Width = 73
    Height = 13
    Caption = 'ID PELANGGAN'
  end
  object Edit1: TEdit
    Left = 184
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 184
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object B1: TButton
    Left = 520
    Top = 40
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 2
    OnClick = B1Click
  end
  object B2: TButton
    Left = 648
    Top = 40
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = B2Click
  end
  object B3: TButton
    Left = 768
    Top = 40
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = B3Click
  end
  object B4: TButton
    Left = 896
    Top = 40
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = B4Click
  end
  object B5: TButton
    Left = 768
    Top = 104
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = B5Click
  end
  object B6: TButton
    Left = 896
    Top = 104
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 7
    OnClick = B6Click
  end
  object Edit3: TEdit
    Left = 184
    Top = 160
    Width = 161
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 184
    Top = 288
    Width = 161
    Height = 21
    TabOrder = 9
  end
  object cbbc1: TComboBox
    Left = 184
    Top = 120
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object Button1: TButton
    Left = 376
    Top = 352
    Width = 633
    Height = 33
    Caption = 'KEMBALI KE MENU'
    TabOrder = 11
    OnClick = Button1Click
  end
  object cbb1: TComboBox
    Left = 184
    Top = 200
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 12
  end
  object cbb2: TComboBox
    Left = 184
    Top = 248
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      'Pending'
      'Progress')
  end
  object cbb3: TComboBox
    Left = 184
    Top = 328
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 14
  end
  object dg1: TDBGrid
    Left = 379
    Top = 170
    Width = 630
    Height = 169
    DataSource = ds1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'no_servis'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_brg'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kerusakan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'perlengkapan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_sparepart'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_servis'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pelanggan'
        Width = 100
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 448
    Top = 40
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'datasetsservis'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_servis=no_servis'
      'nama_brg=nama_brg'
      'kerusakan=kerusakan'
      'perlengkapan=perlengkapan'
      'harga=harga'
      'id_sparepart=id_sparepart'
      'status=status'
      'tgl_servis=tgl_servis'
      'id_pelanggan=id_pelanggan')
    DataSource = ds1
    BCDToCurrency = False
    Left = 384
    Top = 104
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
    ReportOptions.LastChange = 45310.541053588000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 448
    Top = 104
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'datasetsservis'
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
          Left = 245.669450000000000000
          Top = 18.897650000000000000
          Width = 241.889920000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA SERVIS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'datasetsservis'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_servis'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."no_servis"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 71.811070000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_brg'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."nama_brg"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 502.677490000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."harga"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 377.953000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'perlengkapan'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."perlengkapan"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 238.110390000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kerusakan'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."kerusakan"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 616.063390000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sparepart'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."id_sparepart"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Top = 3.779530000000000000
          Width = 71.811070000000000000
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
            'NO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 71.811070000000000000
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
            'NAMA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 502.677490000000000000
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
            'HARGA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
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
            'PERLENGKAPAN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 238.110390000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
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
            'KERUSAKAN')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
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
            'SPAREPART')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        object Memo11: TfrxMemoView
          Top = 3.779530000000000000
          Width = 132.283550000000000000
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
            'STATUS')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
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
            'TANGGAL')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
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
            'PELANGGAN')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'datasetsservis'
        RowCount = 0
        object Memo20: TfrxMemoView
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."status"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 132.283550000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_servis'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."tgl_servis"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 264.567100000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_pelanggan'
          DataSet = frxdbdtst1
          DataSetName = 'datasetsservis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetsservis."id_pelanggan"]')
          ParentFont = False
        end
      end
    end
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from data_servis')
    Params = <>
    Left = 504
    Top = 104
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
    Left = 384
    Top = 40
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from stok')
    Params = <>
    Left = 568
    Top = 112
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 608
    Top = 112
  end
end
