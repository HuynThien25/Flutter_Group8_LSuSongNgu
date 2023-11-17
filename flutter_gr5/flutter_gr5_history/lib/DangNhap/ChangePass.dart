import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Forgot.dart';
import 'Login.dart';

class ChangePassPage extends StatefulWidget {
  @override
  _ChangePassPageState createState() => _ChangePassPageState();
}

class _ChangePassPageState extends State<ChangePassPage> {
  TextEditingController _newPassController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();
  String _errorMessage = '';

  void _changePassword() {
    String newPassword = _newPassController.text;
    String confirmPassword = _confirmPassController.text;

    if (newPassword == confirmPassword) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (LoginPage())),
                      );
                    },
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 48.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Đổi mật khẩu thành công!',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ],
            ),
          );
        },
      );
    } else {
      setState(() {
        _errorMessage = 'Mật khẩu không khớp';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => (ForgotPage())),
            );
            // Navigator.pushNamed(context, '/home');
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
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Đổi mật khẩu mới",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Mật khẩu của bạn phải có 6-12 ký tự, bao gồm cả chữ số, chữ cái và ký tự đặc biệt (!@%), phải có ít nhất 1 ký tự viết hoa.",
                            style: TextStyle(
                                color: Color(0xFF9CA3AF), fontSize: 18),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Mật khẩu mới",
                            style: TextStyle(
                                color: Color(0xFF9CA3AF), fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(children: <Widget>[
                              TextField(
                                controller: _newPassController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                obscureText: true,
                              )
                            ]),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Xác nhận mật khẩu mới",
                            style: TextStyle(
                                color: Color(0xFF9CA3AF), fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(children: <Widget>[
                              TextField(
                                controller: _confirmPassController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                obscureText: true,
                              )
                            ]),
                          ),
                          SizedBox(height: 30),
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
                            onPressed: _changePassword,
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
