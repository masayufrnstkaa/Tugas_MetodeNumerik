%120450016 - MASAYU FRANSTIKA
%f(x) = x^4-3*x^2-x-3 , selang [1,3]

disp('Program Metode False Position')
f = @(x) x^4-3*x^2-x-3;
x = input('Masukan Selang Pertama : ');
y = input('Masukan Selang Kedua : ');
e = input('Masukan Toleransi Eror : ');
n = input('Masukan Jumlah Maksimal Iterasi : ');

if f(x)* f(y)<0 && x<y
    for i = 1 : n
      c =(x*f(y)-y*f(x))/(f(y)-f(x));
      fprintf('Iterasi ke %d dan Akarnya adalah = %.4f\n',i,c)
      if abs (f(c)) < e
        break
      end
      if f(x)*f(c) < 0
        y = c;
      elseif f(y)*f(c) < 0
        x = c;
    end
end

else 
    disp('Terjadi Kesalahan')
end