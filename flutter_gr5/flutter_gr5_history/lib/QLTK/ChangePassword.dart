import 'package:flutter/material.dart';
import 'Widget/Button.dart';
import 'Widget/TextField_changePW.dart';
import 'Widget/profile.dart';
import '../homePage.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChangePassword(),
  ));
}

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        centerTitle: false,
        title: const Text(
          'Đổi mật khẩu',
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
          const TextField_changePW(
            label: 'Mật khẩu cũ',
            text: "",
            //onChanged: (name) {},
          ),
          //Email
          const SizedBox(
            height: 15,
          ),
          const TextField_changePW(
            label: 'Mật khẩu mới',
            text: "",

            //onChanged: (name) {},
          ),
          //ngày sinh
          const SizedBox(
            height: 15,
          ),
          const TextField_changePW(
            label: 'Nhập lại mật khẩu mới',
            text: "",
            //onChanged: (name) {},
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // căn trái
            children: [
              Row(
                children: [
                  Icon(Icons.check, color: Color(0xFF4C6ED7)),
                  Text('Mật khẩu có từ 6-12 kí tự',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C6ED7))),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check, color: Color(0xFF4C6ED7)),
                  Text('Mật khẩu phải chứa ít nhất 1 kí tự *,@,&,#..',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C6ED7))),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check, color: Color(0xFF4C6ED7)),
                  Text('Mật khẩu phải chứa ít nhất 1 kí tự viết hoa',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C6ED7))),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check, color: Color(0xFF4C6ED7)),
                  Text('Phải nhập mật khẩu mới khác với mật khẩu cũ',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4C6ED7))),
                ],
              )
            ],

            //onChanged: (name) {},
          ),
          //giưới tính
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
                                            250), // Điều chỉnh kích thước của popup
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35.0),
                                      // Đặt bán kính bo góc popup
                                    ),
                                    // actionsPadding: EdgeInsets.all(8.0),
                                    content: Column(
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
                                        const SizedBox(
                                          height: 5,
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
