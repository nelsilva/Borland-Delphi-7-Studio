program MyBaseExplorer;

uses
  QForms,
  MyBaseExpMain in 'MyBaseExpMain.pas' {Form1},
  AddNewTable in 'AddNewTable.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
