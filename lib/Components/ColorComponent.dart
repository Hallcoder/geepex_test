import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class ColorComponent extends StatelessWidget{
//  const  ColorComponent({Key? key, required  this.color}):super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//
//   }
//
// }

class ColorComponent extends StatefulWidget {
  const ColorComponent({Key? key, required this.color, required this.update}) : super(key: key);
  final Color color;
  final Function update;
  @override
  State<ColorComponent> createState() => _ColorComponentState();
}

class _ColorComponentState extends State<ColorComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        widget.update(widget.color);
        print("Hoola");
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                color:widget.color,
                borderRadius: BorderRadius.circular(50.0)
            )
        ),
      ),
    );
  }
}
