import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/main.dart';
import 'package:flutter_gr5_history/MDL/screens/home.dart';

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
              // onSelected: (String result) {
              //   _handleDropdownItemSelected(context, result);
              //   // Xử lý khi một mục trong Dropdown được chọn
              // },
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
              },
            ),

            // btn_đăng xuất
            ElevatedButton(
              onPressed: () {},
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
              MaterialPageRoute(builder: (context) => MyApp()),
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
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/images/Tittle_His.png'),
                  fit: BoxFit.cover,
                  width: 300,
                  height: 80,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/images/Test.png'),
                  fit: BoxFit.cover,
                  width: 280,
                  height: 80,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/images/Progress_learn.png'),
                  fit: BoxFit.cover,
                  width: 250,
                  height: 80,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
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
