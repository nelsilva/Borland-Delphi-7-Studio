program Server;

uses
  Forms,
  ServerMain in 'ServerMain.pas' {Form1},
  Bank_S in 'Bank_S.pas',
  Bank_impl in 'Bank_impl.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.