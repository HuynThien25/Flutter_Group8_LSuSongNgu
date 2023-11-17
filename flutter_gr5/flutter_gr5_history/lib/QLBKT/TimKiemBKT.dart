import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/DangNhap/Login.dart';
import 'package:flutter_gr5_history/QLTB/dstb.dart';
import 'package:flutter_gr5_history/QLTK/ViewProfile.dart';
import 'trangchu.dart';
import 'BaiKiemTra.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimKiemBKTScreen(),
    );
  }
}

class TimKiemBKTScreen extends StatelessWidget {
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
                // _handleDropdownItemSelected(context, result);
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
      body: SafeArea(
        child: Column(
          children: [
            // Ảnh đại diện, tên người dùng, thông báo và button nút đăng xuất

            // Hàng chứa icon quay lại và thanh tìm kiếm
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      // TODO: Xử lý khi nhấn vào icon trở về
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ),
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: 'Tìm kiếm...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Danh sách bài chưa hoàn thành
            Expanded(
              child: ListView(
                children: [
                  _buildLessonCard(
                    'Chiến dịch Tây Nguyên',
                    '5/7 Chương 5',
                    'assets/images/img9.png', // Thay đổi đường dẫn hình ảnh
                  ),
                  _buildLessonCard(
                    'Anh hùng Trần Hưng Đạo',
                    '2/3 Chương 2',
                    'assets/images/img10.png', // Thay đổi đường dẫn hình ảnh
                  ),
                  _buildLessonCard(
                    'Chị em Trưng Trắc Trưng Nhị',
                    '8/10 Chương 3',
                    'assets/images/vd1.jpg', // Thay đổi đường dẫn hình ảnh
                  ),
                  _buildLessonCard(
                    'Triều đại nhà Lý 1009-1225',
                    '2/10 Chương 2',
                    'assets/images/img6.png', // Thay đổi đường dẫn hình ảnh
                  ),
                  _buildLessonCard(
                    'Trận Thành cổ Quảng Trị 1972',
                    '5/10 Chương 12',
                    'assets/images/img7.png', // Thay đổi đường dẫn hình ảnh
                  ),
                ],
              ),
            ),
            // Nút Home
          ],
        ),
      ),
    );
  }

  Widget _buildLessonCard(String title, String subTitle, String imagePath) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: double.maxFinite,
            height: 140,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(subTitle),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // TODO: Xử lý khi nút "Làm lại" được nhấn
                },
                child: Text('Làm lại'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
