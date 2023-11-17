import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ChangePass.dart';
import 'Login.dart';

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  TextEditingController _emailController = TextEditingController();

  String _errorMessage = '';

  void _email() {
    // Kiểm tra thông tin đăng nhập
    String enteredEmail = _emailController.text;

    // Thực hiện kiểm tra đăng nhập thành công ở đây
    // bool isAuthenticated = true; // Thay đổi thành logic kiểm tra đăng nhập thực tế

    if (enteredEmail == 'nguyenvana@gmail.com') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChangePassPage()),
      );
    } else {
      setState(() {
        _errorMessage = 'Email đã bị sai\nVui lòng nhập lại email';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => (LoginPage())),
            );
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset(' assets/images/banner.png'),
                        ],
                      )),
                    ],
                  )),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Quên mật khẩu",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hãy nhập email của bạn để đổi mật khẩu",
                            style: TextStyle(
                                color: Color(0xFF9CA3AF), fontSize: 20),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Địa chỉ email của bạn",
                            style: TextStyle(
                                color: Color(0xFF9CA3AF), fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(children: <Widget>[
                              TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              )
                            ]),
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: Column(children: <Widget>[
                              Text(
                                _errorMessage,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red,
                                    fontSize: 15),
                              )
                            ]),
                          ),
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: _email,
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 7),
                              child: Text(
                                'Tiếp tục',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF4C6ED7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
