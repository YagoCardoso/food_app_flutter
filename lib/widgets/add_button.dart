import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final double? width;
  final double? height;

  const AddButton({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 50,
      height: height ?? 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 255, 0, 0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 255, 0, 0),
            blurRadius: 8.0,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: const Icon(
        Icons.add,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}
