program kronometre;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2,crt;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  try
     Application.Initialize;
     Splash:=Tsplash.create(application);
     Splash.show;
     Splash.Update;
     delay(1000);
     application.ProcessMessages;
     Splash.close;
  finally
     Splash.Release;
  end;
  //Application.CreateForm(Tsplash, splash);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

