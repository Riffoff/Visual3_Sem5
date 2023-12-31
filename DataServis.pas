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
    l9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    dg1: TDBGrid;
    B6: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    cbbc1: TComboBox;
    Button1: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure kolomaktif;
    procedure posisiawal;
    procedure kolombersih;
    procedure FormCreate(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServis: TFormServis;
  id : string;

implementation

{$R *.dfm}

procedure TFormServis.FormCreate(Sender: TObject);
begin
ZQuery1.First;
while not ZQuery1.Eof do
begin
  cbb1.items.add(ZQuery1.fieldbyname('id_sparepart').asstring);
  ZQuery1.Next;
end;
ZQuery2.First;
while not ZQuery2.Eof do
begin
  cbb2.items.add(ZQuery2.fieldbyname('id_pelanggan').asstring);
  ZQuery2.Next;
end;
end;
 
procedure TFormServis.kolomaktif;
begin
  cbb1.Enabled:= True;
  cbbc1.Enabled:= True;
  cbb2.Enabled:= True;
  edit1.Enabled:= True;
  edit2.Enabled:= True;
  edit3.Enabled:= True;
  edit4.Enabled:= True;
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
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  edit5.Clear;
end;

procedure TFormServis.posisiawal;
begin
kolombersih;

cbb1.Enabled:= False;
  cbbc1.Enabled:= False;
  cbb2.Enabled:= False;
  edit1.Enabled:= False;
  edit2.Enabled:= False;
  edit3.Enabled:= False;
  edit4.Enabled:= False;
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

end.
