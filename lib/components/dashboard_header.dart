import 'package:flutter/material.dart';

import './dashboard_header_action.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              const Image(
                width: 36,
                height: 36,
                image:
                    AssetImage('asset/images/profile_picture_placeholder.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Karlis',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        'Personal Account',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              children: const [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text('Rp 2.000.000',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HeaderAction(
                  title: 'Transfer',
                  imageName: 'icon-transfer',
                ),
                HeaderAction(
                  title: 'Withdraw',
                  imageName: 'icon-withdraw',
                ),
                HeaderAction(
                  title: 'Top Up',
                  imageName: 'icon-top-up',
                ),
                HeaderAction(
                  title: 'More',
                  imageName: 'icon-more-settings',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
