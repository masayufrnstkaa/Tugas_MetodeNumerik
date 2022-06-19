% 120450016 - MASAYU FRANSTIKA

clc;
clear;

A = input('Masukan Matrix A : ');
b = input('Masaukan Vektor b :');
p = input('Masukan Hampiran awal : ');
e = input('Maukan Toleransi Eror : ');
i = input ('Masukan Iterasi Maksimal : ');
n = length(b);
x = zeros(n,1);

for j =1:i
  for g=1:n
    x(g) = (b(g)/A(g,g)) - (A(g,[1:g-1,g+1:n])*p([1:g-1,g+1:n]))/A(g,g);
  end
fprintf('Iterasi %d\n', j)
x
if abs(x-p)<e
  break
end
p=x;
end