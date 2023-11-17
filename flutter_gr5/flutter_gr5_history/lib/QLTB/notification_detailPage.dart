import 'package:flutter/material.dart';
import 'package:flutter_gr5_history/QLBKT/BaiKiemTra.dart';
import 'package:flutter_gr5_history/QLBKT/LichSuBKT.dart';
import 'notification.dart' as my_notification;

class NotificationDetailsPage extends StatelessWidget {
  final my_notification.MyNotification notification;

  const NotificationDetailsPage({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quay Lại', style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Tiêu đề: ${notification.title}',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 60),
          // Hiển thị nội dung thông báo chi tiết và dài hơn từ trang main.dart

          if (notification is my_notification.ExamNotification) ...[
            Text(
              'Chi tiết thông tin:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bạn có một bài kiểm tra lịch sử vào ngày 20/11/2023 hãy ôn tập thật kỹ lưỡng để có kết quả tốt hơn nhé.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              // 'Ngày kiểm tra: ${(notification as my_notification.ExamNotification).examDate}',
              'Thời gian thông báo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '19:29 19/11/2023',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Khoảng cách giữa nội dung và nút

            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn, quay về trang chính
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: Text('Làm bài tập ngay'),
            ),
          ] else if (notification
              is my_notification.CongratulationNotification) ...[
            Text(
              'Chi tiết thông tin:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bạn đã hoàn thành bài số 2 với điểm số 9/10. Chúc mừng bạn hãy giữ vững phong độ và giành những điểm số cao hơn',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              // 'Ngày kiểm tra: ${(notification as my_notification.ExamNotification).examDate}',
              'Thời gian thông báo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '10:11 19/11/2023',
              style: TextStyle(fontSize: 16),
            ),

            // Bạn có thể sử dụng body hoặc thêm giá trị mặc định cho additionalInfo
          ] else if (notification
              is my_notification.CongratulationNotification2) ...[
            Text(
              'Chi tiết thông tin:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bạn đã học xong tất cả chương trình trong bài 1. Hãy ôn lại thật kỹ lưỡng hằng ngày và làm các bài kiểm tra thường xuyên nhé.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              // 'Ngày kiểm tra: ${(notification as my_notification.ExamNotification).examDate}',
              'Thời gian thông báo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '10:11 19/11/2023',
              style: TextStyle(fontSize: 16),
            ),
          ] else if (notification is my_notification.RememberExam) ...[
            Text(
              'Chi tiết thông tin:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Hãy ôn tập về các kiến thức lịch sử quan trọng trước buổi kiểm tra ngày mai. Đọc tất cả các mốc lịch sử quan trọng trong bài Cách Mạng Tháng Tám.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              // 'Ngày kiểm tra: ${(notification as my_notification.ExamNotification).examDate}',
              'Thời gian thông báo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '12:11 19/11/2023',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Khoảng cách giữa nội dung và nút

            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn, quay về trang chính
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Ôn tập ngay'),
            ),
          ] else if (notification
              is my_notification.CongratulationNotification2) ...[
            Text(
              'Chi tiết thông tin:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bạn đã học xong tất cả chương trình trong bài 1. Hãy ôn lại thật kỹ lưỡng hằng ngày và làm các bài kiểm tra thường xuyên nhé.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              // 'Ngày kiểm tra: ${(notification as my_notification.ExamNotification).examDate}',
              'Thời gian thông báo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '10:11 19/11/2023',
              style: TextStyle(fontSize: 16),
            ),
          ] else if (notification is my_notification.RememberExam2) ...[
            Text(
              'Chi tiết thông tin:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Hãy hoàn thành tất cả tiến độ của bài Cách Mạng Tháng 8 1945. Những dữ kiện lịch sử quan trọng cần được khám phá.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              // 'Ngày kiểm tra: ${(notification as my_notification.ExamNotification).examDate}',
              'Thời gian thông báo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '14:11 17/11/2023',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Khoảng cách giữa nội dung và nút

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => BaiKiemTraScreen(),
                  ),
                );
              },
              child: Text('Tiếp tục học'),
            ),
          ] else if (notification is my_notification.ExamNotification2) ...[
            Text(
              'Chi tiết thông tin:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bạn có một bài kiểm tra lịch sử ngày 2/11/2023 hãy ôn tập thật kỹ lưỡng để có kết quả tốt hơn nhé.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              // 'Ngày kiểm tra: ${(notification as my_notification.ExamNotification).examDate}',
              'Thời gian thông báo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '05:59 19/11/2023',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Khoảng cách giữa nội dung và nút

            ElevatedButton(
              onPressed: () {
                // Xử lý khi nút được nhấn, quay về trang chính
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => BaiKiemTraScreen(),
                  ),
                );
              },
              child: Text('Làm bài tập ngay'),
            ),
          ]
        ]),
      ),
    );
  }
}
