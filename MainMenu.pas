unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormMenu = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses Pelanggan, DataServis, Supplier, Transaksi, User, Stok;

{$R *.dfm}

procedure TFormMenu.Button1Click(Sender: TObject);
begin
FormPelanggan.showmodal;
end;

procedure TFormMenu.Button2Click(Sender: TObject);
begin
FormServis.showmodal;
end;

procedure TFormMenu.Button4Click(Sender: TObject);
begin
FormSupplier.showmodal;
end;

procedure TFormMenu.Button5Click(Sender: TObject);
begin
FormTransaksi.showmodal;
end;

procedure TFormMenu.Button6Click(Sender: TObject);
begin
FormUser.showmodal;
end;

procedure TFormMenu.Button3Click(Sender: TObject);
begin
FormStok.showmodal;
end;

end.
