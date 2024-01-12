import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //contoh penggunaan getter setter
    Kotak square = new Kotak.tinggi(20);
    square.setLebar = 10;
    //atau square.lebar = 10;
    return Scaffold(
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
          Flexible(
              child: square,
              flex: 2,
              fit: FlexFit.loose //loose tidak ikut di scretch
              ),
          Flexible(
              //contoh pemanggilan konstruktor dengan parameter
              child: Kotak(75, 30),
              flex: 1,
              fit: FlexFit.tight //tight ikut di scretch
              ),
          Flexible(
              //contoh pemanggilan konstruktor dengan property
              child: Kotak.tinggilebar(tinggi: 50),
              flex: 1,
              fit: FlexFit.tight //tight ikut di scretch
              )
        ])));
  }
}

class Kotak extends StatelessWidget {
  double? tinggi;
  double? lebar;

  //override getter setter
  //secara default tidak perlu ada getter setter
  //kecuali ada sesuatu untuk pengesetan
  set setLebar(double lebar) => {
        if (this.lebar! < 10) {this.lebar = lebar}
      };
  double? get getLebar => this.lebar;

  //konstruktor standar hanya digunakan sekali
  Kotak(this.tinggi, this.lebar);
  //bisa juga dibalik,
  //konstruktor standarnyanya Kotak({this.tinggi, this.lebar});
  //konstruktor bernamanya Kotak.tinggilebar(this.tinggi, this.lebar);

  //konstruktor bernama
  Kotak.tinggilebar({this.tinggi, this.lebar}); //konstruktor dengan property
  Kotak.tinggi(this.tinggi);

  // @override
  // Widget build(BuildContext context){
  //   return Container(
  //     width: lebar,
  //     height: tinggi,
  //     decoration: BoxDecoration(
  //         color: Colors.blue,
  //         border: Border.all()
  //     ),
  //   );
  // }
  //atau
  @override
  Widget build(BuildContext context) => Container(
        width: lebar,
        height: tinggi,
        decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
      );
}
