import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/TDH/chitiet1.dart';
import 'package:flutter_gr5_history/TDH/home.dart';
import 'package:flutter_gr5_history/MDL/model/truyen.dart';
import 'package:flutter_gr5_history/homePage.dart';
import 'package:flutter_gr5_history/TDH/Thongke.dart';

// Import màn hình thống kê

class HomeScreenn extends StatefulWidget {
  const HomeScreenn({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Homepage(),
              ),
            );
          },
        ),
        title: Text("Tiến độ học tập"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('Bài đang học', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen2()),
                );
              }),
              _buildButton('Bài đã học', () {}),
              _buildButton('Thống Kê', () {
                // Chuyển hướng đến trang thống kê
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThongKePage()),
                );
              }),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: sampleNotes.length,
              itemBuilder: (context, index) {
                Note movie = sampleNotes[index];
                return Card(
                  child: ListTile(
                    title: Text(movie.title1),
                    subtitle: Text(movie.chapter1.toString()),
                    leading: Container(
                      width: 50.0,
                      child: Image.asset(movie.image),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => chitiet1(movie)),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: text == 'Bài đã học' ? Colors.blue : null,
      ),
      child: Text(text),
    );
  }
}
