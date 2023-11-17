import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/DangNhap/Login.dart';
import 'QLBKT/trangchu.dart';
// import 'QLBKT/TimKiemBKT.dart';
// import 'QLBKT/DanhSachBKT.dart';
// import 'QLBKT/LichSuBKT.dart';
// import 'QLTB/dstb.dart';
// import 'QLTB/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
