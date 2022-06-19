%120450016 - MASAYU FRANSTIKA

g = input ('masukan fungsi : ', 's');  #input fungsi yang ingin dicari
f = str2func(g); #rumus
h = input('masukan h : '); #hampiran
d = input ('Turunan yang ingin di Hitung : ');
x = input ('Pada titik berapa Hampiran Turunan : ');

if d == 1;
  Fd2 = (f(x+h)-f(x))/h; #hampiran maju  2 point
  Bd2 = (f(x)-f(x-h))/h; #hampiran mundur 2 poin
  Cd2 = (f(x+h)-f(x-h))/(2*h); #hampirann pusat 2 poin
  Fd3 = (4*f(x+h)-f(x+2*h)-3*f(x))/(2*h); #hampiran maju  3 point
  Bd3 = (-4*f(x-h)+f(x-2*h)+3*f(x))/(2*h); #hampiran mundur 3 poin
  disp('Hasil menggunakan rumus 2 point')
  fprintf('Hampiran Turunan Maju : %4f\n', Fd2)
  fprintf('Hampiran Turunan Mundur : %4f\n', Bd2)
  fprintf('Hampiran Turunan Pusat : %4f\n', Cd2)
  disp('Hasil menggunakan rumus 3 point')
  fprintf('Hampiran Turunan Maju : %4f\n', Fd3)
  fprintf('Hampiran Turunan Mundur : %4f\n', Bd3)
  
elseif d == 2;
  Fd3 = (f(x+2*h)-2*f(x+h)+f(x))/(h^2); #hampiran maju  3 point
  Bd3 = (f(x-2*h)-2*f(x-h)+f(x))/(h^2); #hampiran mundur 3 poin
  Cd3 = (f(x+h)-2*f(x) + f(x-h))/(h^2); #hampiran Pusat  3 point
  disp('Hasil menggunakan rumus 3 point')
  fprintf('Hampiran Turunan Maju : %4f\n', Fd3)
  fprintf('Hampiran Turunan Mundur : %4f\n', Bd3)
  fprintf('Hampiran Turunan Pusat : %4f\n', Cd3)

else 
  disp('terjadi kesalahan')
  
end