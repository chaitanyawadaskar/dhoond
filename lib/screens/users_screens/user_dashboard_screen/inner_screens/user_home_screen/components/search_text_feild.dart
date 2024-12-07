import 'package:dhoond/data/extensions/extensions.dart';
import 'package:dhoond/data/functions/common_function.dart';
import 'package:dhoond/utilities/core/kboxshadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../../../../utilities/core/kpadding.dart';
import '../../../../../../utilities/core/kradius.dart';
import '../../../../../../utilities/core/ksizedbox.dart';
import '../../../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../../../utilities/theme/ktext_theme.dart';

class SearchTextFeild extends StatefulWidget {
  const SearchTextFeild({
    super.key,
    this.enable = true,
    this.onTap,
    this.hintStyle,
    this.width,
    this.showMike = true,
    this.showRightSearchIcon = false,
    this.borderRadius,
    this.hintText = 'Search ',
    this.ignoreVoiceRecognization = false,
    this.boxShadow,
    this.isGreyIcon = false,
    this.border,
    this.disableShadow = false,
  });
  final bool enable;
  final Function()? onTap;
  final TextStyle? hintStyle;
  final double? width;
  final bool showMike;
  final bool showRightSearchIcon;
  final bool ignoreVoiceRecognization;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final String hintText;
  final bool isGreyIcon;
  final BoxBorder? border;
  final bool disableShadow;

  @override
  State<SearchTextFeild> createState() => _SearchTextFeildState();
}

class _SearchTextFeildState extends State<SearchTextFeild> {
  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = "";

  final TextEditingController searchController = TextEditingController();

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
  }

  void _startListening() async {
    print('listen');
    await _speechToText.listen(
      onResult: _onSpeechResult,
      listenFor: const Duration(seconds: 30),
      localeId: "en_En",
    );
    setState(() {});
  }

  void _stopListening() async {
    print('not listning');
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = "$_lastWords${result.recognizedWords} ";
      searchController.text = _lastWords;
    });
  }

  @override
  void initState() {
    super.initState();
    Functions.listenForPermissions();
    if (!_speechEnabled) {
      _initSpeech();
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        padding: KPadding.horizontal10,
        decoration: BoxDecoration(
            boxShadow: widget.disableShadow
                ? null
                : widget.boxShadow ?? KBoxShadow.greyBorderType,
            color: CustomColors.white,
            border: widget.border,
            borderRadius: widget.borderRadius ?? kBorderRadius50),
        child: Row(
          children: [
            Visibility(
              visible: !widget.showRightSearchIcon && widget.width == null,
              child: Icon(
                CupertinoIcons.search,
                color:
                    widget.isGreyIcon ? CustomColors.grey : CustomColors.black,
                size: 25.w,
              ),
            ),
            const SizedBoxWidth(),
            Expanded(
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                    hintText: widget.hintText,
                    enabled: widget.enable,
                    isDense: true,
                    contentPadding: KPadding.only(
                      bottom: 10,
                    ),
                    hintStyle: widget.hintStyle ?? KText.r16w5,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Visibility(
              visible: widget.showMike,
              child: IgnorePointer(
                ignoring: widget.ignoreVoiceRecognization,
                child: InkWell(
                  onTap: () {
                    _speechToText.isNotListening
                        ? _startListening()
                        : _stopListening();
                  },
                  // visualDensity: VisualDensity.compact,
                  child: _speechToText.isListening
                      ? const Icon(
                          Ionicons.ios_mic_sharp,
                          color: CustomColors.darkRed,
                        )
                      : const Icon(Ionicons.mic_outline,
                          color: CustomColors.black),
                ).pOnly(top: 9, bottom: 9, left: 50),
              ),
            ),
            Visibility(
              visible: widget.showRightSearchIcon,
              child: Icon(
                CupertinoIcons.search,
                color: CustomColors.black,
                size: 20.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
