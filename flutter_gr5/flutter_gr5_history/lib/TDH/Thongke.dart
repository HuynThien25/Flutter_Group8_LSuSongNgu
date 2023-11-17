import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ThongKePage extends StatefulWidget {
  @override
  _ThongKePageState createState() => _ThongKePageState();
}

class _ThongKePageState extends State<ThongKePage> {
  String selectedButton = 'Bài đang học';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thống Kê'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton('Bài Đang Học'),
                _buildButton('Bài Đã Học'),
                _buildButton('Thống Kê'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatBox('Tổng Bài Học', '100 Lessons'),
                _buildStatBox('Bài Đang Học', '30 Lessons'),
                _buildStatBox('Bài Đã Học', '25 Lessons'),
              ],
            ),
            SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 1.5,
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: _buildPieSections(),
                  borderData: FlBorderData(show: false),
                  //sectionsBorderColor: Colors.transparent,
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildLegend(),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedButton = text;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: selectedButton == text ? Colors.blue : Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selectedButton == text ? Colors.white : Colors.grey,
        ),
      ),
    );
  }

  Widget _buildStatBox(String title, String content) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white, // đổi màu
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.pink), // Viền màu hồng
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            content,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _buildPieSections() {
    return [
      PieChartSectionData(
        color: Color.fromARGB(255, 40, 36, 171),
        value: 30,
        title: '30%',
        radius: 40,
        titleStyle: TextStyle(color: Colors.white),
      ),
      PieChartSectionData(
        color: Color.fromARGB(255, 232, 68, 23),
        value: 25,
        title: '25%',
        radius: 40,
        titleStyle: TextStyle(color: Colors.white),
      ),
      PieChartSectionData(
        color: Color.fromARGB(255, 20, 164, 3),
        value: 45,
        title: '45%',
        radius: 40,
        titleStyle: TextStyle(color: Colors.white),
      ),
    ];
  }

  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLegendItem(Color.fromARGB(255, 40, 36, 171), 'Bài Đang Học'),
        _buildLegendItem(Color.fromARGB(255, 232, 68, 23), 'Bài Đã Học'),
        _buildLegendItem(const Color.fromARGB(255, 20, 164, 3), 'Bài chưa học'),
      ],
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
        SizedBox(width: 5),
        Text(text),
        SizedBox(width: 20),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ThongKePage(),
  ));
}
