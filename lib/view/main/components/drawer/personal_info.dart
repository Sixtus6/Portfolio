import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '(+234) 9150619769'),
        AreaInfoText(title: 'Email', text: 'xystuseton@gmail.com '),
        AreaInfoText(title: 'Twitter', text: '@6ixtus6'),
        AreaInfoText(title: 'Github', text: '@sixtus6'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
