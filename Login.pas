unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLogin = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses MainMenu;

{$R *.dfm}

procedure TFormLogin.Button1Click(Sender: TObject);
begin
FormMenu.showmodal;
end;

end.
