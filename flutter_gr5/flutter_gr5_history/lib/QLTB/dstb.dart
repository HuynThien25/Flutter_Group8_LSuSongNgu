import 'package:flutter/material.dart';
import 'notification.dart';
import 'notification_detailPage.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<MyNotification> notifications = [
    ExamNotification(
      title: 'Kiểm Tra Kiến Thức Lịch Sử Bài 4',
      body: 'Bạn có một bài kiểm tra lịch sử vào ngày 20/11/2023...',
    ),
    RememberExam(
      title: 'Nhắc Nhở Học Tập',
      body:
          'Hãy ôn tập về các kiến thức lịch sử trước buổi kiểm tra ngày mai...',
    ),
    CongratulationNotification(
      title: 'Chúc Mừng Thành Tích!',
      body: 'Bạn đã hoàn thành bài số 2 với số điểm 9/10...',
      score: 9,
    ),
    ExamNotification2(
      title: 'Kiểm Tra Kiến Thức Lịch Sử Bài 1',
      body: 'Bạn có một bài kiểm tra lịch sử vào ngày 2/11/2023...',
    ),
    CongratulationNotification2(
      title: 'Chúc Mừng Thành Tích!',
      body: 'Bạn đã học xong tất cả chương trình Bài 1...',
    ),
    RememberExam2(
      title: 'Nhắc Nhở Học Tập',
      body: 'Hãy hoàn thành tiến độ của bài Cách Mạng Tháng 8 1945...',
    ),
    MyNotification(
      title: 'Cập nhập ứng dụng',
      body: 'Phiên bản mới của ứng dụng đã sẵn sàng hãy cập nhập',
    ),
  ];

  bool isNotificationOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông báo', style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Switch(
              value: isNotificationOn,
              onChanged: (bool value) {
                setState(() {
                  isNotificationOn = value;
                  _showToggleNotificationConfirmation(value);
                });
              },
              activeColor: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                MyNotification notification = notifications[index];
                return ListTile(
                  key: ValueKey(notification.title),
                  title: Text(notification.title),
                  subtitle: Text(notification.body),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationDetailsPage(
                          notification: notification,
                        ),
                      ),
                    );
                  },
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Hiển thị pop-up
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Center(child: Text('Xoá thông báo này!')),
                            actions: [
                              TextButton(
                                child: Text('Xác Nhận'),
                                onPressed: () {
                                  // Xoá thông báo khỏi danh sách
                                  setState(() {
                                    notifications.removeAt(index);
                                  });
                                  Navigator.pop(context);
                                  // Hiển thị pop-up thông báo đã xoá thành công
                                  _showDeletedConfirmation();
                                },
                              ),
                              TextButton(
                                child: Text('Hủy'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
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

  void _showDeletedConfirmation() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(child: Text('Thông báo')),
          contentPadding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0), // Điều chỉnh kích thước của popup
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Đã xoá thông báo thành công!'),
              Icon(Icons.check, color: Color(0xff1a65dd), size: 48.0),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Đóng'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showToggleNotificationConfirmation(bool isToggleOn) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(child: Text('Thông báo')),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                isToggleOn ? 'Đã bật thông báo!' : 'Đã tắt thông báo!',
                style: TextStyle(color: isToggleOn ? Colors.green : Colors.red),
              ),
              Icon(
                isToggleOn ? Icons.notifications : Icons.notifications_off,
                color: Color(0xff1a65dd),
                size: 48.0,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Đóng'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  String _formatNotificationTimeDifference(Duration difference) {
    int minutes = difference.inMinutes;
    if (minutes < 1) {
      return 'Vừa xong';
    } else if (minutes < 60) {
      return '$minutes phút trước';
    } else {
      int hours = difference.inHours;
      if (hours < 24) {
        return '$hours giờ trước';
      } else {
        int days = difference.inDays;
        return '$days ngày trước';
      }
    }
  }
}
