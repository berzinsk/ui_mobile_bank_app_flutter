import 'package:flutter/material.dart';

class SettingsMenuItem extends StatelessWidget {
  final String text;
  const SettingsMenuItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          const Image(image: AssetImage('asset/images/icon_chevron_right.png'))
        ],
      ),
    );
  }
}
