import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/MDL/screens/HomePage.dart';
import 'package:flutter_gr5_history/QLBKT/trangchu.dart';
import 'DanhsachNVLS.dart';

class Trangchu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/chudebaihoc.png'),
            fit: BoxFit.cover, //fit hình ảnh với màn hình
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 240),
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DanhsachNVLSScreen()),
                  );
                },
                child: Image.asset(
                  'assets/images/chudeNVLS.png',
                  fit: BoxFit.cover,
                  height: 120,
                  width: 300,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/chudeSKLS.png',
                  fit: BoxFit.cover,
                  height: 90,
                  width: 280,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/chudeGDLS.png',
                  fit: BoxFit.cover,
                  height: 90,
                  width: 260,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
