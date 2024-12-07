import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/core/kradius.dart';
import '../utilities/custom_colors/custom_colors.dart';
import '../utilities/theme/ktext_theme.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  State<AnimatedButton> createState() => _AnimatedButtonAnimationState();
}

class _AnimatedButtonAnimationState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialisation
    _animationController = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    );

    // Animation range
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController);

    // Animation Listener
    _animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        // Animation Completed: Proceed with the next actions accordingly
      }
    });

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var containerWidth = constraints.maxWidth;
        return AnimatedBuilder(
          animation: _animationController,
          builder: (BuildContext context, Widget? child) {
            final double width = _animation.value * containerWidth;
            return GestureDetector(
              onTap: widget.onTap,
              child: Container(
                width: containerWidth,
                height: 50.h,
                decoration: BoxDecoration(
                    color: CustomColors.black.withOpacity(0.5),
                    borderRadius: kBorderRadius5),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: width >= containerWidth ? containerWidth : width,
                      decoration: width >= containerWidth
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: CustomColors.black,
                            )
                          : BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    _animation.value >= 0 ? 8.0 : 0),
                                bottomLeft: Radius.circular(
                                    _animation.value >= 0 ? 8.0 : 0),
                                topRight: const Radius.circular(0),
                                bottomRight: const Radius.circular(0),
                              ),
                              color: CustomColors.black,
                            ),
                    ),
                    Center(
                      child: Text('ACCEPT', style: KText.r14w5White),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void resetAnimation() {
    _animationController.reset();
    Future.delayed(
      const Duration(seconds: 1),
    ).then(
      (val) {
        _animationController.forward();
      },
    );
  }
}
