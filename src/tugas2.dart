import 'dart:io';

void main() {
  stdout.write("Masukkan Skor Anda ( 0 - 100 ) : ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print(" ERROR! \n Input Tidak Boleh Kosong");
    return;
  }

  int? skor = int.tryParse(input);

  if (skor == null) {
    print("ERROR!! \nSkor tidak boleh diisikan selain angka ya ");
    return;
  }

  if (skor < 0 || skor > 100) {
    print(
      "ERROR!!\nSkor Harus Diantara 0 - 100 \ntidak boleh lebih \ntidak boleh kurang",
    );
    return;
  }

  String grade;

  if (skor >= 85) {
    grade = 'A';
  } else if (skor >= 70) {
    grade = 'B';
  } else if (skor >= 60) {
    grade = 'C';
  } else if (skor >= 50) {
    grade = 'D';
  } else {
    grade = 'E';
  }

  print("Skor anda = $skor");
  print("Grade anda = $grade");
}
