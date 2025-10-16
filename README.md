# PEMROGRAMAN MOBILE 2
## 📘 Program Dart: Aplikasi Input Data Diri dan Perhitungan IPK

## 🧩 Deskripsi Singkat
Program ini merupakan implementasi dari berbagai **materi dasar pemrograman Dart**, mulai dari **input/output**, **conditional**, **looping**, **function**, **list & maps**, **OOP (konsep sederhana)**, hingga **asynchronous**.  
Tujuannya adalah untuk membuat satu program komprehensif yang mencakup semua konsep tersebut dalam satu aplikasi sederhana:  
**“Program Data Diri & Perhitungan IPK Harapan.”**

---

## 📂 Materi yang Dicakup Berdasarkan Struktur Folder

| Folder | Materi | Implementasi dalam Program |
|:--------|:--------|:----------------------------|
| `2.Conditional` | Percabangan (if-else) | Digunakan untuk mengonversi nilai ke grade (fungsi `konversiKeGrade`). |
| `3.Looping` | Perulangan (for) | Digunakan untuk menampilkan daftar mata kuliah dan menginput nilai satu per satu. |
| `4.Function` | Fungsi | Terdapat beberapa fungsi seperti `konversiKeGrade`, `konversiKeBobot`, dan `tampilkanLirik`. |
| `5.List dan Maps` | Struktur data List | Menyimpan daftar mata kuliah, nilai, grade, dan bobot. |
| `6.OOP` | Konsep objek sederhana | Dapat dikembangkan menjadi class `Mahasiswa` dan `MataKuliah` jika diperlukan. |
| `7.Asynchronous` | Pemrograman asynchronous (`Future`, `await`) | Menampilkan lirik lagu motivasi dengan delay waktu. |

---

## 🧠 Fitur Utama Program

### 1. Input Data Diri
Pengguna memasukkan informasi:
- Nama  
- NIM  
- Jurusan  
- Asal  
- Hobi  

Semua disimpan dalam variabel yang kemudian ditampilkan kembali sebagai identitas mahasiswa.

---

### 2. Menampilkan List Mata Kuliah
Program menampilkan daftar 7 mata kuliah yang disimpan di dalam **List**:
```dart
List<String> mataKuliah = [
  "Pemrograman Mobile 2",
  "Bahasa Indonesia",
  "Keamanan Jaringan",
  "Keamanan Informasi",
  "Pemrograman Web 1",
  "Sistem Mikroprosesor",
  "Kecerdasan Buatan"
];
```

---

### 3. Input Nilai dan Konversi
Menggunakan **looping** dan **conditional**, pengguna diminta untuk memasukkan nilai harapan (1–100) untuk tiap mata kuliah.  
Kemudian nilai tersebut dikonversi ke **Grade** dan **Bobot** menggunakan fungsi:

```dart
String konversiKeGrade(int nilai) {
  if (nilai >= 85 && nilai <= 100) return "A";
  else if (nilai >= 80 && nilai <= 84) return "B";
  else if (nilai >= 75 && nilai <= 79) return "C";
  else if (nilai >= 65 && nilai <= 74) return "D";
  else return "E";
}
```

---

### 4. Perhitungan IPK
Setelah semua nilai dikonversi ke bobot, IPK dihitung dengan rumus:
```
IPK = Total Bobot / 21
```

---

### 5. Output Lengkap
Program menampilkan:
- Data diri
- Daftar nilai + grade + bobot
- Total bobot nilai
- IPK akhir

---

### 6. Lirik Lagu (Asynchronous)
Untuk menutup program dengan semangat positif, digunakan konsep **asynchronous programming** menggunakan `await Future.delayed()`:

```dart
Future<void> tampilkanLirik() async {
  for (String baris in lirik) {
    print(baris);
    await Future.delayed(Duration(seconds: 3));
  }
}
```

---

## 🧩 Pengembangan ke OOP (Opsional)
Untuk mengaitkan dengan materi `6.OOP`, program dapat dikembangkan menjadi struktur **class** seperti berikut:

```dart
class Mahasiswa {
  String nama, nim, jurusan, asal, hobi;
  Mahasiswa(this.nama, this.nim, this.jurusan, this.asal, this.hobi);

  void tampilkanData() {
    print("Nama     : $nama");
    print("NIM      : $nim");
    print("Jurusan  : $jurusan");
    print("Asal     : $asal");
    print("Hobi     : $hobi");
  }
}
```

Kemudian di `main()` kamu bisa buat:
```dart
var mhs = Mahasiswa(nama!, nim!, jurusan!, asal!, hoby!);
mhs.tampilkanData();
```

---

## 💻 Cara Menjalankan

### 1. Instal Dart
Cek apakah Dart sudah terpasang:
```bash
dart --version
```

### 2. Jalankan Program
```bash
dart run data_diri.dart
```

### 3. Hasil Output
```text
=== DATA DIRI ===
Nama     : Haris
NIM      : 230512341
Jurusan  : Informatika
Asal     : Bandung
Hoby     : Coding

=== LIST MATA KULIAH ===
1. Pemrograman Mobile 2
2. Bahasa Indonesia
...

Masukkan nilai harapan (1 - 100) untuk setiap mata kuliah:
Pemrograman Mobile 2 : 90
Bahasa Indonesia : 82
...

=== Harapan Nilai dan IP ===
- Pemrograman Mobile 2 : 90 → Grade A (Bobot: 12)
- Bahasa Indonesia : 82 → Grade B (Bobot: 9)
...
Total Bobot Nilai : 60
Total SKS         : 21
IPK Harapan       : 2.86
```

---

## 📖 Konsep yang Dipelajari
- Input/Output standar dengan `stdin` dan `stdout`
- Penggunaan `List` dan `Looping`
- Percabangan `if-else`
- Fungsi dengan parameter dan return value
- Struktur data dinamis
- Asynchronous function (`Future`, `await`, `Duration`)
- Konsep dasar OOP (class dan object)

---

## 🧑‍💻 Penulis
**Nama:** Haris Nurpazri  
**Mata Kuliah:** Pemrograman Mobile 2  
**Dosen Pengampu:** Bapak Muhammad Ikhwan Fathulloh, S.Kom  
**Semester:** 4 (Empat)  
