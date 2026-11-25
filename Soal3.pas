program soal3;
var 
angka: array[1...100] of integer;
i, n: integer;
pil: integer;
maks, min: integer;

begin
    writeln('========================================');
    writeln('        Program Pengolahan Angka');
    writeln('========================================');
    writeln('1. Angka Terkecil');
    writeln('2. Angka Terbesar');
    writeln('3. Angka Positif');
    writeln('4. Angka Negatif');
    writeln('5. Bilangan Prima');
    writeln('6. Keluar');
    writeln('========================================');
    write('Pilihan: ');
    readln(pil);
    write('Masukkan jumlah angka: ');
    readln(angka);
    for i:= 1 to n do 
    begin
        writeln('Masukkan angka ke-', i,': ');
    end;

maks := angka[1];
min := angka[1];

case pil of
1: for i := 1 to n do 
   begin
   if angka[i] > min then
      min := nilai[i];
   end;

2: for i := 1 to n do 
   begin
   if angka[i] > maks then
      maks := nilai[i];
   end;

3: if angka[i] > 0 then true
end;
