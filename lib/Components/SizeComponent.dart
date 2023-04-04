import 'package:flutter/material.dart';

class SizeComponent extends StatefulWidget {
  const SizeComponent({Key? key, required this.text, required this.isSelected}): super(key: key);
  final String text;
  final bool isSelected;
  @override
  State<SizeComponent> createState() => _SizeComponentState();
}
  class _SizeComponentState extends State<SizeComponent>{
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
  return !widget.isSelected ? Container(
  margin: const EdgeInsets.all(8.0),
  width: 100.0,
  height: 50.0,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(12.0),
  border: Border.all(color: Colors.lightBlueAccent),
  ),
  child: Center(
  child: Text(widget.text,textAlign: TextAlign.center,style:
  const TextStyle(
  textBaseline: TextBaseline.ideographic,
  fontWeight: FontWeight.bold
  ),),
  ),
  ):Container(
    margin: const EdgeInsets.all(8.0),
    width: 100.0,
    height: 50.0,
    decoration: BoxDecoration(
      color: Colors.cyan,
      borderRadius: BorderRadius.circular(12.0),
      border: Border.all(color: Colors.lightBlueAccent),
    ),
    child: Row(
    children: [
    const Icon(Icons.check),
    Text(widget.text,textAlign: TextAlign.center,style:
    const TextStyle(
    textBaseline: TextBaseline.ideographic,
    fontWeight: FontWeight.bold
    ),)
    ],
    ),
  );
  }

  }