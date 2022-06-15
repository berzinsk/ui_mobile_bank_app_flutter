import 'package:flutter/material.dart';

class TransactionFilter extends StatelessWidget {
  const TransactionFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Current Transaction',
            style: TextStyle(
                color: Color(0xff151d3b),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xff2b2de2),
                ),
              ),
            ),
            child: const Text(
              'See all',
              style: TextStyle(fontSize: 12, color: Color(0xff2b2de2)),
            ),
          ),
        ],
      ),
    );
  }
}
