import 'package:flutter/material.dart';

class ToolBox extends StatelessWidget {
  const ToolBox({
    super.key,
    required this.color,
    required this.title,
    required this.icon,
    required this.onTap,
    this.iconColor,
  });

  final Color color;
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 10),
          child: ListTile(
            leading: Icon(
              icon,
              color: iconColor,
            ),
            title: Text(title),
            trailing: const Icon(Icons.navigate_next),
          ),
        ),
      ),
    );
  }
}
