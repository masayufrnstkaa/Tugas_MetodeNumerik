%120450016 - MASAYU FRANSTIKA

f = @(t,y) (4*exp(0.8*t)-0.5*y); #rumus
a = input('x0:  '); #sebagai x0
b = input('y0:  '); #y0
n = input('Iterasi: '); #iterasi             
alpha = input('x1:  '); #x1
 
h = (b-a)/n;                                                
t=[a zeros(1,n)]; 
w=[alpha zeros(1,n)];

 
for i = 1:n+1
  t(i+1)=t(i)+h;
  wprime=w(i)+(h/3)*f(t(i),w(i));
  w(i+1)=w(i)+(h/4)*(f(t(i),w(i))+3*f(t(i)+(2*h/3), w(i)+(2*h/3)*f(t(i)+h/3, wprime)));
  fprintf('%5.4f  %11.8f\n', t(i), w(i));
  plot(t(i),w(i),'r*'); grid on; 
  xlabel('t values'); ylabel('w values');
  hold on;
 end