object FormStok: TFormStok
  Left = 402
  Top = 140
  Width = 751
  Height = 573
  Caption = 'Form Stok'
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
    Width = 107
    Height = 16
    Caption = 'NAMA SPAREPART'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 48
    Top = 120
    Width = 99
    Height = 16
    Caption = 'TANGGAL MASUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lb2: TLabel
    Left = 48
    Top = 80
    Width = 71
    Height = 16
    Caption = 'ID SUPPLIER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 48
    Top = 160
    Width = 48
    Height = 16
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object B1: TButton
    Left = 48
    Top = 408
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 0
    OnClick = B1Click
  end
  object B2: TButton
    Left = 160
    Top = 408
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = B2Click
  end
  object B3: TButton
    Left = 272
    Top = 408
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = B3Click
  end
  object B4: TButton
    Left = 384
    Top = 408
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = B4Click
  end
  object B5: TButton
    Left = 491
    Top = 408
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = B5Click
  end
  object B6: TButton
    Left = 595
    Top = 408
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 5
    OnClick = B6Click
  end
  object Button1: TButton
    Left = 40
    Top = 472
    Width = 657
    Height = 33
    Caption = 'KEMBALI KE MENU'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 184
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 184
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 8
  end
  object cbb1: TComboBox
    Left = 184
    Top = 80
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object dg1: TDBGrid
    Left = 44
    Top = 208
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
        FieldName = 'id_sparepart'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_sparepart'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_sup'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_masuk'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 65
        Visible = True
      end>
  end
  object cbb2: TComboBox
    Left = 184
    Top = 160
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'Tersedia'
      'Kosong')
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 448
    Top = 40
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
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from stok')
    Params = <>
    Left = 504
    Top = 104
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'datasetstok'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_sparepart=id_sparepart'
      'nama_sparepart=nama_sparepart'
      'id_sup=id_sup'
      'tgl_masuk=tgl_masuk'
      'status=status')
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
    ReportOptions.LastChange = 45310.616915196800000000
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
        DataSetName = 'datasetstok'
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
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 347.716760000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA STOK SPAREPART')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'datasetstok'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sparepart'
          DataSet = frxdbdtst1
          DataSetName = 'datasetstok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetstok."id_sparepart"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 132.283550000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_sparepart'
          DataSet = frxdbdtst1
          DataSetName = 'datasetstok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetstok."nama_sparepart"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 597.165740000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'datasetstok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetstok."status"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 449.764070000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_masuk'
          DataSet = frxdbdtst1
          DataSetName = 'datasetstok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetstok."tgl_masuk"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 343.937230000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sup'
          DataSet = frxdbdtst1
          DataSetName = 'datasetstok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[datasetstok."id_sup"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
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
            'ID')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
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
          Left = 597.165740000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
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
        object Memo8: TfrxMemoView
          Left = 449.764070000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
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
            'TANGGAL MASUK')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
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
            'ID SUPPLIER')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 49.133890000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'datasetstok'
        RowCount = 0
      end
    end
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 568
    Top = 104
  end
end
