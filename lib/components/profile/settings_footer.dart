import 'package:flutter/material.dart';

class SettingsFooter extends StatelessWidget {
  const SettingsFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 30, right: 30, top: 16),
      color: const Color(0xfff5f5f5),
      child: TextButton(
        child: const Text(
          'Log out',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xffee1111),
          ),
        ),
        onPressed: () {},
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(const Size.fromHeight(40)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(color: Color(0xffee1111))),
          ),
        ),
      ),
    );
  }
}
