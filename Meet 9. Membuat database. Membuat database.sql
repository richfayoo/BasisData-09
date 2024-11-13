-- 1. Membuat database
CREATE DATABASE IF NOT EXISTS NIMNamsingsaming_bab5;
SHOW DATABASES;

-- 2. Mengaktifkan database
USE NIMNamsingsaming_bab5;

-- 3. Membuat tabel "buku"
CREATE TABLE buku (
    Kode_buku CHAR(4) PRIMARY KEY,
    Judul VARCHAR(55),
    Pengarang VARCHAR(50),
    Penerbit VARCHAR(35),
    Harga INT(10)
);

-- 4. Melihat struktur tabel "buku"
DESCRIBE buku;

-- 5. Mengisi data ke dalam tabel "buku"
INSERT INTO buku (Kode_buku, Judul, Pengarang, Penerbit, Harga) VALUES
('BK01', 'Rancangan ERD', 'Joko Susilo', 'Graha Pustaka', 65000),
('BK02', 'Diagram UML', 'Ahmad Santi', 'Komunikatika', 35000),
('BK03', 'Web Programming', 'Rio Budiman', 'Graha Pustaka', 55000),
('BK04', 'Dasar Pemrograman', 'Indah Murni', 'Telno Press', 35000),
('BK05', 'Testing Program', 'Ria Kusumah', 'Ilmu Pustaka', 45000);

-- 6. Menampilkan isi tabel "buku" dan mengurutkan berdasarkan harga secara descending
SELECT * FROM buku ORDER BY Harga DESC;

-- 7. Menghitung jumlah harga pada tabel "buku"
SELECT SUM(Harga) AS Total_Harga FROM buku;

-- 8. Menampilkan data buku dengan harga tertinggi
SELECT * FROM buku ORDER BY Harga DESC LIMIT 1;

-- 9. Menghitung rata-rata harga buku
SELECT AVG(Harga) AS Rata_Rata_Harga FROM buku;

-- 10. Menampilkan data dengan kolom "judul", "pengarang", dan "harga" saja
SELECT Judul, Pengarang, Harga FROM buku;

-- 11. Menghitung jumlah data di tabel "buku"
SELECT COUNT(*) AS Jumlah_Data FROM buku;

-- 12. Mengubah judul buku dari "Diagram UML" menjadi "UML Dasar"
UPDATE buku SET Judul = 'UML Dasar' WHERE Kode_buku = 'BK02';

-- 13. Menambahkan data buku baru
INSERT INTO buku (Kode_buku, Judul, Pengarang, Penerbit, Harga) VALUES
('BK06', 'Algoritma Lanjut', 'Raedan Katron', 'Graha Pustaka', 40000);

-- 14. Menghapus record dengan Kode_buku "BK05"
DELETE FROM buku WHERE Kode_buku = 'BK05';

-- Menampilkan isi tabel "buku" setelah perubahan
SELECT * FROM buku;
