import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Text(
              'Profile',
              style: TextStyle(
                color: Color(0xff151d3b),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/card.png'),
                    fit: BoxFit.cover),
              ),
              width: 315,
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Danish Suryo W.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            '35-070-0003-3256-2022',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Image(
                                  image:
                                      AssetImage('asset/images/copy-icon.png'),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Copy',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)),
                                ),
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size.zero),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        'Exp. 12/25',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4), fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
