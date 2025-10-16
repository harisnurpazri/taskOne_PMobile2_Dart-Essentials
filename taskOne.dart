import 'dart:io';
import 'dart:async';

void main() async {
  // ==== Data Diri ====
  stdout.write("Masukkan nama anda: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan NIM anda: ");
  String? nim = stdin.readLineSync();

  stdout.write("Masukkan jurusan anda: ");
  String? jurusan = stdin.readLineSync();

  stdout.write("Masukkan Asal anda: ");
  String? asal = stdin.readLineSync();

  stdout.write("Masukkan hoby anda: ");
  String? hoby = stdin.readLineSync();

  print("\n=== DATA DIRI ===");
  print("Nama     : $nama");
  print("NIM      : $nim");
  print("Jurusan  : $jurusan");
  print("Asal     : $asal");
  print("Hoby     : $hoby");

  // ==== List Mata Kuliah ====
  List<String> mataKuliah = [
    "Pemrograman Mobile 2",
    "Bahasa Indonesia",
    "Keamanan Jaringan",
    "Keamanan Informasi",
    "Pemrograman Web 1",
    "Sistem Mikroprosesor",
    "Kecerdasan Buatan"
  ];

  print("\n=== LIST MATA KULIAH ===");
  for (int i = 0; i < mataKuliah.length; i++) {
    print("${i + 1}. ${mataKuliah[i]}");
  }

  // ==== Input Nilai Rate dan Hitung Grade ====
  List<int> nilaiRate = [];
  List<String> grade = [];
  List<int> bobotNilai = [];

  print("\nMasukkan nilai harapan (1 - 100) untuk setiap mata kuliah:");
  for (String mk in mataKuliah) {
    stdout.write("$mk : ");
    int? nilai = int.tryParse(stdin.readLineSync() ?? "");
    while (nilai == null || nilai < 1 || nilai > 100) {
      stdout.write("Nilai tidak valid! Masukkan ulang (1 - 100): ");
      nilai = int.tryParse(stdin.readLineSync() ?? "");
    }

    nilaiRate.add(nilai);
    String hasilGrade = konversiKeGrade(nilai);
    int hasilBobot = konversiKeBobot(hasilGrade);

    grade.add(hasilGrade);
    bobotNilai.add(hasilBobot);
  }

  // ==== Hitung Total & IPK ====
  int totalBobot = bobotNilai.reduce((a, b) => a + b);
  double ipk = totalBobot / 21; // total SKS = 21

  // ==== Tampilkan Semua Data ====
  print("\n=== Harapan Nilai dan IP ===");
  print("Nama     : $nama");
  print("NIM      : $nim");
  print("Jurusan  : $jurusan");
  print("\nHarapan Nilai per Mata Kuliah:");
  for (int i = 0; i < mataKuliah.length; i++) {
    print("- ${mataKuliah[i]} : ${nilaiRate[i]} → Grade ${grade[i]} (Bobot: ${bobotNilai[i]})");
  }

  print("\nTotal Bobot Nilai : $totalBobot");
  print("Total SKS         : 21");
  print("IPK Harapan       : ${ipk.toStringAsFixed(2)}");

  // ==== Lirik Lagu (Asynchronous) ====
  print("\n=== LIRIK LAGU MOTIVASI HARI INI ===");
  await tampilkanLirik();
}

// ==== Fungsi Konversi Nilai ke Grade ====
String konversiKeGrade(int nilai) {
  if (nilai >= 85 && nilai <= 100) return "A";
  else if (nilai >= 80 && nilai <= 84) return "B";
  else if (nilai >= 75 && nilai <= 79) return "C";
  else if (nilai >= 65 && nilai <= 74) return "D";
  else if (nilai >= 60 && nilai <= 64) return "E";
  else return "E";
}

// ==== Fungsi Konversi Grade ke Bobot ====
int konversiKeBobot(String grade) {
  switch (grade) {
    case "A":
      return 12;
    case "B":
      return 9;
    case "C":
      return 6;
    case "D":
      return 3;
    case "E":
      return 0;
    default:
      return 0;
  }
}

// ==== Fungsi Lirik Lagu (Asynchronous) ====
Future<void> tampilkanLirik() async {
  List<String> lirik = [
    "Paculah jangan berhenti",
    "Menerjang menembus membelah angin",
    "Ikuti rodamu mengantar arah cintamu",
    "Tunjukan kuatnya tekadmu",
    "jangan menyerah sebelum mencoba",
    "Putar putar roda berputar"
    "putar putar melesat",
    "WOO OO… Mimpi ada di depanmu",
    "WOO OO… Berkejaran dengan waktu",
    "Ikutilah kata hatimu",
    "Berjuang dan Berdoalah selalu"
  ];

  for (String baris in lirik) {
    print(baris);
    await Future.delayed(Duration(seconds: 3));
  }

  print("\n Selesai — tetap semangat meraih mimpi!");
}
