unit bisection;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
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
var x:double;
begin
  a:=1;
  b:=2;
  epsilon:= power(10, -4);
  while (b-a >= epsilon) do
  begin
    x:= (a+b)/2;
    if (generalFunction(a)*generalFunction(x)<=0 ) then b :=x
                                                else a:=x;
  end;
  edit1.text:=floattostr(x);
end;

function Tform1.generalFunction (x :double):double;
begin
  result := x*x - 2;
end;

end.

