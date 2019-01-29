program MultiBuffer;

uses
  Vcl.Forms,
  unitMain in 'unitMain.pas' {main},
  unitSettings in 'unitSettings.pas' {settings},
  unitBuffer in 'unitBuffer.pas' {buffer},
  unitTimer in 'unitTimer.pas' {fTimer},
  unitDebug in 'unitDebug.pas' {debug},
  unitReport in 'unitReport.pas' {report};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Multi buffer';
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tdebug, debug);
  Application.CreateForm(Tsettings, settings);
  Application.CreateForm(Tbuffer, buffer);
  Application.CreateForm(TfTimer, fTimer);
  Application.CreateForm(Treport, report);
//  unitMain.main.bdCheack.Click;

  if unitMain.main.dbConnect then unitMain.main.pageInitSQL(unitSettings.settings.numberPage—urrent) else
    unitMain.main.statusBottom('¡ƒ Õ≈ œŒƒ Àﬁ◊≈Õ¿!',unitMain.main.dbName);

  buffer.FormStyle:=fsStayOnTop;
  main.N5.Checked:=true;
  buffer.Show;
  report.Hide;
  ftimer.Hide;



  Application.Run;

end.
