import 'package:flutter/material.dart';
import 'DanhsachNVLS.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XembaihocScreen(),
    );
  }
}

class XembaihocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // back và lưu
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 16, right: 16, bottom: 16),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => DanhsachNVLSScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 270),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Container(
                              height: 40,
                              child: Center(
                                child: Text(
                                  'Bài học đã được thêm vào danh sách lưu',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF495ECA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      child: Text(
                        'Lưu',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Hình tiêu đề
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/tieusuhaibatrung.png',
                  width: 350,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Đoạn 1
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC8D5FF),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: 350,
                    height: 120,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Trưng Trắc, Trưng Nhị là hai chị em sinh đôi (sinh vào ngày mồng một tháng tám năm Giáp Tuất, năm 14 sau công nguyên), là con gái của Lạc tướng huyện Mê Linh (người đứng đầu bộ lạc huyện Mê Linh, thuộc tỉnh Vĩnh Phúc ngày nay) thuộc dòng dõi Hùng Vương. Mẹ là bà Man Thiện.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      child: PopupMenuButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF495ECA),
                        ),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'item1',
                              child: Text(
                                'Trung Trac and Trung Nhi are twin sisters (born on the first day of the eighth month in the year Giap Tuat, 14 AD), the daughters of the Lac general of Me Linh district (head of the Me Linh district tribe, belonging to the Me Linh district). Vinh Phuc province today) belongs to the Hung King lineage. Mother is Mrs. Man Thien.',
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Đoạn 2
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC8D5FF),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: 350,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Hai Bà mồ côi cha sớm nhưng được mẹ quan tâm nuôi nấng, dạy cho nghề trồng dâu, nuôi tằm, dạy con lòng yêu nước, rèn luyện sức khoẻ, rèn luyện võ nghệ. Chồng bà Trưng Trắc là Thi Sách, con trai Lạc tướng huyện Chu Diên (tỉnh Hà Tây ngày nay).',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      child: PopupMenuButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF495ECA),
                        ),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'item1',
                              child: Text(
                                'The two women lost their father early but were raised by their mother, teaching them mulberry growing, raising silkworms, teaching their children patriotism, exercising health, and practicing martial arts. Ms. Trung Trac\'s husband was Thi Sach, son of General Lac of Chu Dien district (present-day Ha Tay province).',
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Đoạn 3
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC8D5FF),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: 350,
                    height: 130,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Trong sử sách, hai bà được biết đến như những thủ lĩnh khởi binh chống lại chính quyền đô hộ của Đông Hán, lập ra một quốc gia với kinh đô tại Mê Linh và Trưng Trắc tự phong là Nữ vương. Thời kì của hai bà xen giữa Bắc thuộc lần 1 và Bắc thuộc lần 2 trong lịch sử Việt Nam. Đại Việt sử ký toàn thư coi Trưng Trắc là một vị vua trong lịch sử, với tên gọi Trưng Nữ vương.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      child: PopupMenuButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF495ECA),
                        ),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'item1',
                              child: Text(
                                'In history books, the two women are known as the leaders who rose up against the colonial government of Eastern Han, founded a country with the capital at Me Linh and Trung Trac proclaimed herself Queen. The period of the two women alternated between the first period of Northern domination and the second period of Northern domination in Vietnamese history. Complete History of Dai Viet considers Trung Trac to be a historical king, with the name Trung Queen.',
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Đoạn 4
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC8D5FF),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: 350,
                    height: 130,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '- Nguyên nhân trực tiếp:\n+ Chế độ cai trị hà khắc của chính quyền nhà Hán ở phương Bắc: Sự áp bức, bóc lột, chèn ép nhân dân cùng với các chính sách đồng hóa người Việt tại Giao Chỉ.\n+ Sự tham lam, tàn bạo, tăng phụ dịch và thuế khóa của quan Tô Định khiến người dân sống lầm than, dẫn đến sự mâu thuẫn vô cùng gay gắt giữa nhân dân, các quan viên người Việt với chế độ thống trị của nhà Hán.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      child: PopupMenuButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF495ECA),
                        ),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'item1',
                              child: Text(
                                '- Nguyên nhân trực tiếp:\n+ Chế độ cai trị hà khắc của chính quyền nhà Hán ở phương Bắc: Sự áp bức, bóc lột, chèn ép nhân dân cùng với các chính sách đồng hóa người Việt tại Giao Chỉ.\n+ Sự tham lam, tàn bạo, tăng phụ dịch và thuế khóa của quan Tô Định khiến người dân sống lầm than, dẫn đến sự mâu thuẫn vô cùng gay gắt giữa nhân dân, các quan viên người Việt với chế độ thống trị của nhà Hán.',
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
