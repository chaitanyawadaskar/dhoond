import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AnimatedProgressIndicator extends StatefulWidget {
  const AnimatedProgressIndicator({super.key, this.seconds = 10});
  final int seconds;
  @override
  State<AnimatedProgressIndicator> createState() =>
      _AnimatedProgressIndicatorState();
}

class _AnimatedProgressIndicatorState extends State<AnimatedProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.seconds),
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 5.h,
        width: Get.width,
        child: LinearProgressIndicator(
          value: _animation.value,
          minHeight: 5,
          valueColor: const AlwaysStoppedAnimation(CustomColors.lightGreen),
          color: CustomColors.white,
          backgroundColor: CustomColors.white,
        ));
  }
}
