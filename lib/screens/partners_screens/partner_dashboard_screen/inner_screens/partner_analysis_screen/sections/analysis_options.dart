import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/material.dart';
import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/gap/gap.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class AnalysisOption extends StatefulWidget {
  const AnalysisOption({super.key, required this.onChangeOption});
  final Function(int index) onChangeOption;
  @override
  State<AnalysisOption> createState() => _AnalysisOptionState();
}

class _AnalysisOptionState extends State<AnalysisOption> {
  int currentOption = 0;
  var opt = ['Searches', 'Completed work', 'Earnings'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    currentOption = index;
                  });
                  widget.onChangeOption(index);
                },
                child: Container(
                  padding: KPadding.symmetric(14, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border:
                          currentOption == index ? kBorderAll : kBorderAllGrey,
                      borderRadius: kBorderRadius25),
                  child: Text(
                    opt[index],
                    style: currentOption == index ? KText.r12 : KText.r12Grey,
                  ),
                ),
              ),
          separatorBuilder: (context, index) => Gap.width(8),
          itemCount: opt.length),
    ).mAll(16);
  }
}
