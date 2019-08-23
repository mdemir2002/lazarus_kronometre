unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

    procedure Button4Click(Sender: TObject);

    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);

    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  counter: integer = 0;
  sa: integer = 0;
  dk: integer = 0;
  sn: integer = 0;
  strdeg: string;
  topla: integer;

implementation


{$R *.lfm}

{ TForm1 }

function toplam(x,y:integer):integer;
begin
  result:= x+y;
end;

function birlestir(s:integer): string;
begin
     if s < 10 then begin
     result:= '0'+inttostr(s);
     end else  begin
     result:= inttostr(s);
     end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
     counter:= counter+1;
     label1.Caption:=birlestir(counter);
end;


procedure TForm1.Timer2Timer(Sender: TObject);
begin
  sn:= sn + 1;
  if sn = 60 then
  begin
       dk:= dk + 1;
       sn:= 0;

  end;

  if dk = 60 then
  begin
       sa:= sa + 1;
       dk:= 0;
  end;

  if sa = 24 then
  begin
       sa:= 0;
  end;

  label4.Caption:= birlestir(sa) + ':' + Birlestir(dk) +':'+birlestir(sn);

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  statusbar1.panels.items[1].Text:=datetostr(date);
  statusbar1.panels.items[3].Text:=timetostr(time);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.Enabled:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  memo2.Lines.add(label1.caption);

  Counter:=0;
  label1.Caption:='0';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer1.Enabled:=False;
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
  timer2.Enabled:=True;
end;



procedure TForm1.Button5Click(Sender: TObject);
begin
  timer2.Enabled:=False;
end;

procedure resetle;
begin
  sn:=0;
  dk:=0;
  sa:=0;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  memo1.Lines.Add(label4.Caption);
  resetle;
  label4.Caption:='00:00:00';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  sa:=23;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  dk:=59;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  sn:=55
end;







end.

