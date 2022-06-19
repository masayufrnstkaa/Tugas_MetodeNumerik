%120450016 - MASAYU FRANSTIKA
%f(x) = x^4-3*x^2-x-3, f'(x)= 4*x^3-6*x-1

disp('Program Metode Newton Raphson')
f = @(x) x^4-3*x^2-x-3;
df = @(x)4*x^3-6*x-1;
p0 = input('Masukan Nilai p0 : ');
e = input('Masukan Toleransi eror ; ');
n = input( 'Masukan Maksimal Iterasi : ');

if df(p0)~=0
    for i=1:n
      x1 = p0 - f(p0)/df(p0);
      fprintf(' Berada Pada Iterasi ke x%d dan Akarnya adalah = %.20f\n',i,x1)
      if abs(x1-p0)< e
         break
      end
      
      if df(x1) == 0
        disp('Terjadi Kesalahan');
       
      end
      p0 = x1;
    end
else
    disp('Terjadi Kesalahan');
end