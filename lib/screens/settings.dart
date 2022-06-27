import 'package:flutter/material.dart';

import '../components/profile/profile_header.dart';
import '../components/profile/menu.dart';
import '../components/profile/settings_footer.dart';

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
            const SettingsFooter(),
            Expanded(
              child: Container(
                color: const Color(0xfff5f5f5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
