unit Pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TFormPelanggan = class(TForm)
    l2: TLabel;
    l3: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    dg1: TDBGrid;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    c1: TComboBox;
    Button1: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    B6: TButton;
    procedure kolombersih;
    procedure kolomaktif;
    procedure posisiawal;
    procedure Button1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure B2Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPelanggan: TFormPelanggan;
  id : string;

implementation

uses Unit2, MainMenu;

{$R *.dfm}

procedure TFormPelanggan.kolomaktif;
begin
edit1.Enabled:= True;
c1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;
end;

procedure TFormPelanggan.kolombersih;
begin
Edit1.Clear;
c1.text:= '';
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
end;

procedure TFormPelanggan.posisiawal;
begin
kolombersih;

edit1.Enabled:= false;
c1.Enabled:= false;
edit2.Enabled:= false;
edit3.Enabled:= false;
edit4.Enabled:= false;
edit5.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TFormPelanggan.Button1Click(Sender: TObject);
begin
close;
FormMenu.show;
end;

procedure TFormPelanggan.B1Click(Sender: TObject);
begin
kolombersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

kolomaktif;
end;

procedure TFormPelanggan.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPelanggan.dg1CellClick(Column: TColumn);
begin
kolomaktif;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
c1.Text:= zqry1.FieldList[2].AsString;
Edit2.Text:= zqry1.FieldList[3].AsString;
Edit3.Text:= zqry1.FieldList[4].AsString;
Edit4.Text:= zqry1.FieldList[5].AsString;
Edit5.Text:= zqry1.FieldList[6].AsString;

end;

procedure TFormPelanggan.B2Click(Sender: TObject);
begin
if (Edit1.Text= '') or (c1.Text= '') or (Edit2.Text ='') or (Edit3.Text= '')or (Edit4.Text ='') or (Edit5.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama',Edit1.Text,[])) and (zqry1.Locate('telp',Edit3.Text,[])) then
begin
ShowMessage('DATA PELANGGAN SUDAH ADA');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pelanggan values (null,"'+Edit1.Text+'","'+c1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pelanggan');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;


procedure TFormPelanggan.B4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pelanggan').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pelanggan where id_pelanggan="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pelanggan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TFormPelanggan.B5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPelanggan.B3Click(Sender: TObject);
begin
if (Edit1.Text= '')or (c1.Text= '')or (Edit2.Text ='') or (Edit3.Text= '')or (Edit4.Text ='') or (Edit5.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (c1.Text = zqry1.Fields[2].AsString) and (Edit2.Text = zqry1.Fields[3].AsString) and (Edit3.Text = zqry1.Fields[4].AsString) and (Edit4.Text = zqry1.Fields[5].AsString) and (Edit5.Text = zqry1.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pelanggan').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update pelanggan set nama= "'+Edit1.Text+'",jk="'+c1.Text+'",alamat="'+Edit2.Text+'",telp="'+Edit3.Text+'",kota="'+Edit4.Text+'",kodepos="'+Edit5.Text+'" where id_pelanggan="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pelanggan');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormPelanggan.B6Click(Sender: TObject);
begin
frxrprt1.ShowReport;
end;

end.
