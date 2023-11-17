import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/QLBKT/DanhSachBKT.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      home: BaiKiemTraScreen(),
    );
  }
}

class BaiKiemTraScreen extends StatefulWidget {
  @override
  _BaiKiemTraScreenState createState() => _BaiKiemTraScreenState();
}

class _BaiKiemTraScreenState extends State<BaiKiemTraScreen> {
  int selectedAnswerIndex = -1; // Giữ vị trí của đáp án được chọn

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Xác nhận thoát'),
            content: Text('Bạn có chắc chắn muốn thoát bài làm?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('Hủy'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Xác nhận'),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () async {
                      bool confirmExit = await showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Xác nhận thoát'),
                          content: Text('Bạn có chắc chắn muốn thoát bài làm?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text('Hủy'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text('Xác nhận'),
                            ),
                          ],
                        ),
                      );

                      if (confirmExit != null && confirmExit) {
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(8.0),
                children: [
                  // Question
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Câu 5: Hai cứ điểm của địch bị quân ta tiêu diệt trong đợt 1 là gì?\n'
                      '____________________________________\n'
                      'What were the two enemy bases that our troops destroyed in the first phase?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Answer options
                  Column(
                    children: [
                      // Two answers in a row
                      Row(
                        children: [
                          buildAnswerButton('Him Lam và Điện Biên', 0),
                          buildAnswerButton('Him Lam và Điện Biên', 1),
                        ],
                      ),
                      // Two answers in a row
                      Row(
                        children: [
                          buildAnswerButton('Him Lam và Độc Lập', 2),
                          buildAnswerButton('Him Lam và Độc Lập', 3),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Submit button
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Xử lý nộp bài và hiển thị kết quả
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KetQuaScreen()),
                  );
                },
                child: Text('Nộp bài'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Custom method to create answer buttons
  Widget buildAnswerButton(String answer, int index) {
    bool isSelected = selectedAnswerIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAnswerIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.all(9.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: isSelected ? Colors.blue : Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Center(
            child: Text(
              answer,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class KetQuaScreen extends StatelessWidget {
  const KetQuaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/kqkt.jpg', // Đường dẫn tới hình ảnh
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Tổng thời gian: 15 phút',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Tổng điểm: 100',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Tổng số câu: 15/15',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => DanhSachBKTScreen(),
                          ),
                        );
                      },
                      child: const Text('Quay về trang chủ'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // TODO: Chuyển sang màn hình làm bài mới
                        Navigator.pop(context);
                      },
                      child: const Text('Làm lại'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
