import 'package:flutter/material.dart';
import '../custom_colors/custom_colors.dart';

class KBoxShadow {
  static final grey = [
    BoxShadow(
        color: CustomColors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 12)
  ];

  static final lightGrey = [
    BoxShadow(
        color: CustomColors.grey.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 12)
  ];

  static final gradient = [
    BoxShadow(
        blurRadius: 4,
        spreadRadius: 1,
        offset: const Offset(0, 1.0),
        color: const Color(0xFFe8e8e8).withOpacity(0.7))
  ];

  static final faintGrey = [
    BoxShadow(
        color: CustomColors.grey.withOpacity(0.3),
        spreadRadius: 1,
        blurRadius: 5)
  ];

  static final glowBlue = [
    BoxShadow(
        color: CustomColors.glowBlue.withOpacity(0.4),
        spreadRadius: 1,
        blurRadius: 5)
  ];

  static final buttonShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      offset: const Offset(2, 2),
      blurRadius: 1,
    )
  ];

  static final buttonShadow2 = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      offset: const Offset(-2, 2),
      blurRadius: 1,
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      offset: const Offset(2, 2),
      blurRadius: 1,
    )
  ];

  static final cardShadow = [
    BoxShadow(
        color: Colors.black.withOpacity(0.25), blurRadius: 4, spreadRadius: 0)
  ];

  static final insightsCardShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      offset: const Offset(0, 2),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];

  static final glowGreen = [
    BoxShadow(
      color: CustomColors.glowGreen.withOpacity(0.4),
      spreadRadius: 12,
      blurRadius: 30,
    ),
  ];

  static final manufactureShadow = [
    const BoxShadow(
        color: CustomColors.manufactureBlue1, spreadRadius: 1.5, blurRadius: 5),
  ];

  static final installShadow = [
    const BoxShadow(
        color: CustomColors.installPink, spreadRadius: 1.5, blurRadius: 5),
  ];

  static final uninstallShadow = [
    const BoxShadow(
        color: CustomColors.uninstallBlue1, spreadRadius: 1.5, blurRadius: 5),
  ];

  static final repairShadow = [
    const BoxShadow(
        color: CustomColors.repairPurple, spreadRadius: 1.5, blurRadius: 5),
  ];

  static final maintenanceShadow = [
    const BoxShadow(
        color: CustomColors.maintenanceYellow,
        spreadRadius: 1.5,
        blurRadius: 5),
  ];

  static final glowGreen1 = [
    BoxShadow(
      color: CustomColors.glowGreen.withOpacity(0.4),
      spreadRadius: 0,
      blurRadius: 30,
    ),
  ];

  static final greyBorderType = [
    BoxShadow(
        color: CustomColors.grey.withOpacity(0.4),
        spreadRadius: 1,
        blurRadius: 1)
  ];

  static final faintGreyLRB = [
    BoxShadow(
      offset: const Offset(-5, 0),
      blurRadius: 10,
      color: CustomColors.grey.withOpacity(0.4),
    ),
    BoxShadow(
      offset: const Offset(5, 0),
      blurRadius: 10,
      color: CustomColors.grey.withOpacity(0.1),
    ),
    BoxShadow(
      offset: const Offset(0, 5),
      blurRadius: 10,
      color: CustomColors.grey.withOpacity(0.1),
    ),
  ];

  static final threeD = [
    BoxShadow(
      color: Colors.black.withOpacity(0.25),
      spreadRadius: -5,
      blurRadius: 5,
      offset: const Offset(10, 0),
    ),
  ];

  static final neumorphismEffect = [
    const BoxShadow(
      color: Color(0xFFBEBEBE),
      offset: Offset(10, 10),
      blurRadius: 30,
      spreadRadius: 1,
    ),
    const BoxShadow(
      color: Colors.white,
      offset: Offset(-10, -10),
      blurRadius: 30,
      spreadRadius: 1,
    ),
  ];

  static final estimatorShadow = [
    const BoxShadow(
      color: CustomColors.fontGrey,
      offset: Offset(0, 0),
      blurRadius: 4,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: CustomColors.white.withOpacity(0.5),
      offset: const Offset(-12, -12),
      blurRadius: 20,
      spreadRadius: 0,
    ),
  ];

  static final onlyTop = [
    BoxShadow(
      color: CustomColors.grey.withOpacity(0.4),
      spreadRadius: 1,
      blurRadius: 1,
      offset: const Offset(0, -2),
    )
  ];
}
