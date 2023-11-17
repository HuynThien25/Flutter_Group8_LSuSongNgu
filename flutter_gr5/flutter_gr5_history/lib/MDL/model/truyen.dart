class Note {
  int id;
  String title;
  String title1;
  String chapter;
  String chapter1;
  String content;
  String image;


  Note({
    required this.id,
    required this.title,
    required this.title1,
    required this.chapter,
    required this.chapter1,
    required this.content,
    required this.image,

  });
}


List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Hùng Vương thứ XVIII',
      title1: 'Đinh Bộ Lĩnh',
    chapter: '5/10 chapter          Time:10/10/2023',
    chapter1: '10/10 chapter',
    content:
'Hùng Vương sai con rể là Nguyễn Tuấn (hay Nguyễn Tùng, có thuyết đồng nhất với Sơn Tinh) để chống Thục. Nguyễn Tuấn cùng với hai tướng là Cao Sơn và Quý Minh đã ngăn chặn được nhiều cuộc tấn công của Thục Phán, chặn đứng quân Thục ở ải Nam Sơn.Cuộc chiến lâm vào khó khăn cho đến khi quân đội của nhà Tần (Trung Quốc) do Đồ Thư chủ soái đánh bại người Âu Việt ở phía vùng Lưỡng Quảng của thủ lĩnh Dịch Hu Tống và tiến công vào vùng lãnh thổ của người Âu Việt và Lạc Việt thuộc Việt Nam ngày nay...\n--------------------------------------------------------------\nHung Vuong sent his son-in-law, Nguyen Tuan (or Nguyen Tung, whose theory is identical to Son Tinh) to fight against Thuc. Nguyen Tuan, along with two generals Cao Son and Quy Minh, prevented many attacks by Thuc Phan, stopping the Shu army at the Nam Son pass. The war fell into difficulty until the army of the Qin Dynasty (China) ) led by Do Thu defeated the Au Viet people in the Luong Quang region under leader Dich Hu Tong and attacked the territories of the Au Viet and Lac Viet people in todays Vietnam.',
      image: 'assets/images/vuahung.jpg'
  ),
  Note(
    id: 1,
    title: 'Tiểu sử Hai Bà Trưng',
      title1: 'Trưng Trắc',
      chapter: '8/10 chapter          Time:15/10/2023',
      chapter1: '10/10 chapter',
    content:
        'Trưng Trắc, Trưng Nhị là 2 chị em con gái lạc tướng huyện Mê Linh (Vĩnh Phúc) thuộc dòng dõi Hùng Vương. Trưng Trắc là một phụ nữ đảm đang, dũng cảm. Chồng bà là Thi Sách con trai lạc tướng huyện Chu Diên (Nam Hà) cũng là một người con yêu nước và có chí khí quật cường. Hai gia đình lạc tướng với sự ủng hộ của nhân dân đang cùng nhau liên kết với các thủ lĩnh khác chuẩn bị cùng nổi dậy lật đổ ách đô hộ nhà Hán. Đúng lúc đó,Thi Sách bị viên Thái Thú Tô Định bày mưu giết hại. Hành vi bạo ngược của Tô Định không làm Trưng Trắc nhụt chí. Hai Bà Trưng  quyết tâm tiến hành cuộc khởi nghĩa để đền nợ nước, trả thù nhà.\n--------------------------------------------------------------\nTrung Trac and Trung Nhi are two sisters, daughters of fallen generals of Me Linh district (Vinh Phuc) belonging to the Hung Vuong lineage. Trung Trac is a brave woman. Her husband, Thi Sach, son of former general Chu Dien district (Nam Ha), is also a patriot and has strong will. The two generals families, with the support of the people, are joining forces with other leaders to prepare to rebel together to dominate the Han Dynasty. At that moment, Thi Sach was introduced to the murderer by member of the Crown Prince To Dinh. To Dinhs tyrannical behavior did not discourage Trung Trac. The Trung sisters were determined to carry out an uprising to clear the countrys debt and take revenge on their family.',
    image: 'assets/images/haibatrung.jpg'

  ),
  Note(
    id: 2,
    title: 'Khởi nghĩa chống Nam Hán lần 1',
      title1: 'Ngô Quyền',
      chapter: '2/10 chapter          Time:17/10/2023',
      chapter1: '10/10 chapter',
    content:
'Năm 937, Đình Nghệ bị nha tướng Kiều Công Tiễn giết hại để cướp ngôi Tiết độ sứ. Con rể và là một tướng khác của Đình Nghệ là Ngô Quyền bèn tập hợp lực lượng ra đánh Công Tiễn để trị tội phản chủ. Kiều Công Tiễn sợ hãi, bèn sai người sang cầu cứu Nam Hán. Vua Nam Hán là Lưu Cung nhân cơ hội đó bèn quyết định đánh Tĩnh Hải quân lần thứ hai. Lưu Cung cho rằng Dương Đình Nghệ qua đời thì Tĩnh Hải quân không còn tướng giỏi, bèn phong cho con trai thứ 9 là Lưu Hoằng Tháo làm "Bình Hải tướng quân" và "Giao Chỉ vương", thống lĩnh thủy quân.\n--------------------------------------------------------------\nIn 937, Dinh Nghe was killed by general Kieu Cong Tien to usurp the throne of Tiet Do. Dinh Nghes son-in-law and another general, Ngo Quyen, gathered forces to attack Cong Tien to punish him for treason. Kieu Cong Tien was scared, so he sent someone to ask for help from Nam Han. The Southern Han King, Luu Cung, took that opportunity and decided to attack Tinh Hai Quan a second time. Luu Cung believed that with Duong Dinh Nghes death, Tinh Hai Quan no longer had good generals, so he appointed his 9th son, Luu Hoang Thao, to be "General Binh Hai" and "Giao Chi Vuong", commander of the navy.',
      image: 'assets/images/namhan.jpg'

  ),
  Note(
    id: 3,
    title: 'Khởi nghĩa chống Nam Hán lần 2',
      title1: 'Quang Trung',
      chapter: '7/10 chapter          Time:20/10/2023',
      chapter1: '10/10 chapter',
    content:
    'Từ khi nhà Đông Hán thành lập, Hán Quang Vũ Đế tuy chưa dẹp xong các lực lượng cát cứ phương Bắc nhưng vẫn quan tâm tới miền Nam. Tích Quang, Nhâm Diên làm Thái thú Giao Chỉ và Thái thú Cửu Chân của nhà Hán, ra sức thực hiện chính sách đồng hóa, thay đổi tập tục từ hôn nhân đến y phục, lễ nghĩa của người Việt bắt theo người Hán, dẫn đến xúc phạm nặng nề tới phong tục cũ nhiều đời của người Việt.\n--------------------------------------------------------------\nSince the establishment of the Eastern Han Dynasty, Emperor Quang Vu of Han, although he had not completely suppressed the forces of the North, was still interested in the South. Tich Quang and Nham Dien became the Governor of Giao Chi and the Governor of Cuu Chan of the Han Dynasty, trying to implement the policy of assimilation, changing customs from marriage to clothing and etiquette of the Vietnamese people to follow the Han people, leading to seriously offend the generations-old customs of the Vietnamese people.',
      image: 'assets/images/namhan2.jpg'

  ),
  Note(
    id: 4,
    title: 'Ngô Quyền trận thắng Bạch Đằng',
      title1: 'Nguyễn Huệ',
      chapter: '6/10 chapter          Time:21/10/2023',
      chapter1: '10/10 chapter',
    content:
    'Trận Bạch Đằng, một trận đánh quyết định lịch sử của dân tộc Việt Nam, diễn ra vào một ngày cuối đông năm 938 trên sông Bạch Đằng ở cửa biển và hạ lưu. Đoàn chiến thuyền do Hoàng Cao chỉ huy vừa vượt biển tiến vào cửa ngõ Bạch Đằng thì nước triều bắt đầu xuống. Tuy nhiên, lúc này, đội hình quân giặc đã lọt vào trận địa mai phục của quân ta, khiến cho tình hình chiến đấu trở nên khó khăn hơn bao giờ hết.\n--------------------------------------------------------------\nThe Battle of Bach Dang, a decisive battle in the history of the Vietnamese people, took place on a late winter day in 938 on the Bach Dang River at the estuary and downstream. The fleet of warships commanded by Hoang Cao had just crossed the sea and entered Bach Dang gateway when the tide began to go down. However, at this time, the enemy army had entered the ambush site of our army, making the fighting situation more difficult than ever.',

      image: 'assets/images/bachdang.jpg'
  ),
  Note(
    id: 5,
    title: 'Điện Biên Phủ trên không',
      title1: 'Chiến dịch Điện Biên Phủ',
      chapter: '4/10 chapter          Time:23/10/2023',
      chapter1: '10/10 chapter',
    content:
'Thủ đô Hà Nội - trung tâm của hậu phương lớn ở miền Bắc - có vai trò đặc biệt quan trọng, không chỉ chi viện sức người, sức của…, mà còn “chia lửa” với miền Nam ruột thịt. Vì thế, việc bảo vệ Thủ đô Hà Nội là một nhiệm vụ rất quan trọng của sự nghiệp xây dựng chế độ xã hội chủ nghĩa ở miền Bắc nói riêng, sự nghiệp kháng chiến chống Mỹ, cứu nước nói chung.\n--------------------------------------------------------------\nThe capital Hanoi - the center of a large rear base in the North - plays a particularly important role, not only supporting human and material resources..., but also "sharing fire" with the South. Therefore, protecting the capital Hanoi is a very important task of the cause of building a socialist regime in the North in particular, and the cause of resistance against the US and national salvation in general.',
      image: 'assets/images/dienbienphu.jpg'
  ),
  Note(
      id: 6,
      title: 'Quang Trung',
      title1: 'Khởi nghĩa Tây Sơn',
      chapter: '9/10 chapter          Time:25/10/2023',
      chapter1: '10/10 chapter',
      content:
'Nguyễn Huệ và 2 người anh em của ông, được biết đến với tên gọi Tây Sơn tam kiệt, là những lãnh đạo của cuộc khởi nghĩa Tây Sơn đã chấm dứt cuộc nội chiến Trịnh – Nguyễn phân tranh giữa hai tập đoàn phong kiến Trịnh ở phía bắc và Nguyễn ở phía nam, lật đổ hai tập đoàn này cùng Nhà Hậu Lê, chấm dứt tình trạng phân biệt Đàng Trong – Đàng Ngoài kéo dài suốt 2 thế kỷ.\n--------------------------------------------------------------\nNguyen Hue and his two brothers, known as the Tay Son Tam Kiet, were the leaders of the Tay Son uprising that ended the Trinh - Nguyen civil war between the two Trinh feudal groups in in the north and Nguyen in the south, overthrowing these two groups and the Later Le Dynasty, ending the distinction between Dang Trong and Dang Ngoai that lasted for 2 centuries.',
      image: 'assets/images/QuangTrung.jpg'

  ),
  Note(
      id: 7,
      title: 'Lê Đại Hành',
      title1: 'Đại tướng Võ Nguyên Giáp',
      chapter: '9/10 chapter          Time:25/10/2023',
      chapter1: '10/10 chapter',
      content:
'Khi còn thiếu thời ông làm quan cho nhà Đinh dưới thời Đinh Tiên Hoàng, đến chức Thập đạo tướng quân. Năm 979, viên quan Đỗ Thích giết vua Đinh Tiên Hoàng và người con Đinh Liễn, người con thứ tên Đinh Toàn nối ngôi lúc 6 tuổi, Lê Đại Hành làm Nhiếp chính, xưng là Phó vương, nắm đại quyền triều đình\n--------------------------------------------------------------\nWhen he was young, he worked as a mandarin for the Dinh dynasty under Dinh Tien Hoang, reaching the position of Thap Dao general. In 979, official Do Thich killed King Dinh Tien Hoang and his son Dinh Lien. The second son Dinh Toan succeeded the throne at the age of 6. Le Dai Hanh became Regent, proclaimed Viceroy, and held great power at the court.',
      image: 'assets/images/ledaihanh.jpg'

  ),
  Note(
      id: 8,
      title: 'Trận Như Nguyệt',
      title1: 'Cách mạng Tháng tám',
      chapter: '10/10 chapter          Time:25/10/2023',
      chapter1: '10/10 chapter',
      content:
'Trận Như Nguyệt là một trận đánh lớn diễn ra ở một khúc sông Như Nguyệt (hay sông Cầu) vào năm 1077, là trận đánh có tính quyết định của cuộc Chiến tranh Tống-Việt, 1075-1077, và là trận đánh cuối cùng của nhà Tống trên đất Đại Việt. \n--------------------------------------------------------------\nThe Battle of Nhu Nguyet was a major battle that took place at a section of Nhu Nguyet River (or Cau River) in 1077, was the decisive battle of the Song-Viet War, 1075-1077, and was the final battle of the Song Dynasty in Dai Viet land.',
      image: 'assets/images/trannhunguyet.jpg'

  ),
  Note(
      id: 9,
      title: 'Đinh Tiên Hoàng',
      title1: 'Tiểu sử',
      chapter: '9/10 chapter          Time:25/10/2023',
      chapter1: '10/10 chapter',
      content:
'Đinh Tiên Hoàng (chữ Hán: 丁先皇; 22 tháng 3 năm 924 - tháng 10 năm 979), tên húy là Đinh Bộ Lĩnh (丁部領)), là vị hoàng đế sáng lập triều đại nhà Đinh, nước Đại Cồ Việt trong lịch sử Việt Nam. Ông là người có công đánh dẹp loạn 12 sứ quân, thống nhất giang sơn và trở thành hoàng đế đầu tiên của Việt Nam sau thời Bắc thuộc.\n--------------------------------------------------------------\nDinh Tien Hoang (Chinese: 丁先皇; March 22, 924 - October 979), surnamed Dinh Bo Linh (丁部領)), was the founder of the Dinh dynasty, Dai Co country. Viet in Vietnamese history. He was instrumental in defeating the rebellion of 12 warlords, unifying the country and becoming the first emperor of Vietnam after the Northern domination.',
      image: 'assets/images/dinhtienhoang.jpg'

  ),
  Note(
      id: 10  ,
      title: 'Lý Nam Đế',
      title1: 'Tiểu sử Đinh Tiên Hoàng',
      chapter: '7/10 chapter          Time:25/10/2023',
      chapter1: '10/10 chapter',
      content:
'Nhiều sách sử cho biết tổ tiên của Lý Nam Đế là người tỉnh Sơn Tây vào cuối thời Tây Hán thì tránh sang ở Giao Châu để lánh nạn loạn Vương Mãng. Qua chín đời, đến đời Lý Bí thì dòng họ Lý đã ở Việt Nam được hơn năm thế kỷ. Chính sử Trung Quốc đều coi Lý Bí là "Giao Châu thổ nhân".\n--------------------------------------------------------------\nMany history books say that Ly Nam Des ancestors were from Son Tay province at the end of the Western Han Dynasty and then went to Giao Chau to escape Vuong Mangs rebellion. After nine generations, by the time of Ly Bi, the Ly family had been in Vietnam for more than five centuries. Chinese official history all considers Ly Bi to be "the Earthman of Giao Chau".',
      image: 'assets/images/lynamde.png'

  ),

];
