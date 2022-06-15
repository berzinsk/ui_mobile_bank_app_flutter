import 'package:flutter/material.dart';

import '../components/dashboard_header.dart';
import '../components/transactions.dart';
import '../components/transaction_filter.dart';
import '../components/transaction_list_item.dart';
import '../model/transaction.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final Transaction transaction = Transaction(
    from: 'Karlis Berzins',
    to: 'BRI',
    amount: '150.000',
    date: DateTime.now(),
  );

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
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Transactions(),
                    ),
                    const TransactionFilter(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 10, right: 10),
                      child: TransactionListItem(transaction: transaction),
                    )
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
