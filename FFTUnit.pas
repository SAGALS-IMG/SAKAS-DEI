unit FFTUnit;

interface
uses Math;
const Fourie=true;
      InvFourie=false; 
type DataType = array[-4097..4097] of double;
     DataType2 = array[-2048..2048,-2048..2048] of double;
procedure FFT(DataNum,Error:longint;var Xr,Xi:DataType;flag:boolean;Centered:boolean);
procedure FFT2(DataNumX,DataNumY,Error:longint;var Xr,Xi:DataType2;flag:boolean;Centered:boolean);

implementation
procedure FFT2(DataNumX,DataNumY,Error:longint;var Xr,Xi:DataType2;flag:boolean;Centered:boolean);
var
  n1,n2,i,j{,iter}:longint;
  Wr,Wi : DataType;
begin
  n1:=DataNumX;
  n2:=DataNumY;
  //i:= DataNum;
  //iter := Round(Log2(DataNum));

  for j:=1 to n2 do
  begin
    for i:=1 to n1 do
    begin
      Wr[i]:=Xr[j,i];
      Wi[i]:=Xi[j,i];
    end;
    FFT(n1,Error,Wr,Wi,flag,Centered);
    for i:=1 to n1 do
    begin
      Xr[j,i]:=Wr[i];
      Xi[j,i]:=Wi[i];
    end;
  end;

  for i:=1 to n1 do
  begin
    for j:=1 to n2 do
    begin
      Wr[j]:=Xr[j,i];
      Wi[j]:=Xi[j,i];
    end;
    FFT(n2,Error,Wr,Wi,flag,Centered);
    for j:=1 to n2 do
    begin
      Xr[j,i]:=Wr[j];
      Xi[j,i]:=Wi[j];
    end;
  end;
end;


procedure FFT(DataNum,Error:longint;var Xr,Xi:DataType;flag:boolean;Centered:boolean);
var
  n,iter,i,j,k,it,xp,xp2,j1,j2,jj : longint;
  Sgn,W,Wr,Wi,dr1,dr2,di1,di2,tr,ti,arg : double;
  TmpData: DataType;
begin
  n:=DataNum;
  iter := Round(Log10(n)/Log10(2));
  if flag then
    Sgn := -1
  else
    Sgn := 1;

    xp2 := n;
    for it:=1 to iter do
    begin
      xp:=xp2;
      xp2:=xp div 2;
      w:=Pi/xp2;
      for k:=1 to xp2 do
      begin
        arg:=(k-1)*w;
        Wr := cos(arg);
        Wi := sgn*sin(arg);
        i:=k-xp;
        j:=0;
        for jj:=1 to (n div xp) do
        begin
          j:=j+xp;
          j1:=j+i;
          j2:=j1+xp2;
          dr1:=xr[j1];
          dr2:=xr[j2];
          di1:=xi[j1];
          di2:=xi[j2];
          tr:=dr1-dr2;
          ti:=di1-di2;
          xr[j1]:=dr1+dr2;
          xi[j1]:=di1+di2;
          xr[j2]:=tr*wr-ti*wi;
          xi[j2]:=ti*wr+tr*wi;
        end;
      end;
    end;

    j1:=n div 2;
    j2:=n-1;
    j:=1;
    for i:=1 to j2 do
    begin
      if i<j then
      begin
        tr:=xr[j];
        ti:=xi[j];
        xr[j]:=xr[i];
        xi[j]:=xi[i];
        xr[i]:=tr;
        xi[i]:=ti;
      end;
      k:=j1;
      while k<j do
      begin
        j:=j-k;
        k:=k div 2;
      end;
      j:=j+k;
    end;

    if not(flag) then
    begin
      w:=n;
      for i:=1 to n do
      begin
        xr[i]:=xr[i]/w;
        xi[i]:=xi[i]/w;
      end;
    end;

  if Centered then
  begin
    for i:=0 to n do
    begin
      Xr[i] := Xr[i+1];
      Xi[i] := Xi[i+1];
    end;
    for i:=n div 2 to n-1 do
    begin
      Xr[-(n-i)] := Xr[i];
      Xi[-(n-i)] := Xi[i];
    end;
  end;
end;

end.
