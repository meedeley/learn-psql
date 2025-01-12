**Daftar Isi**

# **1. Pengenalan Sistem Basis Data**

DBMS adalah aplikasi yang digunakan untuk me-manage data

Tanpa menggunakan DBMS, untuk me-manage data, seperti data produk, data customer, data penjualan, kita harus simpan dalam bentuk file (misal seperti ketika menggunakan Excel)

DBMS biasanya berjalan sebagai aplikasi server yang digunakan untuk me-manage data, kita hanya tinggal memberi perintah ke DBMS untuk melakukan proses manajemen datanya, seperti menambah, mengubah, menghapus atau mengambil data

Contoh DBMS yang populer seperti MySQL, PostgreSQL, MongoDB, Oracle, dan lain-lain

# **2. Pengenalan Relational Database**

### **Konsep Dasar:**

1. **Data:** Informasi yang tersimpan dalam database, seperti nama, alamat, atau nomor telepon.
2. **Database:** Kumpulan terstruktur dari data yang tersimpan dalam tabel-tabel.
3. **Tabel:** Struktur dasar dalam database relasional yang terdiri dari baris dan kolom. Setiap baris mewakili catatan tunggal dan setiap kolom mewakili atribut atau field tertentu.
4. **Relasi:** Hubungan antara entitas atau data dalam tabel yang mencerminkan keterkaitan atau ketergantungan antar data.

### **Struktur Database Relasional:**

1. **Tabel:** Struktur dasar dalam database relasional yang terdiri dari baris dan kolom. Setiap tabel memiliki nama unik dan setiap kolom memiliki nama dan tipe data yang menentukan jenis nilai yang dapat disimpan di dalamnya.
2. **Kunci Utama (Primary Key):** Kolom atau kombinasi kolom yang unik mengidentifikasi setiap baris dalam tabel. Kunci utama memastikan bahwa tidak ada duplikat data dalam tabel.
3. **Kunci Asing (Foreign Key):** Kolom dalam sebuah tabel yang mengacu pada kunci utama tabel lain. Kunci asing digunakan untuk menghubungkan data antar tabel dan membangun hubungan relasional antara mereka.
4. **Composite Primary Key:** Gabungan dua atau lebih kolom yang bersama-sama bertindak sebagai kunci utama untuk mengidentifikasi secara unik setiap baris dalam tabel.

### **Prinsip-prinsip Database Relasional:**

1. **ACID Properties:** Database relasional mengikuti prinsip ACID (Atomicity, Consistency, Isolation, Durability) untuk memastikan keandalan dan konsistensi transaksi data.
2. **Normalisasi:** Proses desain database untuk mengurangi redundansi dan anomali data dengan membagi tabel menjadi entitas yang lebih kecil dan lebih terdefinisi.
3. **Relasi antar Tabel:**
    - **One-to-Many (Satu-ke-Banyak):** Satu kategori dapat memiliki banyak post yang terkait dengannya. Misalnya, kategori "Teknologi" dapat memiliki banyak artikel tentang smartphone, komputer, atau aplikasi.
    - **Many-to-One (Banyak-ke-Satu):** Banyak post dapat terkait dengan satu kategori tertentu. Misalnya, beberapa artikel tentang smartphone, komputer, dan aplikasi semuanya terkait dengan kategori "Teknologi".
    - **One-to-One (Satu-ke-Satu) : K**etika setiap entitas dalam satu tabel berhubungan dengan satu entitas dalam tabel lainnya. Misalnya, setiap karyawan hanya memiliki satu entri dalam tabel detail karyawan.
    - **Many-to-Many (Banyak-ke-Banyak):** Beberapa post dapat terkait dengan beberapa kategori. Misalnya, sebuah artikel tentang tren fashion dapat terkait dengan kategori "Fashion" dan "Tren".
4. **Query Language:** Penggunaan bahasa query seperti SQL (Structured Query Language) untuk mengambil, memperbarui, dan mengelola data dalam database relasional.

### Diagram Cara Kerja DBMS

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/21747257-443b-4fc2-a8ac-9222b9ade09a/Untitled.png)

### Database Client

Database client adalah aplikasi yang digunakan untuk berkomunikasi dengan DBMS

Biasanya DBMS sudah menyediakan database client sederhana yang bisa kita gunakan untuk berkomunikasi dengan DBMS agar lebih mudah

Atau kita bisa membuat aplikasi untuk berkomunikasi dengan DBMS, misal membuat aplikasi database client menggunakan Java, PHP atau bahasa pemrograman lainnya

### Database File

Mayoritas DBMS menyimpan datanya di file, walaupun ada beberapa database yang hanya menyimpan datanya di memory (RAM)

Namun jangan berpikir file database yang disimpan berupa file seperti Excel atau CSV (Comma Separated Value), tapi jauh lebih kompleks

Database File akan di optimasi oleh DBMS agar mempermudah DBMS dalam manajemen datanya, seperti insert, update, delete dan select

Tiap DBMS biasanya memiliki cara masing-masing mengelola Database File nya, dan kita tidak perlu harus tau, karena yang kita perlu tahu hanya cara berkomunikasi ke DBMS

### SQL (Structure Query Language)

Structured Query Language

Merupakan bahasa yang digunakan untuk mengirim perintah ke DBMS

SQL adalah bahasa yang mudah karena hanya berisi instruksi untuk menyimpan, mengubah, menghapus atau mengambil data melalui DBMS

Secara garis besar, semua perintah SQL di Relational Database itu hampir sama, namun biasanya tiap DBMS ada improvement yang membedakan hal-hal kecil dalam perintah SQL, namun secara garis besar perintahnya tetap sama

### Jenis Jenis Perintah SQL

1. **DDL (Data Definition Language)**: Mendefinisikan struktur dan skema basis data seperti tabel, indeks, dan tampilan.
2. **DML (Data Manipulation Language)**: Memanipulasi data dalam tabel seperti menyisipkan, memperbarui, menghapus, dan mengambil data.
3. **DCL (Data Control Language)**: Mengatur hak akses dan keamanan dalam basis data dengan GRANT dan REVOKE.
4. **TCL (Transaction Control Language)**: Mengelola transaksi dengan COMMIT, ROLLBACK, dan SAVEPOINT.

# **3. Pengenalan PostgreSQL**

PostgreSQL adalah DBMS Relational OpenSource yang sangat populer, terutama di perusahaan enterprise

Tidak hanya OpenSource, PostgreSQL juga gratis untuk digunakan

Proyek PostgreSQL dimulai sejak tahun 1986, dibawah arahan Professor Michael Stonebreaker di Universitas California, Berkeley

PostgreSQL sangat populer sekali dikalangan perusahaan Enterprise

https://www.postgresql.org/

### MySQL VS PostgreSQL

MySQL sampai sekarang menjadi salah satu DBMS OpenSource yang paling populer di dunia

Namun, banyak perusahaan besar yang menggunakan database PostgreSQL, hal ini dikarenakan PostgreSQL memiliki fitur yang lebih kaya dibandingkan MySQL

MySQL fokus pada performa dan kecepatan, oleh karena itu fitur nya tidak sebanyak di PostgreSQL

# **5. Database**

Database adalah tempat kita menyimpan table di PostgreSQL

Jika kita misalkan table di PostgreSQL adalah sebuah file, maka database adalah folder nya, dimana kita bisa menyimpan banyak table di sebuah database

Biasanya pembuatan kita akan membuat satu database untuk satu jenis aplikasi, walaupun satu aplikasi bisa menggunakan lebih dari satu database, namun lumrahnya, satu aplikasi akan menggunakan satu database

### Diagram Database

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/e5297595-5bc2-429a-9046-81757df09b43/Untitled.png)

### Masuk Ke Postgresql Client

```sql
	psql --host=localhost --port=5432 --dbname=postgres --username=nichola --password=123456
	 
```

### Melihat Semua Database Di PostgreSQL

**Kalau Di Terminal :**

```sql
\l
```

![Screenshot from 2024-04-28 10-30-23.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/ca4c7ed8-04f5-4477-beb7-20fb5386ae8e/Screenshot_from_2024-04-28_10-30-23.png)

**Kalau Menggunakan Database Client :** 

```sql
select datname from pg_database
```

![Screenshot from 2024-04-28 10-35-03.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/93dc83ec-e490-4969-9be8-d3a450fb882d/Screenshot_from_2024-04-28_10-35-03.png)

### 1. Membuat Database Baru

```sql
CREATE DATABASE belajar_postgresql_dasar;
```

### **2. Menghapus Database**

```sql
DROP DATABASE belajar_postgresql_dasar;
```

### **3. Menggunakan Database**

**Kalau di Terminal :**

```sql
\c namadatabase
```

**Kalau di Database Client** 

Kita bisa dengan mudah berganti databasenya dengan fitur database clientnya

# **6. Tipe Data**

Saat kita membuat tabel di Excel, kita bisa menentukan tipe data apa yang kita masukkan ke tiap kolom di Excel

Di PostgreSQL, kita juga bisa menentukan tipe data tiap kolom yang kita buat di sebuah tabel

Ada banyak sekali tipe data yang tersedia di PostgreSQL, dari yang sederhana, sampai yang kompleks.

Biasanya kita akan menggunakan tipe data sesuai dengan kebutuhan kolom yang perlu kita buat

### Tipe Data Perkolom

| **Id (number)** | **Nama (text)** | **Harga (number)** | **Jumlah (number)** |
| --- | --- | --- | --- |
| 1 | Apel | 5000 | 100 |
| 2 | Jeruk | 2000 | 200 |
| 3 | Semangka | 10000 | 50 |

# **7. Tipe Data Number**

Secara garis besar, tipe data number di PostgreSQL ada dua jenis;

Integer, atau tipe number bilangan bulat

Floating Point, atau tipe data number pecahan

| **Name** | **Storage Size** | **Description** | **Range** |
| --- | --- | --- | --- |
| smallint | 2 bytes | small-range integer | -32768 to +32767 |
| integer | 4 bytes | typical choice for integer | -2147483648 to +2147483647 |
| bigint | 8 bytes | large-range integer | -9223372036854775808 to +9223372036854775807 |
| decimal | variable | user-specified precision, exact | up to 131072 digits before the decimal point; up to 16383 digits after the decimal point |
| numeric | variable | user-specified precision, exact | up to 131072 digits before the decimal point; up to 16383 digits after the decimal point |
| real | 4 bytes | variable-precision, inexact | 6 decimal digits precision |
| double precision | 8 bytes | variable-precision, inexact | 15 decimal digits precision |
| smallserial | 2 bytes | small autoincrementing integer | 1 to 32767 |
| serial | 4 bytes | autoincrementing integer | 1 to 2147483647 |
| bigserial | 8 bytes | large autoincrementing integer | 1 to 9223372036854775807 |

### DECIMAL / NUMERIC

Selain Integer dan Floating Point, di PostgreSQL terdapat tipe data DECIMAL / NUMERIC

Ini tipe data number khusus yang bisa ditentukan jumlah precision dan scale nya

<aside>
💡 Parameter pertama adalah jumlah angka di depan koma, dan parameter kedua adalah jumlah angka di belakang koma

</aside>

| **NUMERIC** | **Min** | **Max** |
| --- | --- | --- |
| NUMERIC(5, 2) | -999.99 | 999.99 |
| NUMERIC(5, 0) | -99999 | 99999 |
| NUMERIC(3, 1) | -99.9 | 999 |
| NUMERIC(3) | -999 | 999 |

**Contoh :**

`numeric(4, 1)`.

Ini berarti kita memiliki total 4 digit maksimum (termasuk bagian desimal), dengan 1 digit yang disediakan untuk desimal, sehingga akan menyimpan angka hingga `999.9`.

Jika kita dapat menerima angka yang tidak lebih besar dari `99.9`, maka `numeric(3, 1)` sudah cukup.

# **8. Tipe Data String**

Selain number, biasanya kita sering menyimpan data di dalam tabel dalam bentuk tulisan

Tipe data ini namanya tipe data String atau Text

Ada banyak tipe data String di PostgreSQL

### **CHAR dan VARCHAR**

Pertama tipe data String di PostgreSQL adalah **CHAR dan VARCHAR**

Kita bisa menentukan jumlah panjang maksimal karakter yang bisa ditampung oleh CHAR dan VARCHAR dengan menggunakan kurung buka lalu masukan jumlah maksimal karakter dan diakhiri kurung tutup

Misal, CHAR(10) atau VARCHAR(10) artinya tipe data String dengan maksimal jumlah karakternya adalah 10 karakter

Maksimum ukuran CHAR atau VARCHAR adalah 65535 karakter

### Perbedaan CHAR dan VARCHAR

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/760c3b99-5fdd-4de8-a739-1309f343ab48/Untitled.png)

<aside>
💡 Varchar Itu juga menyimpan total panjang datanya

</aside>

### TEXT

Selain CHAR dan VARCHAR, tipe data String yang lainnya adalah TEXT

Berbeda dengan CHAR dan VARCHAR yang kita bisa tentukan panjang maksimum nya, TEXT tidak memiliki maksimum panjang nya

# **9. Tipe Data Date dan Time**

Selain tipe data Number dan String, biasanya kadang kita sering menyimpan data waktu atau tanggal

Sebenarnya bisa kita gunakan String untuk menyimpan data waktu atau tanggal, namun itu tidak direkomendasikan, karena akan menyulitkan kita ketika nanti butuh melakukan manipulasi waktu atau tanggal di PostgreSQL

| Name | Storage Size | Description | Low Value | High Value | Resolution |
| --- | --- | --- | --- | --- | --- |
| timestamp (without time zone) | 8 bytes | both date and time (no time zone) | 4713 BC | 294276 AD | 1 microsecond |
| timestamp (with timeone) | 8 bytes | both date and time, with time zone | 4713 BC | 294276 AD | 1 microsecond |
| date | 4 bytes | date (no time of day) | 4713 BC | 5874897 AD | 1 day |
| time (without time zone) | 8 bytes | time of day (no date) | 00:00:00 | 24:00:00 | 1 microsecond |
| time (with time zone) | 12 bytes | time of day (no date), with time zone | 00:00:00+1559 | 24:00:00-1559 | 1 microsecond |
| interval [fields] | 16 bytes | time interval | -178,000,000 yrs | 178,000,000 yrs | 1 microsecond |

### Format Tipe Data Dan Time

Format penulisan tipe data waktu, bisa menggunakan format

Timestamp : YYYY-MM-dd HH:mm:ss

Date : YYYY-MM-dd

Time : HH:mm:ss

# **10. Tipe Data Boolean**

BOOLEAN adalah tipe data kebenaran, yang artinya datanya hanya ada dua jenis, benar atau salah

Benar direpresentasikan dengan data TRUE, sedangkan salah direpresentasikan dengan data FALSE

# **11. Tipe Data Enum**

Saat membuat kolom, kadang ada jenis tipe data Text, namun isi datanya sudah fix, misal Jenis Kelamin, Kategori, dan sejenisnya

Kasus seperti itu bisa menggunakan tipe data Enum

Tipe data Enum harus dibuat terlebih dahulu, dan ditentukan Value yang diperbolehkan

### Membuat Tipe Data Enum

```sql
CREATE TYPE NAMA_ENUM AS ENUM ('VALUE1, ‘VALUE2’, 'VALUE3');
```

# **12. Tipe Data Lainnya**

Sebenarnya masih banyak jenis tipe data yang lain yang didukung oleh PostgreSQL, namun itu bisa kita pelajari jika memang ada kebutuhan spesifik

Seperti misal tipe data binary, json, xml dan lain-lain

https://www.postgresql.org/docs/current/datatype.html

# **13. Table**

Data biasanya disimpan di dalam tabel di PostgreSQL

Tiap tabel biasanya menyimpan satu jenis data, misal ketika kita membuat aplikasi toko online, kita akan membuat tabel barang, tabel pelanggan, tabel penjual, dan lain-lain

Sebelum kita bisa memasukkan data ke tabel, kita wajib terlebih dahulu membuat tabelnya terlebih dahulu

Dan tiap tabel yang kita buat, wajib ditentukan kolom-kolom nya, dan tipe data tiap kolom nya

Kita juga bisa mengubah tabel yang sudah terlanjur dibuat, seperti menambah kolom baru, mengubah kolom yang sudah ada, atau menghapus kolom

**Menggunakan Terminal :**

```sql
\dt
```

**Menggunakan Database Client**

```sql
select * from pg_tables where schemaname = ‘public’;
```

### **1. Membuat Table**

```sql

CREATE TABLE barang (
	kode INT,
  name VARCHAR(100),
  harga INT,
  jumlah INT
)
```

### 2. Melihat Struktur Table

**Menggunakan Terminal :**

```sql
\d nama_table
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/3d5cbef2-2a09-4fa2-9b83-5d90df144414/Untitled.png)

### **3. Mengubah Table**

```sql
ALTER TABLE barang 
    ADD COLUMN diskon INT;
ALTER TABLE barang 
    DROP COLUMN jumlah;
ALTER TABLE barang 
    RENAME COLUMN price TO harga;cons
```

### 4. Null Value

Null adalah nilai ketika kita tidak mengisi data ke dalam kolom

Secara default, saat kita membuat kolom, kolom tersebut bisa bernilai NULL, jika kita tidak ingin menerima nilai NULL, kita bisa menambahkan NOT NULL ketika pembuatan kolom nya.

### 5. Default Value

Saat kita menyimpan data ke dalam tabel, lalu kita hanya menyimpan beberapa kolom (tidak semuanya), kolom yang tidak kita beri nilai secara default nilainya adalah NULL

Jika kita ingin mengubah default value nya, kita bisa menambahkan perintah DEFAULT NILAI ketika pembuatan kolom nya

<aside>
💡 Khusus tipe data DATETIME atau TIMESTAMP, jika kita ingin menggunakan default value dengan nilai waktu saat ini, kita bisa gunakan kata kunci CURRENT_TIMESTAMP

</aside>

### 6. Membuat Ulang Table

```sql
TRUNCATE nama_tabel;
```

<aside>
💡 JIka di terjemahkan truncate artinya memotong. truncate itu seperti jika ada data maka di bersihkan semua, namun penggunaanya sangat jarang

</aside>

### 7. Menghapus Table

```sql
DROP TABLE barang;
```

# 14. Latihan Pertama

Buatlah table customer yang berisi nama, umur , dan alamat, yang not null semua kemudian tambahkan jenis kelamin bertipe data enum dan tambahkan status tipe data boolean default true.

lalu ganti nama umur menjadi usia dan hapus status, dan terakhir hapus table customer

# 15. Insert Data

Sebelum kita meng memasukkan data kedalam tabel, tabel harus dibuat terlebih dahulu

Kita bisa menyebutkan kolom mana yang ingin kita isi, jika kita tidak menyebutkan kolom nya, artinya kolom tersebut tidak akan kita isi, dan secara otomatis kolom yang tidak kita isi, nilainya akan NULL, kecuali memiliki DEFAULT VALUE

<aside>
💡 Untuk memasukkan data kedalam tabel, kita bisa menggunakan perintah SQL yang bernama INSERT.

</aside>

### 1. Create Table Products

```sql
CREATE TABLE products (
	kode VARCHAR(10) NOT NULL, 
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  quantity INT NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
```

### 2. Memasukan Data

**Memasukan Data Satu Satu :**

```sql
INSERT INTO products(kode, name, price, quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 100);
```

**Memasukan Data Sekaligus :**

```sql
INSERT INTO products(kode, name, price, quantity)
VALUES 
			('P0002', 'Mie Ayam Bakso', 20000, 100),
			('P0003', 'Mie Ayam Yamin', 18000, 100),
			('P0004', 'Mie Ayam Ceker', 25000, 100),
			('P0005', 'Mie Ayam Spesial', 30000, 100)
```

# **16. Select Data**

Untuk mengambil data di tabel, kita bisa menggunakan SQL dengan **kata kunci SELECT**

SELECT bisa digunakan untuk mengambil semua kolom yang ada di tabel, atau sebagian kolom saja

Jika kita hanya ingin mengambil beberapa kolom saja, kita bisa sebutkan nama-nama kolom yang ingin kita ambil datanya

<aside>
💡 Jika kita ingin mengambil semua kolom, kita bisa gunakan karakter * (bintang)

</aside>

### Mengambil Data Product

```sql
SELECT kode, name, price, quantity FROM products;
```

# **17. Primary Key**

Saat kita membuat tabel, idealnya tiap tabel memiliki Primary Key

Primary key adalah sebuah kolom yang kita tunjuk sebagai id dari tabel tersebut

Primary key adalah identitas untuk tiap baris data di dalam tabel

Primary key harus unik, tidak boleh ada data dengan primary key yang sama

Kita bisa menunjuk kolom yang akan kita jadikan primary key

### Primary Key Di Multipel Column

Kita bisa membuat primary key dengan kombinasi beberapa kolom

Namun disarankan untuk tetap menggunakan satu kolom ketika membuat primary key

Kecuali ada kasus khusus, seperti membuat tabel yang berelasi MANY TO MANY (yang nanti akan kita bahas)

### **Membuat Primary Key Ketika Tabel Di Buat**

```sql
CREATE TABLE products (
	kode VARCHAR(10) NOT NULL, 
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  quantity INT NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (kode)
)
```

**Atau Jika Sudah Terlanjur Dibuat Tablenya :**

```sql
ALTER TABLE products 
		ADD PRIMARY KEY(id)
```

# **18. Where Clause**

Saat mengambil data menggunakan perintah SQL SELECT, kadang kita ingin melakukan pencarian data

Misal, kita ingin mengambil data barang yang harganya 1jt, atau mengambil data barang yang quantity nya 0 (stok nya kosong)

Hal ini bisa kita lakukan dengan WHERE clause setelah perintah SELECT

```sql
SELECT kode, name,price FROM products WHERE price >= 18000;
```

# **19. Update Data**

Untuk mengubah data di tabel, kita bisa menggunakan perintah SQL UPDATE

Saat menggunakan SQL UPDATE, kita harus memberi tahu data mana yang akan di update dengan WHERE clause

Hati-hati ketika meng-update data di table, **jika sampai WHERE clause nya salah, bisa-bisa kita malah meng-update seluruh data di tabel**

Untuk update, kita harus beritahu, kolom mana yang akan di update

**Mengupdate Data Product**

```sql
UPDATE products 
SET price = 25000
WHERE kode = 'P0001'
```

**Mengubah Beberapa Kolom**

```sql
UPDATE products
SET name = 'Mie Ayam Bakso Tahu',
		description = 'Saya Adalah Makanan Enak'
WHERE kode = 'P0002'
```

**Mengubah Dengan Value Kolom**

```sql
UPDATE products 
SET price = price - 5000
WHERE kode = 'P0001'
```

# 20. Delete Data

Setelah kita tahu cara menambah, mengubah dan mengambil data di tabel, terakhir yang perlu kita ketahui adalah menghapus data di table

Untuk menghapus data di table, kita bisa menggunakan perintah SQL DELETE

Perintah SQL DELETE sama seperti UPDATE, kita perlu memberi tahu data mana yang akan di hapus dengan WHERE clause

**Dan hati-hati, jangan sampai salah menentukan WHERE clause,** karena jika salah, bisa-bisa kita akan menghapus seluruh data di table.

```sql
DELETE FROM products WHERE kode = 'P0005';
```

# **21. Alias**

PostgreSQL memiliki fitur untuk melakukan alias untuk kolom dan tabel

Alias berguna jika kita ingin mengubah nama kolom atau nama tabel ketika melakukan SELECT data

Mungkin saat ini alias untuk tabel tidak terlalu terlihat gunanya, tapi nanti ketika kita telah mempelajari tentang JOIN, maka fitur alias untuk tabel sangat berguna sekali

**Membuat Alias**

```sql
SELECT kode as Kode,
			 price as Harga,
       description as Deskripsi
FROM products
```

**Alias Untuk Tabel**

```sql

SELECT kode as Kode,
			 price as Harga,
       description as Deskripsi
FROM products as p
```

# **22. Where Operator**

Sebelumnya di materi where clause kita sudah menggunakan operator = (sama dengan)

Sebenarnya sangat banyak sekali operator yang bisa kita gunakan ketika menggunakan where clause

| **Operator** | **Keterangan** |
| --- | --- |
| = | Sama dengan |
| <> atau != | Tidak sama dengan |
| < | Kurang dari |
| <= | Kurang dari atau sama dengan |
| > | Lebih dari |
| >= | Lebih dari atau sama dengan |

**Mencari Data Lebih Dari Harga Yang di Tentukan**

```sql
SELECT kode, name, price FROM products WHERE price >= 20000
```

### AND & OR

Kadang kita ingin mencari data dengan beberapa gabungan kondisi, kita bisa menggunakan operator AND dan OR

**AND dan OR digunakan untuk menggabungkan beberapa dua operator**

**Table Operator AND :**

| **Hasil Operator 1** | **Operator** | **Hasil Operator 2** | **Hasil Akhir** |
| --- | --- | --- | --- |
| Benar | AND | Benar | Benar |
| Salah | AND | Benar | Salah |
| Benar | AND | Salah | Salah |
| Salah | AND | Salah | Salah |

**Kode Menggunakan And Operator**

```sql
SELECT kode, name, price FROM products WHERE price >= 20000 AND quantity = 100
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/9873eb3b-4dd2-42ba-b4c7-91887e3ba525/Untitled.png)

**Table Operator OR :** 

| **Hasil Operator 1** | **Operator** | **Hasil Operator 2** | **Hasil Akhir** |
| --- | --- | --- | --- |
| Benar | OR | Benar | Benar |
| Salah | OR | Benar | Benar |
| Benar | OR | Salah | Benar |
| Salah | OR | Salah | Salah |

**Kode Menggunakan Operator OR**

```sql
SELECT kode, name, price FROM products WHERE price >= 20000 OR quantity = 100
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/555ee75f-a298-4419-968c-e164d6bb1ba2/Untitled.png)

**Prioritas Dengan Kurung**

```sql
SELECT kode, name, price FROM products WHERE (price >= 20000) AND quantity = 100
```

# 23. Like Operator

LIKE operator adalah operator yang bisa kita gunakan untuk mencari sebagian data dalam String

Ini cocok sekali ketika kita hanya ingin mencari sebagian kata dalam String

Namun perlu diingat, operasi LIKE itu sangat lambat, oleh karena itu, tidak disarankan jika datanya sudah terlalu besar di tabel

Operasi LIKE case sensitive, jadi huruf besar dan kecil juga berpengaruh, jika kita ingin tidak case sensitive, bisa menggunakan ILIKE

<aside>
💡 `LIKE`: Operator yang case sensitive (peduli dengan besar huruf kecilnya huruf).                                                                           `ILIKE`: Operator yang case insensitive (tidak peduli besar kecilnya huruf)

</aside>

| **LIKE Operator** | **Hasil** |
| --- | --- |
| LIKE ‘b%’ | String dengan awalan b |
| LIKE ‘%a’ | String dengan akhiran b |
| LIKE ‘%eko%’ | String berisi eko |
| NOT LIKE | Tidak LIKE |

**Kode Penggunakan Like Operator**

```sql
SELECT kode, name, price FROM products WHERE name ILIKE '%Ceke%' OR name ILIKE '%ORI%'
```

# 24. Null Operator

Untuk mencari data yang berisi NULL, kita tidak bisa menggunakan operator perbandingan = NULL.

Ada operator khusus untuk mencari data NULL, yaitu menggunakan NULL operator

IS NULL, artinya mencari yang NULL

IS NOT NULL, artinya mencari yang tidak NULL

```sql
SELECT * FROM products WHERE description IS NULL;
```

# 25. Between Operator

Kadang kita ingin mencari data yang >= dan <= secara sekaligus

Misal kita ingin mencari products yang harganya antara 10000 sampai 20000

Untuk melakukan ini, kita bisa menggunakan WHERE price >= 10000 AND price <= 20000

Namun ada operator BETWEEN yang bisa kita gunakan agar lebih sederhana

Untuk kebalikannya, kita bisa gunakan NOT BETWEEN

**Kode Operator Beetween Yang Benar :** 

```sql
SELECT * FROM products WHERE price BETWEEN 25000 AND 30000

SELECT * FROM products WHERE price BETWEEN 18000 AND 30000
```

**Kode Operator Beetween Yang Salah :** 

```sql
SELECT * FROM products WHERE price BETWEEN 30000 AND 18000
```

# 26. IN Operator

Operator IN **adalah operator untuk melakukan pencarian sebuah kolom dengan beberapa nilai.**

Misal kita ingin mencari products dengan category Makanan atau Minuman, maka kita bisa menggunakan operator IN

Untuk kebalikannya, kita bisa menggunakan NOT IN

```sql
SELECT * FROM products WHERE price IN (18000);
```

# **27. Order By Clause**

Untuk mengurutkan data ketika kita menggunakan perintah SQL SELECT, kita bisa menambahkan ORDER BY clause

ORDER BY clause digunakan untuk mengurutkan data berdasarkan kolom yang dipilih, dan jenis urutan (ASC atau DESC)

Kita juga bisa mengurutkan tidak hanya terhadap satu kolom, tapi beberapa kolom

<aside>
💡 ASC = Dari Nilai Terendah Ke Nilai Tertinggi

</aside>

<aside>
💡 DESC = Dari Nilai Tertinggi Ke Nilai Terendah

</aside>

**Kode Descending:** 

```sql
SELECT * FROM products ORDER BY kode DESC;
```

**Kode Ascending :**

```sql
SELECT * FROM products ORDER BY price ASC;
```

# **28. Limit Clause**

Mengambil seluruh data di tabel bukanlah pilihan bijak, apalagi jika datanya sudah banyak sekali

Kita bisa membatasi jumlah data yang diambil dalam SQL SELECT dengan LIMIT clause

Selain membatasi jumlah data, kita juga bisa meng-skip sejumlah data yang tidak ingin kita lihat

LIMIT biasanya digunakan saat melakukan paging di aplikasi kita, **dengan kombinasi OFFSET**

**Membatasi Hasil Query :**

```sql
SELECT * FROM products WHERE price > 20000 ORDER BY price ASC LIMIT 2
```

**Melakukan Skip Query :** 

```sql
SELECT * FROM products WHERE price > 0 ORDER BY price ASC LIMIT 2 OFFSET 2
```

# **29. Select Distinct Data**

Saat melakukan query dengan SELECT, kadang kita mendapatkan data yang duplikat

Misal kita ingin melihat semua kategori di tabel products, maka otomatis hasil query SELECT akan duplikat, karena banyak sekali produk dengan kategori yang sama

Jika kita ingin menghilangkan data-data duplikat tersebut , kita bisa menggunakan SELECT dengan tambahan DISTINCT sebelum nama kolom nya

```sql
SELECT DISTINCT price FROM products;
```

# **30. Numeric Function**

PostgreSQL memiliki banyak sekali fitur untuk manipulasi data angka

Hal ini memudahkan kita untuk memanipulasi data angka

Secara garis besar, fitur ini dibagi menjadi dua, Arithmetic Operator dan Mathematical Function

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/2c1da74f-8786-4496-9df1-5465addd5144/Untitled.png)

**Menggunakan Arithmetic Operator**

```sql
SELECT 10 + 10 as hasil;
```

```sql
SELECT kode, price / 100 AS price_in_k FROM products
```

### **Mathematical Function**

Selain arithmetic operator, ada juga mathematical function

Ini adalah kumpulan function yang terdapat di PostgreSQL yang bisa kita gunakan sebagai fungsi-fungsi matematika

Ada banyak sekali

https://www.postgresql.org/docs/15/functions-math.html

```sql
SELECT PI();

SELECT POWER(10, 2)

SELECT COS(10), SIN(10), TAN(10)
```

# **31. Auto Increment**

Kadang kita butuh angka yang berurut untuk membuat primary key, misal 1, 2, 3, dan seterusnya.

Untuk melakukan hal ini secara manual bukanlah hal bijak, apalagi jika aplikasi yang kita buat diakses oleh banyak orang secara bersamaan

PostgreSQL memiliki tipe data Number bernama SERIAL, fitur ini bisa kita gunakan untuk membuat function yang akan otomatis mengembalikan nilai yang selalu naik ketika dipanggil

Dengan menggunakan SERIAL, kita tidak perlu lalu memasukkan data primary key secara manual, secara otomatis nilai primary key akan naik

**Membuat Tabel dengan Auto Increment :**

```sql
CREATE TABLE admin (
	id SERIAL NOT NULL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY (id)
);
```

**Memasukan Data Tanpa Id :**

```sql
INSERT INTO admin (first_name, last_name) VALUES 
('Nichola', 'Saputra'),
('Budi', 'Nugraha'),
('Joko', 'Morro');
```

<aside>
💡 Di MySQL biasanya kita menggunakan kata kuncti AUTO_INCREMENT tapi di PostgreSQL kita menggunakan kata kunci SERIAL

</aside>

# **32. Sequence**

Saat kita menggunakan tipe data SERIAL, sebenarnya dibelakangnya, PostgreSQL menggunakan Sequence

**Sequence adalah fitur dimana kita bisa membuat function auto increment**

Saat menggunakan tipe data SERIAL pada Primary Key, secara otomatis **PostgreSQL akan membuat Sequence,** dan memanggil function sequence nya sebagai default value untuk Primary Key nya

<aside>
💡 Singkatnya Sequence atau dalam **bahasa indonesia itu Urutan** di PostgreSQL adalah objek database yang menghasilkan serangkaian nilai unik yang bertambah secara otomatis dan sering digunakan untuk memberikan nilai otomatis ke kolom dalam tabel.

</aside>

```sql
-- Membuat Sequence
CREATE SEQUENCE	contoh_sequence;
  
-- Membuat Sequence Yang Otomatis Akan Auto Increment
SELECT nextval('contoh_sequence');
```

**Membuat Sequence Dari Serial :**

```sql
CREATE TABLE admin (
	id INT NOT NULL DEFAULT nextval('admin_id_seq'),
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  PRIMARY KEY (id)
);
```

**Melihat Semua Sequence :**

```sql
\dt
```

Sequence dibuat untuk beberapa alasan penting:

- Menghasilkan nilai unik secara otomatis untuk primary key tanpa perlu mengelola nilai secara manual
- Menghindari konflik data saat banyak pengguna memasukkan data secara bersamaan
- Menjamin urutan nilai yang konsisten dan berurutan untuk kolom yang membutuhkan penomoran
- Memudahkan pengelolaan dan tracking data karena setiap record memiliki identifier unik yang terurut

Sequence sangat berguna terutama dalam aplikasi yang membutuhkan penomoran otomatis seperti nomor faktur, ID pelanggan, atau nomor pesanan.

# **33. String Function**

Sama seperti number, di PostgreSQL juga banyak menyediakan function untuk tipe data String

Ada banyak sekali function-function yang bisa kita gunakan

https://www.postgresql.org/docs/15/functions-string.html

```sql
SELECT id, LOWER(first_name), UPPER(last_name) FROM admin;
```

# **34. Date and Time Functions**

PostgreSQL juga menyediakan banyak sekali function yang bisa kita gunakan untuk mengolah data tipe Date dan Time

https://www.postgresql.org/docs/15/functions-datetime.html

```sql
SELECT kode, EXTRACT(YEAR FROM created_at), EXTRACT(MONTH FROM created_at) FROM products;
```

# 35. Flow Controll Function

PostgreSQL memiliki fitur flow control function

Ini mirip IF ELSE di bahasa pemrograman

Tapi ingat, fitur ini tidak se kompleks yang dimiliki bahasa pemrograman

https://www.postgresql.org/docs/current/functions-conditional.html

**Flow Controll Di PostgreSQL**

```sql
SELECT kode,
			 price,	
       CASE
       		WHEN price <= 20000 THEN 'Murah'
          WHEN price <= 30000 THEN 'Mahal'
          ELSE 'Ga Layak Banget'
          END as murah
FROM products
```

**Flow Controll Pengechekan Null**

```sql
SELECT kode, name, 
CASE WHEN description IS NULL THEN 'KOSYONG' 
ELSE description END as description 
FROM products
```

# **36. Aggregate Function**

PostgreSQL mendukung function-function untuk melakukan aggregate

Misal, kita ingin melihat harga paling mahal di tabel product, atau harga termurah, atau rata-rata harga produk, atau total jumlah data di tabel, dan lain-lain

https://www.postgresql.org/docs/current/functions-aggregate.html

```sql
SELECT COUNT(kode) AS "Total Produk" FROM products;

SELECT AVG(price) AS "Rata-Rata Harga" FROM products;

SELECT MAX(price) AS "Harga Termahal" FROM products;

SELECT MIN(price) AS "Harga Termurah" FROM products;
```

# **37. Grouping**

Kadang saat melakukan aggregate, kita ingin datanya di grouping berdasarkan kriteria tertentu

Misal kita ingin melihat rata-rata harga product, tapi ingin per category

Atau kita ingin melihat total semua product, tapi per category

Hal ini bisa dilakukan di PostgreSQL dengan menggunakan GROUP BY clause

GROUP BY clause ini hanya bisa digunakan jika kita menggunakan aggregate function

**Membuat Table Order**

```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    customer_name VARCHAR(100),
    quantity INT
);
```

**Mengisi Data Table Order**

```sql
INSERT INTO orders (product_name, customer_name, quantity) VALUES
('Product A', 'John', 5),
('Product B', 'Alice', 3),
('Product A', 'Bob', 2),
('Product B', 'John', 4),
('Product C', 'Alice', 6);
```

**Menggunakan Group By**

```sql
SELECT product_name, SUM(quantity) AS total_sold
FROM orders
GROUP BY product_name;
```

### HAVING

Kadang kita ingin melakukan filter terhadap data yang sudah kita grouping

Misal kita ingin menampilkan data penjualan yang datanya diatas 3

Jika menggunakan WHERE di SELECT, hal ini tidak bisa dilakukan

Untuk memfilter hasil aggregate function, kita harus menggunakan HAVING clause

```sql
SELECT product_name, SUM(quantity) AS total_sold
FROM orders
GROUP BY product_name
HAVING SUM(quantity) > 3;
```

# **38. Constraint**

Constraint itu bisa di artikan sebagai aturan yang digunakan untuk menjamin data selalu kosisten

Di PostgreSQL, kita bisa menambahkan constraint untuk menjaga data di tabel tetap baik

Constraint sangat bagus ditambahkan untuk menjaga terjadi validasi yang salah di program kita, sehingga data yang masuk ke database tetap akan terjaga

Ada 5 jenis constraint :

1. NOT NULL → artinya kolom WAJIB di isi.
2. UNIQUE → artinya harus ada dan kolom boleh kosong sekali saja(berlaku pada
mysql), tetapi kalau di isi TIDAK BOLEH kembar. contoh: nik
3. PRIMARY KEY → kolom yang wajib di isi dan tidak boleh kembar. contoh: nip
4. FOREIGN KEY → value sebuah kolom harus merefer ke value sebuah kolom ditable lain. contoh: kode_divisi
5. CHECK → value sebuah kolom HARUS mematuhi aturan yang kita buat (semacam operator KONDISI, misal < , >, dll)
6. DEFAULT → value yang secara otomatis akan di entry ke sebuah kolom, jika user
tidak mensupply value. Jika user men-supply value , maka default value
tersebut akan diabaikan.

<aside>
💡 Konsistensi data dapat diraih dengan menanamkan sebuah *rule* atau aturan pada tabel tersebut. Dalam [SQL](https://revou.co/panduan-teknis/sql-adalah), **aturan tersebut dinamakan *constraint*.**

</aside>

### Unique Constraint

Unique constraint adalah constraint yang memastikan bahwa data kita tetap unique

Jika kita mencoba memasukkan data yang duplikat, maka PostgreSQL akan menolak data tersebut

**Membuat Table Dengan Constraint :**

```sql
CREATE TABLE customer 
(
	id SERIAL NOT NULL,
  email VARCHAR(100) NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR (100) NOT NULL,
  PRIMARY KEY(id), 
  CONSTRAINT unique_email UNIQUE(email)
)
```

```sql

-- Menghapus Constraint
ALTER TABLE customer
	DROP CONSTRAINT unique_email;
  
-- Menambahkan Constraint
ALTER TABLE customer 
	ADD CONSTRAINT unique_email UNIQUE(email)
```

### Check Constraint

Check constraint adalah constraint yang bisa kita tambahkan kondisi pengecekannya

Ini cocok untuk mengecek data sebelum dimasukkan ke dalam database

Misal kita ingin memastikan bahwa harga harus diatas 1000 misal

Maka kita bisa menggunakan check constraint

**Membuat Tabel Dengan Check Constraint :**

```sql
CREATE TABLE products 
(
	id VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT price_check CHECK(price >= 10000)
)
```

```sql
-- Menghapus Check Constraint
ALTER TABLE products
	DROP CONSTRAINT price_check;
  
--  Menambahkan Constraint
ALTER TABLE products 
	ADD CONSTRAINT price_check CHECK(price >= 10);
```

### Untuk Apa Kita Mendefinisikan Nama Constraintnya?

Memberikan nama pada sebuah constraint mempermudah dalam mengidentifikasi, merujuk, dan memelihara aturan keberadaan data dalam basis data.

<aside>
💡 contoh kasusnya seperti saat kita sudah mendefinisikan constraint pada sebuah kolom, kita tidak perlu repot repot menghapus tabelnya, cukup menghapus constrainya saja

</aside>

### Apakah Semua Constraint Mendifinisikan Nama Constrainya?

Jawabanya adalah tidak, ada beberapa constraint yang di definisikan nama nya, contohnya sebagai berikut :

1. Foreign Key Constraint
2. Unique Constraint
3. Check Constraint

# 39. Index

Secara default, PostgreSQL akan menyimpan data di dalam disk seperti tabel biasanya

Hal ini menyebabkan, ketika kita mencari data, maka PostgreSQL akan melakukan pencarian dari baris pertama sampai terakhir, yang artinya semakin banyak datanya, maka akan semakin lambat proses pencarian datanya

Kita bisa ubah cara PostgreSQL menyimpan data pada kolom, agar mudah dicari, yaitu menggunakan Index

Saat kita membuat index, PostgreSQL akan menyimpan data dalam struktur data B-Tree : https://en.wikipedia.org/wiki/B-tree

Tidak hanya akan mempermudah kita saat melakukan pencarian, index juga akan mempermudah kita ketika melakukan pengurutan menggunakan ORDER BY

### Cara Kerja Index

Kita bisa membuat lebih dari satu index di table, dan setiap kita membuat index, kita bisa membuat index untuk beberapa kolom sekaligus

Misal kita membuat index

(col1, col2, col3)

Artinya kita punya kemampuan untuk mencari lebih menggunakan index untuk kombinasi query di (col1), (col1, col2) dan (col1, col2, col3)

### Efek Samping Membuat Index

Index mungkin akan mempercepat untuk proses pencarian dan query data

Namun, saat kita membuat index, artinya PostgreSQL akan melakukan proses update data di index tiap kali kita menambah, mengubah atau menghapus data di table

Artinya Index membuat proses pencarian dan query lebih cepat, tapi memperlambat proses manipulasi data (insert, update dan delete)

Oleh karena itu, kita harus bijak saat membuat index

<aside>
💡 Intinya membuat index mempercepat pencarian data tetapi memperlambat manipulasi data. Penting untuk mempertimbangkan kebutuhan query dan manipulasi data secara bijak.

</aside>

### Tidak Perlu Menambahkan Index

Saat kita membuat PRIMARY KEY dan UNIQUE constraint, kita tidak perlu menambahkan lagi index

Hal ini dikarenakan PostgreSQL secara otomatis akan menambahkan index pada kolom PRIMARY KEY dan UNIQUE constraint

```sql
 CREATE TABLE sellers
 (
   id SERIAL NOT NULL,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   PRIMARY KEY(id),
   CONSTRAINT email_unique UNIQUE(email)
 )
```

```sql
--  Menambahkan Index
CREATE INDEX sellers_name_index ON sellers (name)

-- Menghapus Index
DROP INDEX sellers_name_index
```

# **40. Full-Text Search**

Kadang kita ingin mencari sebuah kata dalam tabel, dan biasanya kita akan menggunakan LIKE operator

Operasi yang dilakukan LIKE operator adalah dengan cara mencari seluruh data di tabel dari baris pertama sampai terakhir, hal ini membuat operasi LIKE sangat lambat

Menambah index di tabel juga tidak akan membantu, karen LIKE operator tidak menggunakan index

PostgreSQL menyediakan fitur Full Text Search jika ada kasus kita ingin melakukan hal ini

### Insert Dummy Data Terlebih Dahulu

```sql
INSERT INTO sellers (name, email) 
VALUES 
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com'),
('Alice Johnson', 'alice@example.com'),
('Bob Brown', 'bob@example.com'),
('Emily Davis', 'emily@example.com'),
('Michael Wilson', 'michael@example.com'),
('Sarah Taylor', 'sarah@example.com'),
('David Martinez', 'david@example.com'),
('Jessica Anderson', 'jessica@example.com'),
('William Thomas', 'william@example.com');
```

### Full Text Search

Full-Text Search memungkinkan kita bisa mencari sebagian kata di kolom dengan tipe data String

Ini sangat cocok ketika pada kasus kita memang membutuhkan pencarian yang tidak hanya sekedar operasi = (equals, sama dengan)

https://www.postgresql.org/docs/current/textsearch-intro.html

Di PostgreSQL, Full-Text Search menggunakan function to_tsvector(text) dan to_tsquery(query)

Bahkan kita bisa menggunakan function tersebut tanpa membuat index, namun performanya akan sama saja dengan LIKE, lambat karena harus di cek satu-satu

**Operator Full-Text Search menggunakan @@, bukan =**

**Mencari Tanpa Index :**

```sql
SELECT * FROM products WHERE to_tsvector(name) @@ to_tsquery('John')
```

### **Full-Text Search Index**

Untuk membuat index Full-Text Search kita bisa menggunakan perintah yang sama dengan index biasa, tapi harus disebutkan detail dari jenis index Full-Text Search nya

**Membuat Index Full-Text Search :**

```sql
-- Melihat Semua Bahasa Yang Tersedia
SELECT cfgname FROM pg_ts_config;

-- Menambahkan Index Bahasa
CREATE INDEX products_name_search ON products USING GIN (to_tsvector('indonesian', name));

-- Menghapus Index
DROP INDEX products_name_search;
```

**Mencari Menggunakan Full-Text Search :**

```sql
SELECT * FROM sellers WHERE name @@ to_tsquery('John')
```

### **Mencari dengan Operator**

Saat kita menggunakan fungsi tsquery() tersebut sebenarya kita bisa menggunakan operator logika tersebut seperti AND, OR, dan NOT

```sql
SELECT * FROM sellers WHERE name @@ to_tsquery('John')

SELECT * FROM sellers WHERE name @@ to_tsquery('John | Smith')

SELECT * FROM sellers WHERE name @@ to_tsquery('John & Jane')

SELECT * FROM sellers WHERE name @@ to_tsquery('!John')
```

# **41. Table Relationship**

**Dalam Relational DBMS, salah satu fitur andalan nya adalah table relationship. Yaitu relasi antar tabel**

Kita bisa melakukan relasi dari satu tabel ke tabel lain.

Dalam kehidupan nyata pun pasti kita akan sering membuat relasi antar tabel

Misal, saat kita membuat aplikasi penjualan, di laporan penjualan pasti ada data barang. Jika di tabel artinya tabel penjualan akan berelasi dengan tabel barang

Misal dalam aplikasi kampus, tabel mahasiswa akan berelasi dengan tabel mata kuliah, dan tabel dosen

**Dan lain-lain**

### Foreign Key

**Saat membuat relasi tabel, biasanya kita akan membuat sebuah kolom sebagai referensi ke tabel lainnya**

Misal saat kita membuat tabel penjualan, di dalam tabel penjualan, kita akan menambahkan kolom id_produk sebagai referensi ke tabel produk, yang berisi primary key di tabel produk

**Kolom referensi ini di PostgreSQL dinamakan Foreign Key**

Kita bisa menambah satu satu lebih foreign key ke dalam sebuah tabel

Membuat foreign key sama seperti membuat kolom biasanya, hanya saja kita **perlu memberi tahu** PostgreSQL bahwa itu adalah foreign key ke tabel lain.

**Membuat Table Yang Wishlist Yang Berelasi Ke Product :**

```sql
CREATE TABLE wishlist 
(
	id SERIAL NOT NULL,
  id_product VARCHAR(10),
  decription TEXT,
  PRIMARY KEY(id),
  CONSTRAINT fk_wishlist_product FOREIGN KEY (id_product) REFERENCES products(id)
)
```

### Menambah Dan Menghapus Foreign Key

```sql
-- Menghapus Atribut Foreign Key
ALTER TABLE wishlist
		DROP CONSTRAINT fk_wishlist_product
    
-- Menambah Atribut Foreign Key
ALTER TABLE wishlist
		ADD CONSTRAINT fk_wishlist_product FOREIGN KEY(id_product) REFERENCES products (id)
```

### Keuntungan Menggunakan Foreign Key

Foreign key memastikan bahwa data yang kita masukkan ke kolom tersebut harus tersedia di tabel reference nya

Selain itu saat kita menghapus data di tabel reference, PostgreSQL akan mengecek apakah id nya digunakan di foreign key di tabel lain, jika digunakan, maka secara otomatis PostgreSQL akan menolak proses delete data di tabel reference tersebut.

### Menghapus Data Yang Berelasi

ketika kita menghapus data yang berelasi, maka secara otomatis PostgreSQL akan menolak operasi delete tersebut

Kita bisa mengubah fitur ini jika kita mau, **ada banyak hal yang bisa dilakukan** ketika data berelasi dihapus, **defaultnya memang akan ditolak (RESTRICT).**

### Perilaku Foreign Key

| **Perilaku** | **ON DELETE** | **ON UPDATE** |
| --- | --- | --- |
| RESTRICT | Ditolak | Ditolak |
| CASCADE | Data akan dihapus | Data akan ikut diubah |
| NO ACTION | Data dibiarkan | Data dibiarkan |
| SET NULL | Diubah jadi NULL | Diubah jadi NULL |
| SET DEFAULT | Diubah jadi Default Value | Diubah jadi Default Value |

### **Mengubah Perilaku Menghapus Dan Mengupdate Relasi**

```sql
-- Mengubah Behavior Menghapus Dan Update Data Yang Berelasi
ALTER TABLE wishlist
	ADD CONSTRAINT fk_wishlist_product FOREIGN KEY (id_product) REFERENCES products (id)
  	ON DELETE CASCADE ON UPDATE CASCADE;
```

# **42. Join**

PostgreSQL mendukung query SELECT langsung ke beberapa tabel secara sekaligus

Namun untuk melakukan itu, kita perlu melakukan JOIN di SQL SELECT yang kita buat

Untuk melakukan JOIN, kita perlu menentukan tabel mana yang merupakan referensi ke tabel lain

Join cocok sekali dengan foreign key, walaupun di PostgreSQL tidak ada aturan kalau JOIN harus ada foreign key

**Join di PostgreSQL bisa dilakukan untuk lebih dari beberapa tabel**

Tapi ingat, semakin banyak JOIN, maka proses query akan semakin berat dan lambat, jadi harap bijak ketika melakukan JOIN

<aside>
💡 Idealnya kita melakukan JOIN jangan lebih dari 5 tabel, karena itu bisa berdampak ke performa query yang lambat

</aside>

### **Melakukan Join Table**

```sql
SELECT * FROM wishlist JOIN products ON wishlist.id_product = products.id
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/e8887cbf-78bb-4a9b-bc91-ca13f43f6d6f/Untitled.png)

<aside>
💡 Kita sebenarnya bisa tentukan kolom mana yang mau kita ambil

</aside>

### **Melakukan Join Table Dengan Hanya Beberapa Kolom Saja**

```sql
SELECT p.id, p.name, w.description FROM wishlist as w JOIN products as p ON w.id_product = p.id
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/0b4f8209-c33d-4fdd-b90e-5aaa4073bcfd/Untitled.png)

### Join Ke Lebih Dari 1 Tabel

**Menambah Data Di Table Customer**

```sql
INSERT INTO Customer (email, first_name, last_name) VALUES
('john.doe@example.com', 'John', 'Doe'),
('jane.smith@example.com', 'Jane', 'Smith'),
('mike.johnson@example.com', 'Mike', 'Johnson'),
('emily.wilson@example.com', 'Emily', 'Wilson'),
('david.brown@example.com', 'David', 'Brown'),
('sarah.jackson@example.com', 'Sarah', 'Jackson'),
('chris.miller@example.com', 'Chris', 'Miller'),
('laura.williams@example.com', 'Laura', 'Williams'),
('mark.taylor@example.com', 'Mark', 'Taylor'),
('jessica.anderson@example.com', 'Jessica', 'Anderson');
```

**Update Data Wishlist Untuk Memasukan ID Customer**

```sql
  UPDATE wishlist
  SET id_customer = 2
  WHERE id in (3,4);
```

**Membuat Relasi Lebih Ke Customer :**

```sql
-- Membuat Table Id Customer
ALTER TABLE wishlist
	ADD COLUMN id_customer int
  
-- Menambahkan Foreign Key
ALTER TABLE wishlist 
	ADD CONSTRAINT fk_wishlist_customer FOREIGN KEY (id_customer) REFERENCES customer (id)
```

**Melakukan Join Ke Lebih Dari 1 Table**

```sql
SELECT customer.email, products.id, products.name, wishlist.description FROM wishlist 
	JOIN products ON wishlist.id_product = products.id
  JOIN customer ON wishlist.id_customer = customer.id
```

**Hasil :** 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/f456e803-8d71-4376-b53f-45eacf890e71/Untitled.png)

# **43. One-to-One Relationship**

One to One relationship adalah relasi antar tabel yang paling sederhana

**Artinya tiap data di sebuah tabel hanya boleh berelasi ke maksimal 1 data di tabel lainnya**

Tidak boleh ada relasi lebih dari 1 data

Contoh misal, kita membuat aplikasi toko online yang terdapat fitur wallet, dan 1 customer, cuma boleh punya 1 wallet

<aside>
💡 Dalam one-to-one relationship itu disarankan id nya tidak auto increment ya

</aside>

```sql
CREATE TABLE wallet 
  (
  	id SERIAL NOT NULL,
    id_customer INT NOT NULL,
    balance INT NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_wallet_customer FOREIGN KEY (id_customer) REFERENCES customer (id)
  )
```

### Diagram One To One Relationship

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/74320121-4eb2-4c7c-81fc-1eacbcb907e7/Untitled.png)

### Membuat Relasi One To One

Cara membuat One to One relationship cukup mudah

Kita bisa membuat kolom foreign key, lalu set kolom tersebut menggunakan UNIQUE KEY, **hal ini dapat mencegah terjadi data di kolom tersebut agar tidak duplikat**

Atau cara lainnya, **kita bisa membuat tabel dengan primary key yang sama, sehingga tidak butuh lagi kolom untuk FOREIGN KEY**

**Membuat Tabel Wallet :**

```sql
CREATE TABLE wallet 
  (
  	id SERIAL NOT NULL,
    id_customer INT NOT NULL,
    balance INT NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT wallet_customer_unique UNIQUE(id_customer),
    CONSTRAINT fk_wallet_customer FOREIGN KEY (id_customer) REFERENCES customer (id)
  );
```

**Insert Data Ke Tabel Wallet :**

```sql
INSERT INTO wallet(id_customer, balance) 
VALUES 
(1,1000000),
(4,2000000),
(5,3000000);
```

**Melakukan Join :**

```sql
SELECT * FROM customer JOIN wallet ON wallet.id_customer = customer.id
```

# **44. One-to-Many Relationship**

One to many relationship adalah relasi antar tabel dimana satu data bisa digunakan lebih dari satu kali di tabel relasinya

Berbeda dengan one to one yang cuma bisa digunakan maksimal 1 kali di tabel relasinya, one to many tidak ada batasan berapa banyak data digunakan

Contoh relasi antar tabel categories dan products, dimana satu category bisa digunakan oleh lebih dari satu product, yang artinya relasinya nya one category to many products

**Pembuatan relasi one to many sebenarnya sama dengan one to one, yang membedakan adalah, kita tidak perlu menggunakan UNIQUE KEY**, karena datanya memang bisa berkali-kali ditambahkan di tabel relasi nya

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/32d6e0e1-0f9d-4e5b-b94d-384386fb528d/Untitled.png)

**Membuat Table Category Terlebih Dahulu :**

```sql
CREATE TABLE category
(
	id VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
)
```

**Menambahkan Kolom Id_category di Table Product :**

```sql
ALTER TABLE products
	ADD COLUMN id_category VARCHAR(10)
```

**Menambahkan Foreign Key Di Product :**

```sql
ALTER TABLE products 
  	ADD CONSTRAINT fk_product_category FOREIGN KEY (id_category) REFERENCES categories (id)
```

**Menambahkan Data Category :**

```sql
INSERT INTO categories (id, name) 
    VALUES ('C0001', 'Makanan'),
    				('C0002', 'Minuman')
```

**Menambahkan Data Di Product :**

```sql
-- Makanan
INSERT INTO products (id, name, price, quantity, id_category)
VALUES ('P001', 'Nasi Goreng', 15000, 100, 'C0001'),
       ('P002', 'Ayam Goreng', 20000, 80, 'C0001'),
       ('P003', 'Soto Ayam', 18000, 60, 'C0001');

-- Minuman
INSERT INTO products (id, name, price, quantity, id_category)
VALUES ('P004', 'Es Teh', 5000, 120, 'C0002'),
       ('P005', 'Es Jeruk', 6000, 100, 'C0002'),
       ('P006', 'Jus Alpukat', 10000, 80, 'C0002');
```

**Melakukan Join (Implementasi One-To-Many):**

```sql
SELECT * FROM products JOIN categories ON products.id_category = categories.id
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/1d05c0d3-5bb3-481a-a4d2-cc9f1704d8f2/Untitled.png)

# 45. Many-To-Many Relationship

**Many to Many adalah table relationship yang paling kompleks, dan kadang membingungkan untuk pemula**

Many to Many adalah relasi dimana ada relasi antara 2 tabel dimana table pertama bisa punya banyak relasi di table kedua, dan table kedua pun punya banyak relasi di table pertama

Ini memang sedikit membingungkan, bagaimana caranya bisa relasi kebanyakan secara bolak balik, sedangkan di table kita cuma punya 1 kolom?

<aside>
💡 Contoh relasi many to many adalah relasi antara produk dan penjualan, dimana setiap produk bisa dijual berkali kali, dan setiap penjualan bisa untuk lebih dari satu produk

</aside>

### Diagram Many-To-Many

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/bcf397f0-fc7a-4cac-9c3d-16f6d6cfe178/Untitled.png)

### Bagaimana Implementasi Many To Many?

Sekarang pertanyaannya, bagaimana implementasi many to many?

Apakah kita harus menambahkan id_order di table products? atau id_product di table orders?

### Case 1 : Id Product Di Table Order

Jika kita menambahkan id_product di table orders, artinya sekarang sudah benar, bahwa 1 product bisa dijual berkali-kali

Namun masalahnya adalah, berarti 1 order hanya bisa membeli 1 product, karena cuma ada 1 kolom untuk id_product

Oke kalo gitu kita tambahkan id_product1, id_product2, dan seterusnya. Solusi ini bisa dilakukan, tapi tidak baik, artinya akan selalu ada maksimal barang yang bisa kita beli dalam satu order

### **Case 2 : Id Order di Table Product**

Jika kita tambahkan id_order di table products, artinya sekarang 1 order bisa membeli lebih dari 1 product, oke sudah benar

Tapi sayangnya masalahnya terbalik sekarang, 1 product cuma bisa dijual satu kali, tidak bisa dijual berkali-kali, karena kolom id_order nya cuma 1

Kalupun kita tambah id_order1, id_order2 dan seterusnya di table product, tetap ada batasan maksimal nya

Lantai bagaimana solusinya untuk relasi many to many?

### Solusi : Membuat Table Jembatan

Solusi yang biasa dilakukan jika terjadi relasi many to many adalah, biasanya kita akan menambah 1 tabel ditengahnya

Tabel ini bertugas sebagai jembatan untuk menggabungkan relasi many to many

Isi table ini akan ada id dari table pertama dan table kedua, dalam kasus ini adalah id_product dan id_order

Dengan demikian, kita bisa menambahkan beberapa data ke dalam tabel relasi ini, sehingga berarti satu product bisa dijual beberapa kali di dalam table order, dan satu order bisa membeli lebih dari satu product

### Diagram Many To Many Relationship

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/f453f8ad-7f76-42f4-8c7e-5fc79a69b1dc/Untitled.png)

### **Membuat Tabel Order**

```sql
CREATE TABLE orders 
(
	id SERIAL NOT NULL,
  total INT NOT NULL,
  order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)
```

### **Membuat Tabel Order Details**

```sql
CREATE TABLE orders_detail
(
	id_product VARCHAR(10) NOT NULL,
  id_order INT NOT NULL,
  price INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY(id_product,id_order)
)
```

### Membuat Foreign Key

```sql
ALTER TABLE orders_detail 
	ADD CONSTRAINT fk_orders_detail_product FOREIGN KEY (id_product) REFERENCES products (id);
  
ALTER TABLE orders_detail 
	ADD CONSTRAINT fk_orders_detail_order FOREIGN KEY (id_order) REFERENCES orders (id);
```

### Melakukan Insert Data

```sql
INSERT INTO orders_detail (id_product, id_order, price, quantity) 
VALUES 
('P002', 1, 10000, 20),
('P003', 1, 10000, 20)

INSERT INTO orders_detail (id_product, id_order, price, quantity) 
VALUES 
('P002', 2, 10000, 20),
('P003', 2, 10000, 20)

INSERT INTO orders_detail (id_product, id_order, price, quantity) 
VALUES 
('P004', 3, 10000, 20),
('P006', 3, 10000, 20)
```

### Melihat Data Order, Detail Dan Product-nya

```sql
SELECT * FROM orders 
				 JOIN orders_detail ON orders_detail.id_order = orders.id
         JOIN products on orders_detail.id_product = products.id 
         
-- Melihat Berdasarkan IDnya
SELECT * FROM orders 
				 JOIN orders_detail ON orders_detail.id_order = orders.id
         JOIN products on orders_detail.id_product = products.id WHERE orders.id = 1
```

# **46. Jenis-Jenis Join**

Sebelumnya kita sudah bahas tentang JOIN table, tapi sebenarnya ada banyak sekali jenis-jenis JOIN table di PostgreSQL, diantaranya :

| **Jenis JOIN** | **Penjelasan** |
| --- | --- |
| INNER JOIN | Mengembalikan baris yang cocok dari kedua tabel. |
| LEFT JOIN | Semua baris dari tabel kiri, termasuk yang cocok dari tabel kanan jika ada. |
| RIGHT JOIN | Semua baris dari tabel kanan, termasuk yang cocok dari tabel kiri jika ada. |
| FULL JOIN | Semua baris dari kedua tabel, tanpa mempedulikan kecocokan. |

<aside>
💡 Dalam SQL, urutan tabel dalam JOIN tidak menentukan posisi tabel pertama, tabel pertama adalah yang ditentukan oleh jenis JOIN yang digunakan.

</aside>

### 1. Inner Join

INNER JOIN adalah mekanisme JOIN, dimana terdapat relasi antara tabel pertama dan tabel kedua

Jika ada data di tabel pertama yang tidak memiliki relasi di table kedua ataupun sebaliknya, maka hasil INNER JOIN tidak akan ditampilkan

Jika kita menggunakan JOIN seperti yang sudah kita praktekan sebelumnya, sebenarnya itu akan melakukan INNER JOIN

<aside>
💡 Ini adalah default JOIN di PostgreSQL

</aside>

### Diagram Inner Join

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/4a88f12d-bf39-411c-b17d-75497e363c89/Untitled.png)

### Penerapan Inner Join

```sql
SELECT * FROM categories 
				 INNER JOIN products ON products.id_category = categories.id
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/6a303d8a-28e9-443b-a36a-84790998dc86/Untitled.png)

### 2. Left Join

LEFT JOIN adalah mekanisme JOIN seperti INNER JOIN, **namun semua data di table pertama akan diambil juga**

**Jika ada yang tidak memiliki relasi di table kedua, maka hasilnya akan NULL**

### Diagram Left Join

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/a3314c3b-5fa0-41c8-a58a-b87b79313b0b/Untitled.png)

### **Penerapan Left Join**

```sql
SELECT * FROM categories LEFT JOIN products ON products.id_category = categories.id
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/a8fefcdf-c89d-40d4-a104-effd41d93796/Untitled.png)

### 3. Right Join

RIGHT JOIN adalah mekanisme JOIN seperti INNER JOIN, namun semua data di table kedua akan diambil juga

Jika ada yang tidak memiliki relasi di table pertama, maka hasilnya akan NULL

### Diagram Right Join

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/211e00f0-55b7-46e5-a56e-6b5e7344fb3d/Untitled.png)

### Penerapan Right Join

```sql
SELECT * FROM categories RIGHT JOIN products ON products.id_category = categories.id
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/ef91215d-83ef-4f75-a76b-8362eee28228/Untitled.png)

### 4. Full Join

Full Join adalah join dimana semua data di tabel pertama dan kedua akan ditampilkan

Jika tidak ada data join, maka hasilnya akan berisi data Null

### Diagram Full Join

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/72aa019e-4416-41b8-b718-c0f9e802ed20/Untitled.png)

### Penerapan Full Join

```sql
SELECT * FROM categories FULL JOIN products ON products.id_category = categories.id
```

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/b47cbc87-d83d-4934-b86d-84c271ba1981/Untitled.png)

# 47. Database Transaction

Saat membuat aplikasi berbasis database, jarang sekali kita akan melakukan satu jenis perintah SQL per aksi yang dibuat aplikasi

Contoh, ketika membuat toko online, ketika customer menekan tombol Pesan, banyak yang harus kita lakukan, misal

- Membuat data pesanan di tabel order
- Membuat data detail pesanan di tabel order detail
- Menurunkan quantity di tabel produk
- Dan yang lainnya

Artinya, bisa saja dalam satu aksi, kita akan melakukan beberapa perintah sekaligus

Jika terjadi kesalahan di salah satu perintah, harapannya adalah perintah-perintah sebelumnya dibatalkan, agar data tetap konsisten

### Database Transaction

Database transaction adalah fitur di DBMS dimana kita bisa memungkinan beberapa perintah dianggap menjadi sebuah kesatuan perintah yang kita sebut transaction

Jika terdapat satu saja proses gagal di transaction, maka secara otomatis perintah-perintah sebelumnya akan dibatalkan

Jika sebuah transaction sukses, maka semua perintah akan dipastikan sukses

### Membuat Transaction

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/eb82032a-cddd-4bef-9425-6f4bfbbed91f/Untitled.png)

### Membatalkan Transaction

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/7c5cfd46-cf76-42c3-871c-febaae93b6fd/Untitled.png)

### Transaction Di PostgreSQL

| **Perintah** | **Keterangan** |
| --- | --- |
| START TRANSACTION | Memulai proses transaksi, proses selanjutnya akan dianggap transaksi sampai perintah COMMIT atau ROLLBACK |
| COMMIT | Menyimpan secara permanen seluruh proses transaksi |
| ROLLBACK | Membatalkan secara permanen seluruh proses transaksi |

### Yang Tidak  Bisa Menggunakan Transaction

Perintah DDL (Data Definition Language) tidak bisa menggunakan fitur transaction

DDL adalah perintah-perintah yang digunakan untuk merubah struktur, seperti membuat tabel, menambah kolom, menghapus tabel, menghapus database, dan sejenisnya

**Transaction hanya bisa dilakukan pada perintah DML (Data Manipulation Language), seperti operasi INSERT, UPDATE dan DELETE**

# 48. Locking

Locking adalah proses mengunci data di DBMS

Proses mengunci data sangat penting dilakukan, salah satunya agar data benar-benar terjamin konsistensinya

Karena pada kenyataannya, aplikasi yang akan kita buat pasti digunakan oleh banyak pengguna, dan banyak pengguna tersebut bisa saja akan mengakses data yang sama, jika tidak ada proses locking, bisa dipastikan akan terjadi RACE CONDITION, yaitu proses balapan ketika mengubah data yang sama

Contoh saja, ketika kita belanja di toko online, kita akan balapan membeli barang yang sama, jika data tidak terjaga, bisa jadi kita salah mengupdate stock karena pada saat yang bersamaan banyak yang melakukan perubahan stock barang

### Locking Record

Saat kita melakukan proses TRANSACTION, lalu kita melakukan prose perubahan data, data yang kita ubah tersebut akan secara otomatis di LOCK

Hal ini membuat proses TRANSACTION sangat aman

Oleh karena itu, sangat disarankan untuk selalu menggunakan fitur TRANSACTION ketika memanipulasi data di database, terutama ketika perintah manipulasinya lebih dari satu kali

Locking ini akan membuat sebuah proses perubahan yang dilakukan oleh pihak lain akan diminta untuk menunggu

Data akan di lock sampai kita melakukan COMMIT atau ROLLBACK transaksi tersebut

### Locking Record Manual

Selain secara otomatis, kadang saat kita membuat aplikasi, kita juga sering melakukan SELECT query terlebih dahulu sebelum melakukan proses UPDATE misalnya.

Jika kita ingin melakukan locking sebuah data secara manual, kita bisa tambahkan perintah FOR UPDATE di belakang query SELECT

Saat kita lock record yang kita select, maka jika ada proses lain akan melakukan UPDATE, DELETE atau SELECT FOR UPDATE lagi, maka proses lain diminta menunggu sampai kita selesai melakukan COMMIT atau ROLLBACK transaction

### DeadLock

Saat kita terlalu banyak melakukan proses Locking, hati-hati akan masalah yang bisa terjadi, yaitu DEADLOCK

Deadlock adalah situasi ada 2 proses yang saling menunggu satu sama lain, namun data yang ditunggu dua-duanya di lock oleh proses lainnya, sehingga proses menunggunya ini tidak akan pernah selesai.

### Contoh Proses DeadLock

1. Proses 1 melakukan SELECT FOR UPDATE untuk data 001
2. Proses 2 melakukan SELECT FOR UPDATE untuk data 002
3. Proses 1 melakukan SELECT FOR UPDATE untuk data 002, diminta menunggu karena di lock oleh Proses 2
4. Proses 2 melakukan SELECT FOR UPDATE untuk data 001, diminta menunggu karena di lock oleh Proses 1
5. Akhirnya Proses 1 dan Proses 2 saling menunggu
6. **Deadlock terjadi**

# 48. Schema

Diawal, kita mengibaratkan bahwa database adalah sebuah folder, dan table adalah file-file nya

Di PostgreSQL, terdapat fitur bernama Schema, anggap saja ini adalah folder didalam database

Saat kita membuat database, secara tidak sadar sebenarnya kita menyimpan semua table kita di schema public

Kita bisa membuat schema lain, dan pada schema yang berbeda, kita bisa membuat table dengan nama yang sama

### Diagram Schema

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/c7da9145-64c2-4a07-b2bf-97f8e03c8b5b/Untitled.png)

### Public Schema

Saat kita membuat database di PostgreSQL, secara otomatis terdapat schema bernama public

Dan saat kita membuat table, secara otomatis kita akan membuat table tersebut di schema public

**Melihat Schema Saat Ini :**

```sql
select CURRENT_SCHEMA();
```

**Membuat Schema :**

```sql
CREATE SCHEMA ini_schemabaru;
```

**Berpindah Schema :**

```sql
SET search_path TO ini_schemabaru;

SHOW search_path

select CURRENT_SCHEMA();
```

**Menghapus Schema :**

```sql
DROP SCHEMA ini_schemabaru;
```

### Membuat Table Di Schema Baru

Saat kita membuat table, secara otomatis PostgreSQL akan membuatkan table di schema yang sedang kita pilih

Jika kita ingin menentukan schema secara manual tanpa menggunakan schema yang sedang dipilih, kita bisa menambahkan prefix nama schema di awal nama table nya, Misal

```sql
namaschema.namatable
```

Termasuk jika ingin melakukan operasi DML ke table, bisa menggunakan prefix namaschema

**Membuat Table Baru :**

```sql
CREATE TABLE contoh.product
(
	id SERIAL NOT NULL,
  name VARCHAR(100) NOT NULL
)
```

**Insert Data :**

```sql
INSERT INTO contoh.product(name) VALUES ('Iphone 11'), ('Ikan Tongkol')
```

**Select Data**

```sql
SELECT * FROM contoh.product
```

# 49. Normalisasi Database

Normalisasi database adalah proses pengelompokan atribut data yang membentuk entitas sederhana, *nonredundant*, fleksibel, dan mudah beradaptasi. Sehingga dapat dipastikan bahwa database yang dibuat berkualitas baik.

### Bentuk Normal Basis Data

Pencetus relational model, Edgar Codd mengajukan teori normalisasi data dengan mengenalkan praktek bentuk normal ke-1, lalu dilanjut dengan ke-2 dan bentuk normal ke-3

https://en.wikipedia.org/wiki/Edgar_F._Codd

Sampai saat ini, bentuk normal basis data bisa sampai bentuk normal ke 6, namun kebanyakan pada prakteknya, bentuk normal basis data hanya sampai bentuk normal ke 3

### Tujuan Normalisasi Database

Tujuan utama dari normalisasi database adalah:

1. **Menghilangkan dan mengurangi redudansi data.**
2. Memastikan dependensi data (data berada pada tabel yang tepat).

Jika sebuah database belum dinormalisasi, kemungkinan terburuk yang akan merugikan sistem adalah:

1. *INSERT* AnomaliSituasi dimana tidak memungkinkan untuk memasukkan beberapa jenis data secara langsung di database.
2. *UPDATE* AnomaliSituasi dimana nilai yang diubah mengakibatkan ketidakkonsistenan database,
artinya data yang diubah tidak sesuai dengan yang diinginkan.
3. *DELETE* AnomaliPenghapusan data tidak sesuai yang diharapkan, artinya data yang seharusnya tidak terhapus malah terhapus.

# 50. Jenis Atribute

Sebelum kita mulai bahas tentang normalisasi data, ada yang perlu diketahui tentang jenis attribute, seperti :

| **Jenis Atribut** | **Penjelasan** |
| --- | --- |
| Attribute Key | Atribut yang digunakan untuk mengidentifikasi suatu entitas secara unik dalam sebuah relasi atau tabel. |
| Simple Attribute | Atribut yang tidak dapat dibagi-bagi lagi menjadi bagian yang lebih kecil. Misalnya: Nama, Usia, Alamat. |
| Composite Attribute | Atribut yang dapat dibagi menjadi beberapa atribut yang lebih sederhana. Misalnya: Alamat dapat dibagi menjadi Jalan, Kota, dan Kode Pos. |
| Single-Value Attribute | Atribut yang hanya memiliki satu nilai untuk setiap entitas. Misalnya: Tanggal Lahir. |
| Multi-Value Attribute | Atribut yang dapat memiliki beberapa nilai untuk setiap entitas. Misalnya: Nomor Telepon. |
| Mandatory Attribute | Atribut yang harus memiliki nilai untuk setiap entitas. Misalnya: Nama Pengguna harus diisi. |
| Derived Attribute | Atribut yang nilainya dihitung atau berasal dari atribut lain dalam basis data. Misalnya: Usia, yang dihitung berdasarkan Tanggal Lahir. |

# **51. Attribute Key**

Attribute Key adalah nilai yang bisa digunakan sebagai identitas baris pada tabel yang sifatnya unik

Terdapat 3 jenis attribute key, yaitu :

| **Attribute Key** | **Penjelasan** |
| --- | --- |
| Superkey | Kumpulan satu atau lebih atribut yang secara unik mengidentifikasi setiap entitas dalam relasi. |
| Candidate Key | Superkey minimal yang tidak memiliki subset yang juga merupakan superkey. |
| Primary Key | Candidate key yang dipilih untuk secara unik mengidentifikasi setiap baris dalam tabel. Biasanya digunakan sebagai kunci utama untuk pengindeksan dan referensi antar-tabel. |

### 1. Attribute Key - Super Key

Superkey merupakan satu atau atau lebih atribut yang dapat membedakan setiap baris data secara unik

Misal pada tabel produk, yang bisa menjadi superkey adalah

- (kode produk, nama produk, berat produk, harga produk, kode penjual)
- (nama produk, kode penjual) jika bisa menjamin penjual tidak menjual barang yang sama
- (kode produk, kode penjual)
- (kode produk)

### **2. Attribute Key - Candidate Key**

Candidate key merupakan kumpulan atribut **minimal** yang dapat membedakan setiap baris data dalam sebuah tabel secara unik.

Contoh candidate key pada tabel produk adalah :

- (kode produk)
- (nama produk) jika bisa dijamin nama produk tidak boleh dibuat lebih dari sekali

### 3. Attribute Key - Primary Key

Setelah menentukan candidate key, salah satu kombinasi candidate key akan ditentukan sebagai primary key, key utama sebagai representasi baris secara unik

Primary key biasanya dipilih pada candidate key yang paling cocok dan paling bisa dijamin keunikannya, contohnya pada kasus tabel produk :

- (kode produk)

# **52. Bentuk Normal Basis Data ke 1**

Suatu tabel dikatakan 1NF jika dan hanya jika setiap atribut dari data tersebut hanya memiliki nilai tunggal dalam satu baris.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/3e924e0e-bed0-46c5-877f-46486be76731/Untitled.png)

<aside>
💡 Inti dari normalisasi 1NF adalah tidak boleh ada *grouping data* ataupun duplikasi data. Sekarang lanjut pada tahap normalisasi 2NF.

</aside>

# **53. Bentuk Normal Basis Data ke 2**

Syarat 2NF adalah tidak diperkenankan adanya partial ***“functional dependency”*** kepada primary key dalam sebuah tabel.

*Functional dependency* adalah setiap atribut yang bukan kunci (non key) bergantung secara fungsional terhadap primary key.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/abb85245-4fd4-46f0-bba3-d5fb65235d49/Untitled.png)

<aside>
💡 Intinya adalah pada tahap normalisasi 2NF ini tabel tersebut harus dipecah berdasarkan primary key. Sehingga bentuk normalisasi 2NF dari tabel tersebut adalah sebagai berikut:

</aside>

# **54. Bentuk Normal Basis Data ke 3**

Sebelum kita bahas tentang bentuk normal ke 3, kita harus tahu tentang ketergantungan fungsionalitas

Dalam tabel, jika terdapat atribut B memiliki ketergantungan fungsionalitas dengan A, maka kita bisa bilang A --> B

Biasanya A adalah attribute key, dan B adalah attribute yang bukan key

Dalam bentuk normal ke 3, kita harus **teliti** tabel yang sudah dalam bentuk normal ke 2, apakah attribute-attribute yang bukan key tersebut tergantung dengan attribute key nya?

<aside>
💡 Pada 3NF tidak diperkenankan adanya partial ***“transitive dependency”*** dalam sebuah tabel.

</aside>

Intinya pada 3NF ini, jika terdapat suatu atribut yang **tidak bergantung** pada primary key tapi bergantung pada field yang lain maka atribut-atribut tersebut perlu dipisah ke tabel baru.

Contohnya ada pada atribut **qty**, kolom tersebut tidak bergantung langsung pada primary key **kode_faktur** melainkan bergantung pada kolom **kode_barang**. Jadi setelah dinormalisasi 3NF akan menghasilkan tabel berikut:

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/86cdea4d-c848-4d3c-868a-d3cff3ff6a71/c4e66432-611b-4c50-87fa-09c0cc023d74/Untitled.png)

<aside>
💡 Kalau kamu memperhatikan dengan seksama kolom **harga** pada **tabel detail barang** digunakan untuk menyimpan harga barang pada saat proses transaksi. Jadi, meskipun kolom **harga** pada **tabel barang** berubah (naik/turun), harga barang yang ada pada **tabel detail barang** tidak ikut berubah (fixed). Bayangkan jika kita tidak menambahkan kolom **harga** pada pada **tabel detail barang**, maka yang terjadi total invoice dari transaksi akan berubah seiring berubahnya harga barang.

</aside>

# 55. Belajar Terus…

Kamu bisa lanjut ke : https://8weeksqlchallenge.com/ untuk mengasah kemampuan kamu.