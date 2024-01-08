program Servis_Elektronik;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Pelanggan in 'Pelanggan.pas' {FormPelanggan},
  Supplier in 'Supplier.pas' {FormSupplier},
  Stok in 'Stok.pas' {FormStok},
  Transaksi in 'Transaksi.pas' {FormTransaksi},
  User in 'User.pas' {FormUser},
  DataServis in 'DataServis.pas' {FormServis},
  MainMenu in 'MainMenu.pas' {FormMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormPelanggan, FormPelanggan);
  Application.CreateForm(TFormSupplier, FormSupplier);
  Application.CreateForm(TFormStok, FormStok);
  Application.CreateForm(TFormTransaksi, FormTransaksi);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormServis, FormServis);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.Run;
end.
