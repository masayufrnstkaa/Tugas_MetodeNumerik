%120450016 - MASAYU FRANSTIKA

f= @(x) sin (x) ; #fungsi x pada buku burden halaman 207
a = 0;  #batas bawah
b = 22/7; #batas atas
h = 0.00002; #hampiran
n = (b-a)/h; #jumlah subinterval
jumlah = 0;

#trapezoid
for i=1:n-1
  jumlah = jumlah + f(a+i*h);
end
Trapezoid = (h/2)*(f(a) + 2*jumlah + f(b)); #rumus trapezoid
fprintf('Hampiran dari metode Trapezoid adalah : %.6f\n',Trapezoid)

# Simpson 1/3
jumlah_ganjil = 0;
for j=1:2:n-1
  jumlah_ganjil = jumlah_ganjil + f(a+j*h); 
end

jumlah_genap = 0;
for k=2:2:n-2
  jumlah_genap = jumlah_genap + f(a+k*h);
end
simp1 = (h/3)*(f(a) + 4* jumlah_ganjil + 2*jumlah_genap + f(b)) #menanggil rumus yang sudah diketik diatas
fprintf('Hampiran dari metode Simpson 1/3 adalah : %.6f\n',simp1)

# Simpson 3/8
sum_lagi = 0;
for l=3:3:n-1
  sum_lagi = sum_lagi + f(a+l*h);
end
sum2_lagi = 0;
for m=1:n-1
  sum2_lagi =sum2_lagi +f(a+m*h);
end
sum_terus = sum2_lagi - sum_lagi;
simp2 = (3*h/8)*(f(a) + 3*sum_terus + 2*sum_lagi + f(b)) #menanggil rumus yang sudah diketik diatas
fprintf('Hampiran dari metode Simpson 3/8 adalah : %.6f\n',simp2)
