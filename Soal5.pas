program katasandi;
var 
  pin, pil: integer;
  saldo: longint;
  coba: integer;

begin
coba:= 3;
saldo := 1000000;
    write('Masukkan PIN: ');
    readln(pin);
    if (pin = 1234) then
    begin;
    writeln('PIN benar. Selamat datang!');
    writeln;
    writeln('==== ATM ====');
    writeln('1. Cek saldo');
    writeln('2. Setor');
    writeln('3. Tarik');
    writeln('4. Transfer');
    writeln('5. Keluar');
    write('Pilihan: ');
    readln(pil);
    case pil of
    1: writeln('Saldo Anda: Rp', saldo);
    2: write('Jumlah setor: ');
       readln(setor);
       saldo := saldo + setor;
       writeln('Setor berhasil. Saldo: Rp', saldo);
    3. write('Jumlah tarik: ');
       readln(tarik);
       saldo := saldo - tarik;
       

    else    
    begin
        coba:= coba - 1
        writeln('PIN salah! Sisa percobaan: ', coba)
    end;


end;
