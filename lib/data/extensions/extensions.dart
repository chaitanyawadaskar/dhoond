import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension MapWithIndex<T> on List<T> {
  List<R> mapWithIndex<R>(R Function(T, int i) callback) {
    List<R> result = [];

    for (int i = 0; i < length; i++) {
      R item = callback(this[i], i);
      result.add(item);
    }
    return result;
  }

  Iterable<R> mapWithIndexIterable<R>(R Function(T, int i) callback) {
    return asMap().keys.toList().map((index) => callback(this[index], index));
  }
}

extension Numeric on String {
  bool get isNumeric => num.tryParse(this) != null ? true : false;
}

extension StringExtension on String {
  String firstLetterCap() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String convertKtoNumber() {
    if (toLowerCase().endsWith('k')) {
      return (int.parse(toLowerCase().replaceAll('k', '')) * 1000).toString();
    }
    return this;
  }

  String convertNumberToK() {
    int number = int.parse(this);
    if (number % 1000 == 0) {
      return '${number ~/ 1000}K'; // Using truncating division
    }
    return this;
  }

  String stripHTMLCode() {
    return replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ');
  }
}

extension CurrencyExtension on String {
  String get rupeeWithSlash => '₹ $this /-';
  String get rupee => '₹$this';
  String get rs => 'Rs.$this';
}

extension CaseExtension on String {
  String get pascal => "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

  String get commaDenote =>
      NumberFormat("#,##,##,###").format(double.tryParse(replaceAll(",", "")));
}

extension TextExtension on String {
  Widget get r12 => Text(
        this,
        style: KText.r12,
      );
}

extension TimeExtension on int {
  String get timeToString => '00 : ${toString().padLeft(2, '0')}';
}

extension MarginExtension on Widget {
  Widget get m5 => Container(
        margin: const EdgeInsets.all(5),
        child: this,
      );
  Widget get m10 => Container(
        margin: const EdgeInsets.all(10),
        child: this,
      );
  Widget get m15 => Container(
        margin: const EdgeInsets.all(15),
        child: this,
      );
  Widget get m16 => Container(
        margin: const EdgeInsets.all(16),
        child: this,
      );
  Widget get m20 => Container(
        margin: const EdgeInsets.all(20),
        child: this,
      );
  Widget mAll(double value) => Container(
        margin: EdgeInsets.all(value),
        child: this,
      );

  Widget mSymmetric([double horizontal = 0, double vertical = 0]) => Container(
        margin:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  Widget mOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      Container(
        margin:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}

extension PaddingExtension on Widget {
  Widget get p5 => Padding(
        padding: const EdgeInsets.all(5),
        child: this,
      );
  Widget get p10 => Padding(
        padding: const EdgeInsets.all(10),
        child: this,
      );
  Widget get p15 => Padding(
        padding: const EdgeInsets.all(15),
        child: this,
      );
  Widget get p16 => Padding(
        padding: const EdgeInsets.all(16),
        child: this,
      );
  Widget get p20 => Padding(
        padding: const EdgeInsets.all(20),
        child: this,
      );
  Widget pAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Widget pSymmetric([double horizontal = 0, double vertical = 0]) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  Widget pOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}
