import 'package:flutter/material.dart';
import 'EditProfile.dart';
import 'Widget/Button.dart';
import 'Widget/Textview_Widgit.dart';
import 'Widget/profile.dart';
import '../homePage.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ViewProfile(),
  ));
}

class ViewProfile extends StatelessWidget {
  const ViewProfile({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        centerTitle: false,
        title: const Text(
          'Thông tin người dùng',
          style: TextStyle(
              fontSize: 20, fontStyle: FontStyle.normal, color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
            // Xử lý khi nút thoát được nhấn
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0), // Điều chỉnh lề của nút
            child: CircleAvatar(
              backgroundColor:
                  Color.fromRGBO(224, 224, 224, 1), // Màu nền của hình tròn
              child: Icon(
                Icons.arrow_back, // Biểu tượng icon thoát
                color: Colors.black, // Màu của biểu tượng
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 15,
          ),
          ProfileWidget(
            imagePath: 'assets/images/Avarta.jpg',
            onClicked: () async {},
          ),
          // họ tên
          const SizedBox(
            height: 15,
          ),
          const TextFieldWidget(
            label: 'Họ tên',
            text: "Phương Thúy",
            //onChanged: (name) {},
          ),
          //Email
          const SizedBox(
            height: 15,
          ),
          const TextFieldWidget(
            label: 'Email',
            text: "thuypt@gmail.com",
            //onChanged: (name) {},
          ),
          //ngày sinh
          const SizedBox(
            height: 15,
          ),
          const TextFieldWidget(
            label: 'Ngày sinh',
            text: "24-05-1998",
            //onChanged: (name) {},
          ),
          //giưới tính
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          const TextFieldWidget(
            label: 'Giới tính',
            text: "Nữ",
            //onChanged: (name) {},
          ),

          const SizedBox(
            height: 25,
          ),
          ButtonWidget(
              text: 'Chỉnh sửa',
              onClicked: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfile()),
                );
              })
        ],
      ),
    );
  }
}
