import 'package:flutter/material.dart';
import 'trangchu.dart';
import 'BaiKiemTra.dart';

class LichSuBKTScreen extends StatelessWidget {
  List<HistoryItem> historyList = [
    HistoryItem(
      title: 'CÁCH MẠNG THÁNG TÁM 1945',
      duration: '12 phút',
      totalPoints: 70,
      totalQuestions: '20/25',
      details: 'Xem chi tiết',
      image: 'assets/images/vd1.jpg',
    ),
    HistoryItem(
      title: 'Cách mạng Tháng Tám 1945',
      duration: '15 phút',
      totalPoints: 85,
      totalQuestions: '22/25',
      details: 'Xem chi tiết',
      image: 'assets/images/img3.png',
    ),
    HistoryItem(
      title: 'Chiến dịch Điện Biên Phủ 1954',
      duration: '15 phút',
      totalPoints: 85,
      totalQuestions: '22/25',
      details: 'Xem chi tiết',
      image: 'assets/images/img4.png',
    ),
    HistoryItem(
      title: 'Chiến dịch Hồ Chí Minh 1975',
      duration: '15 phút',
      totalPoints: 85,
      totalQuestions: '22/25',
      details: 'Xem chi tiết',
      image: 'assets/images/img5.png',
    ),
    HistoryItem(
      title: 'Triều đại nhà Lý 1009-1225',
      duration: '15 phút',
      totalPoints: 85,
      totalQuestions: '22/25',
      details: 'Xem chi tiết',
      image: 'assets/images/img6.png',
    ),
    HistoryItem(
      title: 'Trận Thành cổ Quảng Trị 1972',
      duration: '15 phút',
      totalPoints: 85,
      totalQuestions: '22/25',
      details: 'Xem chi tiết',
      image: 'assets/images/img7.png',
    ),
    // Thêm các bài kiểm tra khác
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Lịch sử bài kiểm tra',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: historyList.length,
              itemBuilder: (BuildContext context, int index) {
                return HistoryCard(historyItem: historyList[index]);
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final HistoryItem historyItem;

  HistoryCard({required this.historyItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            historyItem.image,
            width: double.maxFinite,
            height: 140,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              historyItem.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tổng thời gian: ${historyItem.duration}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tổng điểm: ${historyItem.totalPoints}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tổng số câu: ${historyItem.totalQuestions}'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  // TODO: Xử lý khi nút "Làm lại" được nhấn
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => BaiKiemTraScreen(),
                    ),
                  );
                },
                child: Text('Làm lại'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HistoryItem {
  final String title;
  final String duration;
  final int totalPoints;
  final String totalQuestions;
  final String details;
  final String image;

  HistoryItem({
    required this.title,
    required this.duration,
    required this.totalPoints,
    required this.totalQuestions,
    required this.details,
    required this.image,
  });
}
