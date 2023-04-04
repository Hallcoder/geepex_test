import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextComponent extends StatefulWidget {
  const TextComponent({Key? key, required this.title, required this.paragraph}) : super(key: key);
  final String title;
  final String paragraph;
  @override
  State<TextComponent> createState() => _TextComponentState();
}

class _TextComponentState extends State<TextComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(widget.title,textAlign: TextAlign.start,style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                ),)  ,
              const  Icon(Icons.arrow_drop_down_outlined, size:28.0)
      ]
            ),
          ),
          Text(widget.paragraph)
        ],
      ),
    );
  }
}
