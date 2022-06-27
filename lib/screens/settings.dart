import 'package:flutter/material.dart';

import '../components/profile/profile_header.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Column(
          children: const [
            ProfileHeader(),
          ],
        ),
      ),
    );
  }
}
