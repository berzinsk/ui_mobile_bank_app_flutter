import 'package:flutter/material.dart';

import '../components/profile/profile_header.dart';
import '../components/profile/menu.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            const Menu(),
            Container(
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
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromHeight(40)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Color(0xffee1111))),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xfff5f5f5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
