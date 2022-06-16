import 'package:flutter/material.dart';

class HeaderAction extends StatelessWidget {
  final String title;
  final String imageName;

  const HeaderAction({
    Key? key,
    required this.title,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          width: 40,
          height: 40,
          child: Image(image: AssetImage('asset/images/$imageName.png')),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
