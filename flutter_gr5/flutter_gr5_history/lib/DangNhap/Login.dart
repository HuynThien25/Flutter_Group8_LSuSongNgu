import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Forgot.dart';
import 'package:flutter_gr5_history/homePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';
  void _login() {
    String username = _usernameController.text;
    String Password = _passwordController.text;

    if (Password == '1234' && username == "a@gmail.com") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    } else {
      setState(() {
        _errorMessage = 'Mật khẩu của tài khoản không đúng !';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4C6ED7),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: <Widget>[
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Image.asset('assets/images/banner.png'),
                        ],
                      )),
                    ],
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Welcome History App !",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Hãy đăng nhập tài khoản của bạn",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(children: <Widget>[
                        Text(
                          "ĐĂNG NHẬP",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 25),
                        )
                      ]),
                    ),
                  ),
                  Container(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 400,
                          child: TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: 'Tên đăng nhập',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 10),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Mật khẩu',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          obscureText: true,
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

                        SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: _login,
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Đăng nhập',
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
                        ),

                        Row(
                          children: [
                            Text(
                              'Bạn đã quên mật khẩu ?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => (ForgotPage())),
                                  );
                                  // Xử lý khi người dùng nhấn vào "Quên mật khẩu"
                                },
                                child: Text(
                                  'Quên mật khẩu',
                                  style: TextStyle(
                                    color: Color(0xFF4C6ED7),
                                    fontSize: 15,
                                  ),
                                ))
                          ],
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     TextButton(
                        //       onPressed: () {
                        //         // Xử lý khi người dùng nhấn vào "Quên mật khẩu"
                        //       },
                        //       child: Text(
                        //         'Quên mật khẩu',
                        //         style: TextStyle(
                        //           color: Colors.red,
                        //         ),
                        //       ),
                        //     ),
                        //     ElevatedButton(
                        //       onPressed: _login,
                        //       child: Text('Đăng nhập'),
                        //       style: ElevatedButton.styleFrom(
                        //         primary: Colors.blue,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
