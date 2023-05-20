import 'package:flutter/material.dart';
import 'package:flutter_pas_07052023/mainn.dart';
import 'package:flutter_pas_07052023/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyMain(),
    );
  }
}

// TIDAK TAU KENAPA KALO ADA FILE MAIN.DART CLEAN ROUTENYA BISA BERJALAN
// JIKA TETAP MEMAKSAKAN MEMAKAI YANG MAINN.DART as MAIN.DART ROUTE KE PAGE SELANJUTNYA AKAN ERROR T_T