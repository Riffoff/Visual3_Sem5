unit Transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet,
  Grids, DBGrids;

type
  TFormTransaksi = class(TForm)
    Lb2: TLabel;
    l8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    cbb2: TComboBox;
    cbb1: TComboBox;
    cbb3: TComboBox;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    B6: TButton;
    Button1: TButton;
    dg1: TDBGrid;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    zqry2: TZQuery;
    zqry3: TZQuery;
    zqry4: TZQuery;
    Edit1: TEdit;
    frxrprt1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure kolombersih;
    procedure kolomaktif;
    procedure posisiawal;
    procedure B1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure B4Click(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransaksi: TFormTransaksi;  
  id : string;

implementation

{$R *.dfm}

procedure TFormTransaksi.B1Click(Sender: TObject);
begin
kolombersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

kolomaktif;
end;

procedure TFormTransaksi.B2Click(Sender: TObject);
begin
if (cbb1.Text= '') or (Edit1.Text= '') or (cbb2.Text= '') or (cbb3.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('no_servis',cbb1.Text,[])) and (zqry1.Locate('id_pelanggan',cbb2.Text,[])) and (zqry1.Locate('tgl_transaksi',Edit1.Text,[])) and (zqry1.Locate('id_user',cbb3.Text,[]))then
begin
ShowMessage('DATA TRANSAKSI SUDAH ADA');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into transaksi values (null,"'+cbb1.Text+'","'+cbb2.Text+'","'+Edit1.Text+'","'+cbb3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TFormTransaksi.kolomaktif;
begin
edit1.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
end;

procedure TFormTransaksi.kolombersih;
begin
Edit1.Clear;
cbb1.text:= ''; 
cbb2.text:= '';
cbb3.text:= '';
end;

procedure TFormTransaksi.posisiawal;
begin
kolombersih;

edit1.Enabled:= false;
cbb1.Enabled:= false;  
cbb2.Enabled:= false;
cbb3.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TFormTransaksi.B3Click(Sender: TObject);
begin
if (cbb1.Text= '') or (Edit1.Text= '') or (cbb2.Text= '') or (cbb3.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb1.Text = zqry1.Fields[1].AsString) and (cbb2.Text = zqry1.Fields[2].AsString) and (Edit1.Text = zqry1.Fields[3].AsString) and (cbb3.Text = zqry1.Fields[4].AsString)  then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_transaksi').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update transaksi set no_servis= "'+cbb1.Text+'",id_pelanggan="'+cbb2.Text+'",tgl_transaksi="'+Edit1.Text+'",id_user="'+cbb3.Text+'" where id_transaksi="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormTransaksi.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('no_servis').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  cbb2.items.add(zqry3.fieldbyname('id_pelanggan').asstring);
  zqry3.Next;
end;
zqry4.First;
while not zqry4.Eof do
begin
  cbb3.items.add(zqry4.fieldbyname('id_user').asstring);
  zqry4.Next;
end;
end;

procedure TFormTransaksi.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormTransaksi.dg1CellClick(Column: TColumn);
begin
kolomaktif;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[3].AsString;
cbb1.Text:= zqry1.FieldList[1].AsString;
cbb2.Text:= zqry1.FieldList[2].AsString;
cbb3.Text:= zqry1.FieldList[4].AsString;
end;

procedure TFormTransaksi.B4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_transaksi').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from transaksi where id_transaksi="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TFormTransaksi.B5Click(Sender: TObject);
begin

posisiawal;
end;

procedure TFormTransaksi.B6Click(Sender: TObject);
begin
frxrprt1.ShowReport;
end;

end.
