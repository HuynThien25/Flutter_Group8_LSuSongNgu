import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/CDLS/QLBH/Xembaihoc.dart';
import 'Trangchu2.dart';
import 'Xembaihoc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DanhsachNVLSScreen(),
    );
  }
}

class DanhsachNVLSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //trở về và tìm kiếm
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Trangchu2()),
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2)),
                      ],
                    ),
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: "Tìm kiếm...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //đầu mục
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC8D5FF),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: 350,
                    height: 80,
                    child: Center(
                      child: Text(
                        'NHÂN VẬT LỊCH SỬ \nHISTORICAL FIGURE',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Nhân vật
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 10, left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset('assets/images/hungvuong.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => XembaihocScreen()),
                          );
                        },
                        child: Image.asset('assets/images/haibatrung.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, bottom: 10, left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset('assets/images/lynamde.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset('assets/images/ngoquyen.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, bottom: 10, left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset('assets/images/dinhtienhoang.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset('assets/images/ledaihanh.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
