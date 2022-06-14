import 'package:flutter/material.dart';

import '../components/dashboard_header.dart';
import '../components/transactions.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff00014f),
            Color(0xff3a6073),
          ],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const DashboardHeader(),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                color: const Color(0xfff5f5f5),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Transactions(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
