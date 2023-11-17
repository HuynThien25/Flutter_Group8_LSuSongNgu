import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final int maxLines;
  final String label;
  final String text;
  // Thêm thuộc tính màu của con trỏ

  //final ValueChanged<String> onChanged;

  const TextFieldWidget({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.text,

    //required this.onChanged,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
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
          Text(
            widget.label,
            style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Color(0xFF78828A)),
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
            readOnly: true,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color(0xFF495ECA),
                    width:
                        2.0), // Màu viền và độ dày viền khi TextField không được focus
                borderRadius:
                    BorderRadius.circular(6.0), // Bo viền với bán kính 6.0
              ),

              //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(6),

              //),
            ),
            maxLines: widget.maxLines,
          ),
        ],
      );
}
