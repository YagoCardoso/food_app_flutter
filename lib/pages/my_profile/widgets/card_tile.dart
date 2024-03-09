import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String img;
  final String type;
  final bool isSelected;
  final VoidCallback onTap;

  const CardTile({
    Key? key,
    required this.img,
    required this.type,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio<bool>(
        value: isSelected,
        groupValue: true,
        onChanged: (value) {
          onTap();
        },
        activeColor: Colors.green,
      ),
      title: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              img,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Text(
              type,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ],
        ),
      ),
      tileColor: isSelected ? Colors.grey[200] : null,
    );
  }
}
