import 'dart:io';
import 'package:dart_application_1/helper_konversi_suhu.dart' as helkonsu;

void main() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);

  print(
      "konversi to celcius : ${helkonsu.getKonversiSuhuCelcius(fahrenheit.toDouble())}");
  print(
      "konversi to reamur : ${helkonsu.getKonversiSuhuReamur(fahrenheit.toDouble())}");
  print(
      "konversi to kelvin : ${helkonsu.getKonversiSuhuKelvin(fahrenheit.toDouble())}");
}
