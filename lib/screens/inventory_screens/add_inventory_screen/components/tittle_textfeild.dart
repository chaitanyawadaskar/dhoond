import 'package:dhoond/utilities/core/ksizedbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/theme/ktext_theme.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild(
      {super.key,
      required this.title,
      this.controller,
      this.hintText = '',
      this.text = ''});
  final String title;
  final String text;
  final String hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: KText.r14w5,
        ),
        Row(
          children: [
            SizedBoxWidth(
              width: 30,
            ),
            Flexible(
                child: text.isNotEmpty
                    ? Text(
                        text,
                        style: KText.r14Grey,
                      )
                    : TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                            isDense: true,
                            hintText: hintText,
                            hintStyle: KText.r14Grey),
                      ))
          ],
        )
      ],
    );
  }
}
