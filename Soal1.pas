program Quiz1;
uses crt;

type
  TMataKuliah = record
    namaMK, nilai: string;
    sks: integer;
    nakhir: real;
  end;

  TMahasiswa = record
    nama, nim: string;
    jumlahMK: integer;
    MK: array[1..20] of TMataKuliah;
  end;

var
  mhs: array[1..100] of TMahasiswa;
  jumlahMhs, i, j: integer;

begin
clrscr;
  writeln('=== HASIL STUDI MAHASISWA ===');

  write('Jumlah mahasiswa: ');
  readln(jumlahMhs);

  //Input data mahasiswa
  for i := 1 to jumlahMhs do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);

    write('Nama: ');
    readln(mhs[i].nama);

    write('NIM: ');
    readln(mhs[i].nim);

    write('Jumlah mata kuliah: ');
    readln(mhs[i].jumlahMK);

    // Input mata kuliah
    for j := 1 to mhs[i].jumlahMK do
    begin
      writeln;
      writeln('Mata kuliah ke-', j);

      write('Nama mata kuliah: ');
      readln(mhs[i].MK[j].namaMK);

      write('Jumlah SKS: ');
      readln(mhs[i].MK[j].sks);

      write('Nilai (A, B+, B, C+, C, D, E): ');
      readln(mhs[i].MK[j].nilai);

      // Konversi nilai
      case mhs[i].MK[j].nilai of
        'A':  mhs[i].MK[j].nakhir := 4;
        'B+': mhs[i].MK[j].nakhir := 3.5;
        'B':  mhs[i].MK[j].nakhir := 3;
        'C+': mhs[i].MK[j].nakhir := 2.5;
        'C':  mhs[i].MK[j].nakhir := 2;
        'D':  mhs[i].MK[j].nakhir := 1;
        'E':  mhs[i].MK[j].nakhir := 0;
      else
        mhs[i].MK[j].nakhir := -1;
      end;
    end;
  end;

  // Menampilkan hasil studi
  for i := 1 to jumlahMhs do
  begin
    writeln;
    writeln('Tekan ENTER untuk melihat hasil studi');
    readln;

    writeln;
    writeln('==============================');
    writeln('      HASIL STUDI');
    writeln('==============================');

    writeln('Nama: ', mhs[i].nama);
    writeln('NIM : ', mhs[i].nim);

    for j := 1 to mhs[i].jumlahMK do
    begin
      writeln;
      writeln('Mata kuliah  : ', mhs[i].MK[j].namaMK);
      writeln('SKS          : ', mhs[i].MK[j].sks);
      writeln('Nilai        : ', mhs[i].MK[j].nilai);
      writeln('Nilai Akhir  : ', mhs[i].MK[j].nakhir:0:2);
    end;

    writeln('==============================');
    writeln;
  end;

end.
