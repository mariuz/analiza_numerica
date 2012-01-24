unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1;
  a: array[0..3,0..3] of double;
  b: array[0..3] of double;
  x: array[0..3] of double;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
var k,i,j,n : integer;
  p,S:double;

begin
  n:=3;
  a[1,1]:=1;
  a[1,2]:=1;
  a[1,3]:=1;
  b[1]:=3;
  a[2,1]:=2;
  a[2,2]:=3;
  a[2,3]:=4;
  b[2]:=9 ;
  a[3,1]:=1;
  a[3,2]:=-1;
  a[3,3]:=12;
  b[2]:=13;
  for k:= 1 to n do
  begin
    if a[k,k] <> 0 then
           p:= a[k,k]
       else
           exit();
  for j:=k to n do b[k] := b[k]/p;
  for i:=k+1 to n do
      begin
      for j:= k+1 to n do
          a[i,j]:=a[i,j] - a[k,j] * a[i,k];
      b[i]:= b[i]-b[k] * a[i,k];
      end;
  end;

  // sistem superior triunghiular
  for k:= n to 1 do
      begin
      S:=0;
      for i:= k+1 to n do S:= S+a[k,i]*x[i];
      x[k]:=(b[k]-S)/a[k,k]
      end;
  for i:= 1 to n do begin
  listbox1.Items.Add(floattostr(x[k]));
  end;
end;



end.

