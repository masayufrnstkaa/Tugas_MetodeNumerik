%120450016-MASAYU FRANSTIKA
A = [1 1 -1 1 -1 ; 2 2 1 -1 1 ; 3 1 -3 -2 3 ; 4 1 -1 4 -5 ; 16 -1 1 -1 -1]
b = [2;4;8;16;32]

function [x] = m(A,b)
n = length(b);
%Gussian Elimination
for j=1:(n-1)
    if A(j,j)==0 
        for k =j+1:n
          if A(k,j)~=0
              [h]=A(k,:);
              A(k,:)=A(j,:);
              A(j,:)=[h];
              t=b(k);
              b(k)=b(j);
              b(j)=t;
              break
            elseif k==n
                      fprintf('Tidak memiliki solusi Unik')
                      return
                      
          end
        end
    end
    for i=j+1:n
      m=A(i,j)/A(j,j);
      A(i,:)=A(i,:)-m*A(j,:);
      b(i)=b(i)-m*b(j);
    end
    end
    if A(n,n)==0 
      fprintf('Tidak memiliki solusi Unik')
    return
    else
%Backward Substitusion
x(n)=b(n)/A(n,n);
for i = n-1:-1:1
  h=0;
  for j=(i+1):n
      h=h+A(i,j)*x(j);
   end
   x(i)=(b(i)-h)/A(i,i);
end
    
    end