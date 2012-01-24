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
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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

//Pagina 21 din curs
var S,epsilon,euler:double;
  n:integer;
  semn:integer;
begin
  S:= 1/2;
  n:= 1;
  semn:=-1;
  epsilon := power(10,-2);
  repeat
      begin

           n:= n+1;
           semn:= semn*(-1);
           euler:= 1/(2*n*(n-1));
           S:=S+semn*euler;

      end

  until euler <= epsilon;


  edit1.text:=floattostr(S);
  edit2.text:=inttostr(n);

end;

function Tform1.generalFunction (x :double):double;
begin
  result := x*x - 2;
end;

end.

