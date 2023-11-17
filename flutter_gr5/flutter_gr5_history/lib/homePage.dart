import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/CDLS/QLBH/Trangchu2.dart';
import 'package:flutter_gr5_history/DangNhap/Login.dart';
import 'package:flutter_gr5_history/MDL/screens/home.dart';
import 'package:flutter_gr5_history/QLBKT/trangchu.dart';
import 'package:flutter_gr5_history/QLTB/dstb.dart';
import 'package:flutter_gr5_history/TDH/home.dart';
import 'QLTK/ChangePassword.dart';
import 'QLTK/ViewProfile.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        titleSpacing: 8,
        title: Row(
          children: [
            const Text(
              'Phương Thúy',
              style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.normal,
                  color: Colors.black),
            ),
            // dropdown
            PopupMenuButton<String>(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ), // Icon của Dropdown
              onSelected: (String result) {
                _handleDropdownItemSelected(context, result);
                // Xử lý khi một mục trong Dropdown được chọn
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'item1',
                  child: Text('Thông tin tài khoản'),
                ),
                PopupMenuItem<String>(
                  value: 'item2',
                  child: Text('Đổi mật khẩu'),
                ),
              ],
            ),
            const Spacer(),

            // iconbutton thông báo
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ), // Biểu tượng chuông
              onPressed: () {
                // Xử lý sự kiện khi nút được nhấn
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
            ),

            // btn_đăng xuất
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4C6ED7),
                padding: EdgeInsets.all(9.0),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(6.0), // Độ cong của góc nút
                ),
                fixedSize: Size(70, 30),
              ),
              child: Text(
                'Đăng xuất',
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/anh.png',
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewProfile()),
            );
            // Xử lý sự kiện khi ảnh được nhấn
          },
        ),
      ),
      body: Container(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(
                  15.0), // Đặt giá trị Padding theo nhu cầu của bạn
              child: Image.asset(
                'assets/images/Paner.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              //Chủ đề lịch sử
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Trangchu2()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/images/Tittle_His.png'),
                  fit: BoxFit.cover,
                  width: 300,
                  height: 80,
                ),
              ),
            ),
            Container(
              //Bài kiểm tra
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/images/Test.png'),
                  fit: BoxFit.cover,
                  width: 280,
                  height: 80,
                ),
              ),
            ),
            Container(
              //Tiến độ học
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen2()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/images/Progress_learn.png'),
                  fit: BoxFit.cover,
                  width: 250,
                  height: 80,
                ),
              ),
            ),
            Container(
              //Mục Đã lưu
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/images/Saved_item.png'),
                  fit: BoxFit.cover,
                  width: 220,
                  height: 80,
                ),
              ),
            ),
          ],
        ),
      )

          //child: Image.asset(
          //'images/Paner.png', // Thay đổi URL bằng URL của ảnh bạn muốn sử dụng
          // Có thể điều chỉnh để phù hợp với ảnh tròn
          // ),
          ),
    );
  }
}

// chuyển hướng dropdown
// ignore: unused_element

void _handleDropdownItemSelected(BuildContext context, String selectedItem) {
  // Xử lý mục được chọn tại đây
  // Ví dụ: Chuyển hướng đến trang mới dựa trên mục được chọn
  if (selectedItem == 'item1') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewProfile()),
    );
  } else if (selectedItem == 'item2') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChangePassword()),
    );
  }
}
