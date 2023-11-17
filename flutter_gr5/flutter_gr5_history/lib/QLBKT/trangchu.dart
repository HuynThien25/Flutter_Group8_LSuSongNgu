import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/homePage.dart';
import 'DanhSachBKT.dart';
import 'LichSuBKT.dart';
import 'TimKiemBKT.dart';

class MyHomePage extends StatelessWidget {
  final double buttonHeight = 80.0;
  final double spacerHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Phần ảnh ở phía trên
          Container(
            height: 370, // Điều chỉnh chiều cao theo nhu cầu
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/qlbkt.png'), // Đường dẫn đến ảnh ở phía trên
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 0,
                  width: 300,
                ), // SizedBox để đặt chiều cao
                buildButtonContainer(
                  context,
                  'assets/images/dsbkt.png',
                  'Danh sách BKT',
                  DanhSachBKTScreen(),
                ),
                SizedBox(
                  height: 0,
                  width: 280,
                ), // SizedBox để đặt chiều cao
                buildButtonContainer(
                  context,
                  'assets/images/lsbkt.png',
                  'Lịch sử BKT',
                  LichSuBKTScreen(),
                ),
                SizedBox(
                  height: 0,
                  width: 260,
                ), // SizedBox để đặt chiều cao
                buildButtonContainer(
                  context,
                  'assets/images/tkbkt.png',
                  'Tìm kiếm BKT',
                  TimKiemBKTScreen(),
                ),
                SizedBox(height: spacerHeight), // SizedBox để đặt chiều cao
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  // TODO: Xử lý khi nhấn vào icon quay về
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtonContainer(
      BuildContext context, String imagePath, String title, Widget screen) {
    return Container(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ),
          );
        },
        child: Ink.image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          width: 270,
          height: buttonHeight,
        ),
      ),
    );
  }
}
