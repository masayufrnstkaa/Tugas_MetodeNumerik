%120450016 - MASAYU FRANSTIKA
%f(x) = x^4-3*x^2-x-3
clc
clear

disp('Program Metode Secant');
E = 10^-4;
p0 = input('Masukan p0 : ');
p1 = input('Masukan p1 : ');
f = inline('x^4-3*x^2-x-3');
i = 0;
M = 20;

disp('      i       xi      f(xi)     epsilon ');
disp('-----------------------------------------');

while(E<M)
    fx =  p0^4-3*p0^2-p0-3;
    fxb =  p1^4-3*p1^2-p1-3;
    c= p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    M = abs(p0-p1);
    disp(sprintf('%3.0f%12.6f%12.6f%12.6f\n',i,p1,f(p1),M));
    p0=p1;
    p1=c;
    i=i+1;
end
disp(sprintf('Akarnya adalah = %10.8f\n',p1))