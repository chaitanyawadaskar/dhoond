import 'package:dhoond/utilities/core/kpadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../components/float_card .dart';

class FloatSection extends StatelessWidget {
  const FloatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      padding: KPadding.symmetric(20, 10),
      itemBuilder: (context, index) {
        return const FloatCard();
      },
      separatorBuilder: (context, index) => const SizedBoxHeight(),
      itemCount: 1,
    ));
  }
}
