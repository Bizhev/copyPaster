program MultiBuffer;

uses
  Vcl.Forms,
  unitMain in 'unitMain.pas' {main},
  unitSettings in 'unitSettings.pas' {settings},
  unitBuffer in 'unitBuffer.pas' {buffer},
  unitTimer in 'unitTimer.pas' {fTimer},
  unitDebug in 'unitDebug.pas' {debug},
  unitReport in 'unitReport.pas' {report},
  UnitAbout in 'UnitAbout.pas' {about},
  UnitWizard in 'UnitWizard.pas' {wizard};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Multi buffer';
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  // Для дебага\логирования приложения
  Application.CreateForm(Tdebug, debug);

  // wizard  проверяет приложение перед использованием
  Application.CreateForm(Twizard, wizard);

  Application.CreateForm(Tsettings, settings);
  Application.CreateForm(Tbuffer, buffer);
  Application.CreateForm(TfTimer, fTimer);
  Application.CreateForm(Treport, report);
  Application.CreateForm(Tabout, about);
  //  Application.CreateForm(Twizard, wizard);
  //  unitMain.main.bdCheack.Click;

  if unitMain.main.dbConnect then unitMain.main.pageInitSQL(unitSettings.settings.numberPageСurrent) else
    unitMain.main.statusBottom('БД НЕ ПОДКЛЮЧЕНА!',unitMain.main.dbName);

  buffer.FormStyle:=fsStayOnTop;
  main.N5.Checked:=true;
  buffer.Show;
  report.Hide;
  ftimer.Hide;




  Application.Run;
  main.syncDbApp();
  main.bdCheack.Click;

end.
