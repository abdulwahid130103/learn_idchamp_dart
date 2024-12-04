import 'dart:io';

int calculate() {
  return 6 * 7;
}

// cooment line

/*
1. Single-line comment atau komentar satu baris yang diawali dengan tanda // dan berakhir pada akhir baris.
2. Multi-line comment di mana kita bisa menuliskan beberapa baris komentar yang diawali dengan tanda /* dan diakhiri dengan */.
3. Documentation comment adalah kombinasi single-line dan multi-line yang diawali dengan /// atau 
/** dan diakhiri dengan /// atau **/.
*/

void getKeyword() {
  // variable keyword var
  var myAge;
  myAge = 20;
  print(myAge);
}

void getDataTypes() {
  // data types
  var greetings = 'Hello Dart!'; // String
  var myAge = 20; // integers
  var x; // dynamic
  x = 7;
  x = 'Dart is great';
  print(x);

  var z = 20; // int
  // z = 'Dart is great'; // Kesalahan assignment
  print(z);
}

void getInputData() {
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('Usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');
}

void getNumbers() {
  var number = 2020;
  var hex = 0xDEADBEEF;

  var decimal = 1.2;
  var pi = 3.14;

  double withoutDecimal = 7; // Sama dengan double withoutDecimal = 7.0

  // String -> int
  var eleven = int.parse('11');
  print(eleven.runtimeType);

  // String -> double
  var elevenPointTwo = double.parse('11.2');
  print(elevenPointTwo.runtimeType);

  // int -> String
  var elevenAsString = 11.toString();
  print(elevenAsString.runtimeType);

  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print(piAsString.runtimeType);
}

void getStrings() {
  String singleQuote = 'Ini adalah String';
  String doubleQuote = "Ini juga String";
  print('"I think it\'s great!" I answered confidently');

  var name = 'Messi';
  print('Hello $name, nice to meet you.');
  print('1 + 1 = ${1 + 1}');

  print(r'Dia baru saja membeli komputer seharga $1,000.00');
  print('Hi \u2665');
}

void getBooleans() {
  bool alwaysTrue = true;
  var alwaysFalse = false;
  var notTrue = !true;
  bool notFalse = !false;

  if (true) {
    print("It's true");
  } else {
    print("It's False");
  }
}

void getOperators() {
  // Operator aritmatika
  var firstNumber = 4;
  var secondNumber = 13;
  var sum = firstNumber + secondNumber;
  print(sum);
  print(5 + 2); // int add = 7
  print(5 - 2); // int subtract = 3
  print(5 * 2); // int multiply = 10
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2
  print(5 % 2); // int modulo = 1

// Operator perbandingan
  if (2 <= 3) {
    print('Ya, 2 kurang dari sama dengan 3');
  } else {
    print("Anda salah");
  }
  // Operator logika
  if (2 < 3 && 2 + 4 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print(
        '2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  if (false || true || false) {
    print('Ada satu nilai true');
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }
}

void getExceptions() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on Exception {
    print('Can not divide by zero.');
  }

//Selain try, on, dan catch, ada satu blok lagi yang ada dalam mekanisme
// exception handling, yaitu finally. Blok finally
//akan tetap dijalankan tanpa peduli apa pun hasil yang terjadi pada blok try-catch.
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}

// function

// returnType functionName(type param1, type param2, ...) {
//   return result;
// }

void greet(String name, int bornYear) {
  var age = 2023 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

// Optional parameters
void greetNewUser(String name, int age, bool isVerified) {
  greetNewUser2('Widy', 20, true);
  greetNewUser2('Widy', 20);
  greetNewUser2('Widy');
  greetNewUser2();

  greetNewUser3(null, null, true);
}

// Namun, Dart mendukung optional parameter, di mana kita tidak
// wajib mengisi parameter yang diminta oleh fungsi. Untuk bisa
//membuat parameter menjadi opsional, kita perlu memasukkannya ke
//dalam kurung siku seperti contoh berikut:
void greetNewUser2(
    [String name = "dico", int age = 10, bool isVerified = true]) {}

// Setiap parameter yang tidak dimasukkan akan memiliki nilai null.
// Namun sejak versi 2.12, Dart memiliki fitur null safety di mana
//suatu variabel secara default tidak bisa memiliki nilai null. Solusinya,
//kita bisa menambahkan tanda tanya (?) setelah tipe data supaya bisa
//menyimpan nilai null atau memberikan nilai parameter default.
//Nilai ini akan digunakan jika kita tidak memasukkan parameternya.

void greetNewUser3([String? name, int? age, bool isVerified = false]) {}

// Perhatikan bahwa parameter ini bersifat opsional dan
// secara default akan bernilai null. Untuk memenuhi null safety,
//Anda bisa menggunakan cara seperti sebelumnya, atau
//menandai parameter wajib diisi dengan keyword required.

void greetNewUser4(
    {required String name, required int age, bool isVerified = false}) {}

// Variable Scope
var price2 = 300000;
void getVariableScope() {
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
  var discount2 = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0; // pembuatan variabel baru dengan scope lebih kecil
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}

num checkDiscount2(num price) {
  num discount = 0;
  // if (!discountApplied) {
  // pemanggilan variabel yang salah sehingga terjadi error
  //   if (price >= 100000) {
  //     discount = 10 / 100 * price;
  //     var discountApplied =
  //         true; // proses deklarasi seharusnya terjadi sebelum pemanggilan variabel
  //   }
  // }

  return discount;
}

// Constants & Final

const num pi = 3.14;
void getConstAndFinal() {
  // const pi = 3.14;
  var radius = 7;
  print(
      'Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');

  final firstName = "Achmad";
  final lastName = "Ilham";

  //lastName = 'Angga';       // tidak bisa dilakukan pengubahan nilai

  print('Hello $firstName $lastName');
}

num calculateCircleArea(num radius) => pi * radius * radius;

// Null Safety
void getNullSafety() {
  // int age = null; // Compile error
  // String? favoriteFood = null;

  String? favoriteFood = null;

  buyAMeal(favoriteFood); // Compile error
  buyAMeal(
      favoriteFood!); // disematkan bang operator supaya mengembalikan nilai non-null
}

void buyAMeal(String? favoriteFood) {
  if (favoriteFood == null) {
    print('Bought Nasi Goreng');
  } else {
    print('Bought $favoriteFood');
  }
}
