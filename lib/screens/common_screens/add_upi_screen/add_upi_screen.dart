import 'package:customize_button/customize_button.dart';
import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:dhoond/utilities/custom_textfeild/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/arrow_left_appbar.dart';
import '../../../utilities/gap/gap.dart';
import '../../../utilities/theme/ktext_theme.dart';

class AddUpiScreen extends StatefulWidget {
  const AddUpiScreen({super.key});

  @override
  State<AddUpiScreen> createState() => _AddUpiScreenState();
}

class _AddUpiScreenState extends State<AddUpiScreen> {
  var upiList = [];
  final upi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: KPadding.horizontal15,
          child: Column(
            children: [
              Gap.height(20),
              Row(
                children: [
                  const ArrowLeftAppbar(
                    padding: KPadding.none,
                  ),
                  Gap.width(),
                  Text(
                    'Enter your UPI ',
                    style: KText.r30Comfortaa,
                  ),
                ],
              ),
              Gap.height(60),
              CustomTextFeild(
                controller: upi,
                onTextChange: (val) {},
                label: 'UPI',
              ),
              Gap.height(),
              CustomizedButton(
                onTap: () {
                  if (upi.text.isNotEmpty) {
                    setState(() {
                      upiList.add(upi.text);
                    });
                  }
                },
                text: 'Save',
                backgroundColor: CustomColors.black,
                fontStyle: KText.r14BoldWhite,
              ),
              Gap.height(30),
              ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  dense: true,
                  title: Text(
                    upiList[index],
                    style: KText.r14Comfortaa,
                  ),
                  trailing: CustomizedButton(
                    onTap: () {},
                    width: 100.w,
                    pad: KPadding.horizontal10,
                    text: 'Use',
                    backgroundColor: CustomColors.black,
                    fontStyle: KText.r14BoldWhite,
                    borderRadius: 50,
                  ),
                ),
                itemCount: upiList.length,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) {
                  return Gap.height();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
