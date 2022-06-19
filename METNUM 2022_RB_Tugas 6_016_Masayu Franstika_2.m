%120450016 - MASAYU FRANSTIKA

f = @(x) log (x) #fungsi x pada buku burden halaman 186
x = 1.8; #sebagai turunan dari f'(x) 
h = 0.1; #Hampiran
eps_step = 0.0001;
R= (f(x + h) - f(x - h))/(2*h); #inisialisasi Rumus Extrapolasi Richardson
for i=1:100
   h = h/2;
   R(i + 1, 1) = (f(x + h) - f(x - h))/(2*h); #penjabaran Rumus sebelumnya menggunakan pendekatan  h/2
   for j=1:i
      R(i + 1, j + 1) = (4^j*R(i + 1, j) - R(i, j))/(4^j - 1);  #penjabaran Rumus sebelumnya menggunakan pendekatan 2 perbedaan O(h^k+1)
   end
   if ( abs( R(i + 1, i + 1) - R(i, i) ) < eps_step )
      break;
   elseif ( i == 100 )
      error( 'Terjadi Kesalahan ' ); #output jika yang diinputkan tidak sesuai
   end
end