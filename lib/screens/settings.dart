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
          children: const [
            ProfileHeader(),
            Menu(),
          ],
        ),
      ),
    );
  }
}
