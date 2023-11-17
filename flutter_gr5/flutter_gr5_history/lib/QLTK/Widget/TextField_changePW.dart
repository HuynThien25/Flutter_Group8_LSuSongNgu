import 'package:flutter/material.dart';

class TextField_changePW extends StatefulWidget {
  final int maxLines;
  final String label;
  final String text;

  //final ValueChanged<String> onChanged;

  const TextField_changePW({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.text,
    //required this.onChanged,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextField_changePW> {
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
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
          Row(
            children: [
              Text(
                widget.label,
                style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF78828A)),
              ),
              Text(
                '*',
                style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFFFF0B0B)),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          TextFormField(
            style: TextStyle(
              //fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Colors.black, // Đặt màu chữ cho nội dung trường nhập
            ),
            controller: controller,
            obscureText: true, //giấu chữ
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nhập ${widget.label.toLowerCase()}',
              hintStyle: TextStyle(color: Color(0xFFE0E0E0)),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color(0xFF495ECA),
                    width:
                        2.0), // Màu viền và độ dày viền khi TextField không được focus
                borderRadius: BorderRadius.circular(6.0),
                // Bo viền với bán kính 6.0
              ),
              //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(6),

              //),
            ),
            cursorColor: Colors.black, // đổi màu con trỏ chuột
            maxLines: widget.maxLines,
          ),
        ],
      );
}
