import 'package:flutter/material.dart';

class DDLWidget extends StatefulWidget {
  final int maxLines;
  final String label;

  const DDLWidget({
    Key? key,
    this.maxLines = 1,
    required this.label,
  }) : super(key: key);

  @override
  _DDLWidgetState createState() => _DDLWidgetState();
}

class _DDLWidgetState extends State<DDLWidget> {
  late String valueChoose;
  List<String> listItem = ["Nữ", "Nam"];

  late final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    valueChoose = listItem.first; // Khởi tạo giá trị mặc định
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontSize: 14, color: Color(0xFF78828A)),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            width: 350,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border.all(
                color: Color(0xFF495ECA), // Màu của viền
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  hint: Text("Select Item"),
                  dropdownColor: Colors.white,
                  underline: SizedBox(), // bỏ underline cho ddl
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  style:
                      TextStyle(color: Colors.black, fontSize: 16), // của item
                  value: valueChoose,
                  items: listItem.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      );
}
