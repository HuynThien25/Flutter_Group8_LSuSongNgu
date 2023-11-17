import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/MDL/model/truyen.dart';
import 'package:flutter_gr5_history/MDL/screens/HomePage.dart';
import 'package:flutter_gr5_history/MDL/screens/chitiet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // TODO: Xử lý khi nhấn vào biểu tượng quay trở về
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Homepage(),
              ),
            );
          },
        ),
        title: Text("Mục đã lưu"),
      ),
      body: ListView.builder(
        itemCount: sampleNotes.length,
        itemBuilder: (context, index) {
          Note movie = sampleNotes[index];
          return Card(
            child: ListTile(
              title: Text(movie.title),
              subtitle: Text(movie.chapter.toString()),
              leading: Container(
                width: 50.0,
                child: Image.asset(movie.image),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Hiển thị hộp thoại xác nhận khi người dùng nhấp vào IconButton
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Xác nhận xóa"),
                        content: Text("Bạn có chắc chắn muốn xóa không?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Đóng hộp thoại
                            },
                            child: Text("Hủy"),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                sampleNotes.removeAt(index);
                              });

                              // Thực hiện xóa ở đây
                              // Sau khi xóa, bạn có thể cập nhật giao diện hoặc thực hiện các tác vụ khác
                              // ...

                              Navigator.of(context).pop(); // Đóng hộp thoại
                            },
                            child: Text("Xóa"),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => chitiet(movie)));
              },
            ),
          );
        },
      ),
    );
  }
}
