%120450016 - MASAYU FRANSTIKA
%f(x) = x^4-3*x^2-x-3, g(x)=(3*x^2+x+3)^(1/4)

clear
clc

disp('Program Metode Fixed Point')
g = @(x) (3*x^2+x+3)^(1/4) ;
x0 = input('Masukan Nilai x0 : ');
e = input ('Masukan Toleransi Eror : ');
n = input ('Masukan Iterasi Maksimal : ');
i = 1;

while i <= n
   xp = g(x0)
   fprintf('Iterasi ke %.f akarnya adalah %d',i,xp)
   if abs (xp-x0) < e
    break
  endif
  x0 = xp
  i = i+1
end
if abs (xp-x0) > e
  fprintf('Terdapat Kesalahan')
endif