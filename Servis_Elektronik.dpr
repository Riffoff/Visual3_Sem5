program Servis_Elektronik;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Pelanggan in 'Pelanggan.pas' {FormPelanggan},
  Supplier in 'Supplier.pas' {FormSupplier},
  Transaksi in 'Transaksi.pas' {FormTransaksi},
  User in 'User.pas' {FormUser},
  DataServis in 'DataServis.pas' {FormServis},
  MainMenu in 'MainMenu.pas' {FormMenu},
  Stok in 'Stok.pas' {FormStok};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormServis, FormServis);
  Application.CreateForm(TFormPelanggan, FormPelanggan);
  Application.CreateForm(TFormSupplier, FormSupplier);
  Application.CreateForm(TFormTransaksi, FormTransaksi);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormStok, FormStok);
  Application.Run;
end.
