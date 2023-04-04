import 'package:flutter/cupertino.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 200.0,
    );
  }
}
