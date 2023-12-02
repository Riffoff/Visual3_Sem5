program Servis_Elektronik;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  Pelanggan in 'Pelanggan.pas' {Form2},
  Supplier in 'Supplier.pas' {Form3},
  Stok in 'Stok.pas' {Form4},
  Transaksi in 'Transaksi.pas' {Form5},
  User in 'User.pas' {Form6},
  DataServis in 'DataServis.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
