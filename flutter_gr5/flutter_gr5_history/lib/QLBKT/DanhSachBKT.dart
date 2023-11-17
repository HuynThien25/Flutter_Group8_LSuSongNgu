import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/DangNhap/Login.dart';
import 'package:flutter_gr5_history/QLTK/ViewProfile.dart';
import 'trangchu.dart';
import 'BaiKiemTra.dart';
import 'package:flutter_gr5_history/QLTB/dstb.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DanhSachBKTScreen(),
    );
  }
}

class DanhSachBKTScreen extends StatelessWidget {
  final List<QuizData> quizList = [
    QuizData(
      title: 'Vua Hùng',
      description: '5/10 Chương',
      date: '25/10/2023',
      image: 'assets/images/img1.png',
    ),
    QuizData(
      title: 'Anh hùng Đinh Bộ Lĩnh',
      description: '2/10 Chương',
      date: '25/10/2023',
      image: 'assets/images/img2.png',
    ),
    QuizData(
      title: 'Cách mạng Tháng Tám 1945',
      description: '2/4 Chương',
      date: '25/10/2023',
      image: 'assets/images/img3.png',
    ),
    QuizData(
      title: 'Chiến dịch Điện Biên Phủ 1954',
      description: '2/3 Chương',
      date: '25/10/2023',
      image: 'assets/images/img4.png',
    ),
    QuizData(
      title: 'Chiến dịch Hồ Chí Minh 1975',
      description: '2/3 Chương',
      date: '25/10/2023',
      image: 'assets/images/img5.png',
    ),
    QuizData(
      title: 'Triều đại nhà Lý 1009-1225',
      description: '2/5 Chương',
      date: '25/10/2023',
      image: 'assets/images/img6.png',
    ),
    QuizData(
      title: 'Trận Thành cổ Quảng Trị 1972',
      description: '3/4 Chương',
      date: '25/10/2023',
      image: 'assets/images/img7.png',
    ),
  ];

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
      body: Container(
        child: Column(
          children: [
            // Phần trên cùng - Icon hình ảnh, tên người dùng, thông báo, đăng xuất

            // Phần giữa - Tiêu đề "Danh sách các bài kiểm tra" và icon quay trở về
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TODO: Thêm widget cho icon quay trở về
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    // TODO: Xử lý khi nhấn vào icon quay trở về
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                ),
                // TODO: Thêm widget cho tiêu đề "Danh sách các bài kiểm tra"
                Text(
                  'Danh sách bài kiểm tra',
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Phần giữa - Danh sách bài kiểm tra
            Expanded(
              child: ListView.builder(
                itemCount: quizList.length,
                itemBuilder: (BuildContext context, int index) {
                  return QuizListItem(quizData: quizList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizListItem extends StatelessWidget {
  final QuizData quizData;

  QuizListItem({required this.quizData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(18.0),
      child: ListTile(
        leading: Image.asset(quizData.image),
        title: Text(quizData.title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(quizData.description),
            Text(quizData.date),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // TODO: Xử lý khi nút "Làm bài" được nhấn
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => BaiKiemTraScreen(),
              ),
            );
          },
          child: Text('Làm bài'),
        ),
      ),
    );
  }
}

class QuizData {
  final String title;
  final String description;
  final String date;
  final String image;

  QuizData({
    required this.title,
    required this.description,
    required this.date,
    required this.image,
  });
}
