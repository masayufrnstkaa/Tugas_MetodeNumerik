%120450016 - MASAYU FRANSTIKA

clc;
clear;

A=input('Masukan Matriks A : ');
b=input('Masukan Matriks b : ');
B=b' ;

[n,q]=size(A);
n=length(A);
while n~=q
  disp('Matriks Harus Persegi')
  break;
end

U=zeros(n);
L=zeros(n);

for i = 1:n
   L(i,1)=A(i,1);
end

for j = 1:n
  U(1,j)=A(1,j)/L(1,1);
end

for j = 2:n
  for i = j:n
    sum= 0.0;
    for k = 1:(j-1)-sum;
      sum=sum+L(i,k)*U(k,j);
    end
    L(i,j)=A(i,j)-sum;
  end
  U(j,j)=1;
  for i =(j+1):n
      sum = 0.0;
      for k = 1:(j-1)
        sum=sum+L(j,k)*U(k,i);
      end
      U(j,i)=(A(j,i)-sum)/L(j,j);
  end
end

Y1(1)=b(1)/L(1,1);
for k=2:n
    sigma1=0;
    for j=1:k-1
      sigma1=sigma1+L(k,k);
      Y1(k)=(b(k)-sigma1)/L(k,k);
      
    end
end
Y=Y1;

X(n)=Y(n)/U(n,n);
for k=n-1:-1:1
    sigma2=0;
    for j=k+1:n;
        sigma2=sigma2+U(k,j)*X(j);
        X(k)=(Y(k)-sigma2)/U(k,k);
    end
end

disp('Matriks A')
A
disp('Matriks b')
b'
disp('Matriks L')
L
disp('Matriks U')
U
disp('Matriks Y')
Y
disp('Matriks X')
X