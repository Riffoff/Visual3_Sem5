unit Stok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TFormStok = class(TForm)
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    B6: TButton;
    Button1: TButton;
    l2: TLabel;
    l6: TLabel;
    Lb2: TLabel;
    l8: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    cbb1: TComboBox;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    zqry2: TZQuery;
    dg1: TDBGrid;
    cbb2: TComboBox;
    procedure B1Click(Sender: TObject);
    procedure kolomaktif;
    procedure posisiawal;
    procedure kolombersih;
    procedure Button1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure B4Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStok: TFormStok;
  id : string;

implementation

uses MainMenu;

{$R *.dfm}

procedure TFormStok.B1Click(Sender: TObject);
begin
kolombersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

kolomaktif;
end;

procedure TFormStok.kolomaktif;
begin
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
  edit1.Enabled:= True;
  edit3.Enabled:= True;
end;

procedure TFormStok.kolombersih;
begin
  cbb1.text:= '';
  cbb2.text:= '';
  edit1.Clear;
  edit3.Clear;
end;

procedure TFormStok.posisiawal;
begin
kolombersih;

  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
  edit1.Enabled:= False;
  edit3.Enabled:= False;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TFormStok.Button1Click(Sender: TObject);
begin
close;
FormMenu.show;
end;

procedure TFormStok.B2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit3.Text ='') or (cbb1.Text= '')  or (cbb2.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama_sparepart',Edit1.Text,[])) and (zqry1.Locate('tgl_masuk',Edit3.Text,[])) then
begin
ShowMessage('DATA SPAREPART SUDAH ADA');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into stok values (null,"'+Edit1.Text+'","'+cbb1.Text+'","'+Edit3.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from data_servis');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TFormStok.B3Click(Sender: TObject);
begin
if (Edit1.Text= '')or (cbb1.Text= '') or (Edit3.Text= '')or (cbb2.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (cbb1.Text = zqry1.Fields[2].AsString) and (Edit3.Text = zqry1.Fields[3].AsString) and (cbb2.Text = zqry1.Fields[4].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_sparepart').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update stok set nama_sparepart= "'+Edit1.Text+'",id_sup="'+cbb1.Text+'",tgl_masuk="'+Edit3.Text+'",status="'+cbb1.Text+'" where id_pelanggan="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from stok');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormStok.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormStok.B5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormStok.dg1CellClick(Column: TColumn);
begin
kolomaktif;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
cbb1.Text:= zqry1.FieldList[2].AsString;
Edit3.Text:= zqry1.FieldList[3].AsString;
cbb2.Text:= zqry1.FieldList[4].AsString;
end;

procedure TFormStok.B4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_sparepart').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from stok where id_sparepart="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from stok');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TFormStok.B6Click(Sender: TObject);
begin
frxrprt1.ShowReport;
end;

procedure TFormStok.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('id_sup').asstring);
  zqry2.Next;
end;
end;

end.
