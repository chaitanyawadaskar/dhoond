import 'dart:async';
import 'package:dhoond/utilities/assets_paths/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../screens/common_screens/support_chat_screen/support_chat_screen.dart';

class DraggableFloatingButton extends StatefulWidget {
  const DraggableFloatingButton(
      {super.key, required this.child, this.disableBot = false});
  final Widget child;
  final bool disableBot;

  @override
  _DraggableFloatingButtonState createState() =>
      _DraggableFloatingButtonState();
}

class _DraggableFloatingButtonState extends State<DraggableFloatingButton> {
  Offset position = const Offset(-200, -200);
  final double margin = 15.0;
  final double buttonDiameter = 56.0;
  bool isLeft = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final constraints = context.size;
      setState(() {
        position = Offset(
          constraints!.width - margin - buttonDiameter,
          constraints.height - margin - buttonDiameter,
        );
      });
    });
  }

  void togglePosition() {
    // Toggle between left and right positions
    final constraints = context.size;
    if (isLeft) {
      position = Offset(
        constraints!.width - margin - buttonDiameter,
        position.dy,
      );
    } else {
      position = Offset(margin, position.dy);
    }
    isLeft = !isLeft;
  }

  void centerPosition() {
    final constraints = context.size;
    position = Offset(
      (constraints!.width - buttonDiameter) / 2,
      (constraints.height - buttonDiameter) / 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            widget.child,
            Visibility(
              visible: !widget.disableBot,
              child: Positioned(
                left: position.dx,
                top: position.dy,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      togglePosition();
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      Get.to(
                        () => const SupportChatScreen(),
                        transition: Transition.native,
                      );
                    });
                  },
                  child: Draggable(
                    feedback: Lottie.asset(LottiePath.eraBot,
                        height: 70.w, width: 70.w),
                    childWhenDragging: Container(),
                    onDraggableCanceled: (velocity, offset) {
                      setState(() {
                        position = Offset(
                          offset.dx.clamp(margin,
                              constraints.maxWidth - margin - buttonDiameter),
                          offset.dy.clamp(margin,
                              constraints.maxHeight - margin - buttonDiameter),
                        );
                      });
                    },
                    child: Lottie.asset(LottiePath.eraBot,
                        height: 70.w, width: 70.w),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
