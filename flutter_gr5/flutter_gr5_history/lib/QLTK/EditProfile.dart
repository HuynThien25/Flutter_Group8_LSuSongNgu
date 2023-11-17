import 'package:flutter/material.dart';
import 'Widget/profile.dart';
import 'ViewProfile.dart';
import 'Widget/Button.dart';
import 'Widget/Calendar.dart';
import 'Widget/Dropdownlist.dart';
import 'Widget/TextField_Edit.dart';
import '../homePage.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EditProfile(),
  ));
}

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        centerTitle: false,
        title: const Text(
          'Chỉnh sửa thông tin',
          style: TextStyle(
              fontSize: 20, fontStyle: FontStyle.normal, color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewProfile()),
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
          const TextFieldWidget_edit(
            label: 'Họ tên',
            text: "Phương Thúy",
            //onChanged: (name) {},
          ),
          //Email
          const SizedBox(
            height: 15,
          ),
          const TextFieldWidget_edit(
            label: 'Email',
            text: "thuypt@gmail.com",
            //onChanged: (name) {},
          ),
          //ngày sinh
          const SizedBox(
            height: 15,
          ),
          const TextField_calendar(
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
          const DDLWidget(
            label: "Giới tính",
          ),

          const SizedBox(
            height: 25,
          ),
          ButtonWidget(
            text: 'Lưu',
            onClicked: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    insetPadding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 250), // Điều chỉnh kích thước của AlertDialog
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                      // Đặt bán kính bo góc
                    ),
                    //title: Text('Xác nhận lưu dữ liệu'),
                    content: const Column(
                      children: [
                        Text(
                          style: TextStyle(
                            color: Colors.black, // Màu chữ
                            fontSize: 20, // Kích thước chữ
                            fontWeight: FontWeight.bold, // Kiểu chữ in đậm
                          ),
                          'Bạn có chắc chắn muốn lưu thông tin này?',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Căn giữa các nút
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(
                                  0xFF4C6ED7), // Màu nền của nút "Xác nhận"
                              onPrimary: Colors.white, // Màu chữ trên nút
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                            onPressed: () {
                              // Đóng popup hiện tại
                              Navigator.of(context).pop();
                              // Hiển thị AlertDialog thông báo thành công
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 30),
                                    insetPadding: const EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical:
                                            250), // Điều chỉnh kích thước của AlertDialog
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35.0),
                                      // Đặt bán kính bo góc
                                    ),
                                    // actionsPadding: EdgeInsets.all(8.0),
                                    content: Column(
                                      //mainAxisSize: MainAxisSize
                                      //    .min, // Đảm bảo cột chính có kích thước tối thiểu
                                      children: [
                                        const Icon(
                                          Icons.check_circle,
                                          color: Color(0xFF4C6ED7),
                                          size: 40,
                                        ),
                                        const Text(
                                          'Lưu thành công!',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .end, //đưa về phía phải của row
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Homepage()),
                                                );
                                                // Xử lý sự kiện khi nút được nhấn
                                              },
                                              child: Text(
                                                'Thoát',
                                                style: TextStyle(
                                                    color: Color(0xFF4C6ED7),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text('Xác nhận'),
                          ),
                          SizedBox(width: 30), // Khoảng cách giữa các nút
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Màu nền của nút "Hủy"
                              onPrimary: Color(0xFF4C6ED7), // Màu chữ trên nút
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                  color: Color(0xFF4C6ED7),
                                  width: 1,
                                ),
                              ),
                            ),
                            onPressed: () {
                              // Đóng PopupDialog
                              Navigator.of(context).pop();
                            },
                            child: Text('Hủy'),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
