program MultiBuffer;

uses
  Vcl.Forms,
  unitMain in 'unitMain.pas' {main},
  unitSettings in 'unitSettings.pas' {settings},
  unitBuffer in 'unitBuffer.pas' {buffer},
  unitTimer in 'unitTimer.pas' {fTimer},
  unitDebug in 'unitDebug.pas' {debug};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Multi buffer';
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tsettings, settings);
  Application.CreateForm(Tbuffer, buffer);
  Application.CreateForm(TfTimer, fTimer);
  Application.CreateForm(Tdebug, debug);
  unitMain.main.pageInitSQL(unitSettings.settings.numberPageŅurrent);
  buffer.FormStyle:=fsStayOnTop;
  main.N5.Checked:=true;
  buffer.Show;
  ftimer.Hide;

  Application.Run;

end.
