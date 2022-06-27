import 'package:flutter/material.dart';

const listItems = [
  'Account',
  'Debit Card Settings',
  'Security',
  'Language',
  'FAQ',
  'Help Center',
];

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      width: MediaQuery.of(context).size.width,
      color: const Color(0xfff5f5f5),
      child: SizedBox(
        height: 376,
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: 56,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(listItems[index]),
                  const Image(
                      image: AssetImage('asset/images/icon_chevron_right.png'))
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 8),
          itemCount: listItems.length,
        ),
      ),
    );
  }
}
