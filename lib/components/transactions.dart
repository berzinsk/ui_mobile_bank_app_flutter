import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Transactions',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff151d3b),
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TransactionItem(
                  text: 'All',
                  selected: true,
                ),
                TransactionItem(
                  text: 'Transfer',
                  selected: false,
                ),
                TransactionItem(
                  text: 'Withdraw',
                  selected: false,
                ),
                TransactionItem(
                  text: 'Top Up',
                  selected: false,
                ),
                TransactionItem(
                  text: 'More',
                  selected: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String text;
  final bool selected;

  const TransactionItem({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff151d3b), width: 0.2),
        borderRadius: BorderRadius.circular(4),
        color: selected ? Color(0xff151d3b) : Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: selected == true ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
