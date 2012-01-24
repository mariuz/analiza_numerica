unit bisection;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    function generalFunction (x :double):double;
  end; 

var
  Form1: TForm1;
  a,b,epsilon:double;

implementation

{$R *.lfm}

procedure TForm1.Button1Click(Sender: TObject);
//Pagina 18 din curs
var S:double;
  n,i:integer;
  semn:integer;
begin
  S:= 0;
  n:= 99;
  semn:=-1;
  for i:=1 to n do
      begin
        semn:=semn *(-1);
        S:=S+semn/i;
      end;
  edit1.text:=floattostr(S);
end;

procedure TForm1.Button2Click(Sender: TObject);

//Pagina 19 din curs

// Program Serie cu termeni pozitivi
var S,x,epsilon:double;
     n:integer;
  begin
  S:= 2/3;
  x:= 2/3;
  n:= 0;
  epsilon := power(10,-2);
  repeat
      begin
           n:= n+1;
           x:= x * n /(n+1);
           S:= S + x;


      end

  until 3*x <= epsilon;


  edit1.text:=floattostr(S);

end;

function Tform1.generalFunction (x :double):double;
begin
  result := x*x - 2;
end;

end.

