import 'package:flutter/material.dart';
import 'package:app_lempar_dadu/pages/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //todo -->> Kalau Positional Parameter, langsung tulis warnanya mau apa
        body: AppLemparDadu(
          Color.fromARGB(255, 0, 167, 130),
          Color.fromARGB(255, 1, 118, 214),
          Color.fromARGB(255, 215, 236, 22),
        ),

        // body: AppLemparDadu(
        //   [
        //     Color.fromARGB(255, 0, 167, 130),
        //     Color.fromARGB(255, 1, 118, 214),
        //     Color.fromARGB(255, 215, 236, 22),
        //   ],
        // ),

        //todo -->> Kalau pake Named Parameter, nama variabel yg requirednya ditulis dulu,
        //todo jadi (namaVariabel: baru apa warnanya)
        // body: AppLemparDadu(warna: [Color.fromARGB(255, 0, 167, 130), Color.fromARGB(255, 1, 118, 214)]),
      ),
    ),
  );
}
