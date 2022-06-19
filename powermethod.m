%120450016 - MASAYU FRANSTIKA
clc;
clear;

A=input('Masukan Matrix untuk memperkirakan Nilai Eigen Dominan : ');
x=[1;1;1];
m=input('Masukan Maksimal Iterasi : ');
e=input('Masukan Toleransi Error : ');

display('iterasi        ------------------vektor eigen---------------             nilai eigen');
for i=1:m
  y=A*x;
  c=max(y);
  xnew=(1/c)*y;
  if norm (x-xnew)<= e
    x=xnew;
    break;
  elseif norm (x-xnew)>= e
    x=xnew;
   endif
   fprintf('%3d       %12.6f        %12.6f       %12.6f          %12.6f\n',i,xnew,c);
   
endfor
disp(sprintf('vektor eigen : %12.6f \n',xnew));