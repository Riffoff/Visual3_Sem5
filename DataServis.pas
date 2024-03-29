unit DataServis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TFormServis = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l6: TLabel;
    Lb2: TLabel;
    l8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    B6: TButton;
    Edit3: TEdit;
    Edit5: TEdit;
    cbbc1: TComboBox;
    Button1: TButton;
    ds1: TDataSource;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    zqry1: TZQuery;
    con1: TZConnection;
    zqry2: TZQuery;
    zqry3: TZQuery;
    dg1: TDBGrid;
    procedure kolomaktif;
    procedure posisiawal;
    procedure kolombersih;
    procedure B1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServis: TFormServis;
  id : string;

implementation

uses MainMenu;

{$R *.dfm}

procedure TFormServis.kolomaktif;
begin
  cbb1.Enabled:= True;
  cbbc1.Enabled:= True;
  cbb2.Enabled:= True;
  cbb3.Enabled:= True;

  edit1.Enabled:= True;
  edit2.Enabled:= True;
  edit3.Enabled:= True;
  edit5.Enabled:= True;
end;

procedure TFormServis.B1Click(Sender: TObject);
begin
kolombersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

kolomaktif;
end;

procedure TFormServis.kolombersih;
begin
cbb1.text:= '';
  cbbc1.text:= '';
  cbb2.text:= '';
  cbb3.text:= '';
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
  edit5.Clear;
end;

procedure TFormServis.posisiawal;
begin
kolombersih;

cbb1.Enabled:= False;
  cbbc1.Enabled:= False;
  cbb2.Enabled:= False;
  cbb3.Enabled:= False;
  edit1.Enabled:= False;
  edit2.Enabled:= False;
  edit3.Enabled:= False;
  edit5.Enabled:= False;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TFormServis.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormServis.B5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormServis.B6Click(Sender: TObject);
begin
frxrprt1.ShowReport;
end;

procedure TFormServis.Button1Click(Sender: TObject);
begin
close;
FormMenu.show;
end;

procedure TFormServis.B2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='') or (cbb1.Text= '') or (cbbc1.Text= '') or (Edit3.Text ='')  or (cbb2.Text= '') or (Edit5.Text ='')or (cbb3.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama_brg',Edit1.Text,[])) and (zqry1.Locate('id_pelanggan',cbb3.Text,[])) then
begin
ShowMessage('DATA PELANGGAN SUDAH ADA');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into data_servis values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'","'+Edit3.Text+'","'+cbbc1.Text+'","'+cbb2.Text+'","'+Edit5.Text+'","'+cbb3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_servis');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TFormServis.dg1CellClick(Column: TColumn);
begin
kolomaktif;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
Edit2.Text:= zqry1.FieldList[2].AsString;
cbbc1.Text:= zqry1.FieldList[3].AsString;
Edit3.Text:= zqry1.FieldList[4].AsString;
cbb1.Text:= zqry1.FieldList[5].AsString;
cbb2.Text:= zqry1.FieldList[6].AsString;
Edit5.Text:= zqry1.FieldList[7].AsString;
cbb3.Text:= zqry1.FieldList[8].AsString;
end;

procedure TFormServis.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('id_sparepart').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  cbb3.items.add(zqry3.fieldbyname('id_pelanggan').asstring);
  zqry3.Next;
end;
end;

procedure TFormServis.B3Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='') or (cbbc1.Text= '') or (cbb1.Text= '') or (Edit3.Text ='')  or (cbb2.Text= '') or (Edit5.Text ='')or (cbb3.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and (cbbc1.Text = zqry1.Fields[3].AsString) and (Edit3.Text = zqry1.Fields[4].AsString) and (cbb1.Text = zqry1.Fields[5].AsString) and (cbb2.Text = zqry1.Fields[6].AsString) and (Edit5.Text = zqry1.Fields[7].AsString) and (cbb3.Text = zqry1.Fields[8].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('no_servis').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update data_servis set nama_brg= "'+Edit1.Text+'",kerusakan="'+Edit2.Text+'",perlengkapan="'+cbbc1.Text+'",harga="'+Edit3.Text+'",id_sparepart="'+cbb1.Text+'",status="'+cbb2.Text+'",tgl_servis="'+Edit5.Text+'",id_pelanggan="'+cbb3.Text+'" where no_servis="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_servis');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormServis.B4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('no_servis').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from data_servis where no_servis="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_servis');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

end.
