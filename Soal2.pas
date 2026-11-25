program soal2;

type
  Pjualan = record
    kode: integer;
    nama_barang: string;
    harga: integer;
    jumlah: integer;
  end;

var
  jualanyok: array[1...100] of Pjualan;
  i: integer;

function diskon

