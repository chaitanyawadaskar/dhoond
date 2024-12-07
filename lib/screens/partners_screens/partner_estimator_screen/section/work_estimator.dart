import 'package:animate_do/animate_do.dart';
import 'package:dhoond/data/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../../../components/shadow_container.dart';
import '../../../../utilities/assets_paths/assets_paths.dart';
import '../../../../utilities/core/kpadding.dart';
import '../../../../utilities/core/kradius.dart';
import '../../../../utilities/custom_colors/custom_colors.dart';
import '../../../../utilities/custom_textfeild/custom_textfeild.dart';
import '../../../../utilities/gap/gap.dart';
import '../../../../utilities/theme/ktext_theme.dart';
import '../components/suggested_slider.dart';
import '../components/work_complexity_slider.dart';

class WorkEstimator extends StatefulWidget {
  const WorkEstimator({
    super.key,
  });

  @override
  State<WorkEstimator> createState() => _WorkEstimatorState();
}

class _WorkEstimatorState extends State<WorkEstimator> {
  var suggWork = [
    'Custom Furniture',
    'Cabinet Installation',
    'Wooden Door & Window Installation'
  ];
  int suggIndex = -1;
  double estimatedVal = 0;
  bool isRefresh = false;
  bool showDetailRevenue = false;
  final work = TextEditingController();
  final totalArea = TextEditingController();
  static const List<String> workList = <String>[
    'Carpenter',
    'Plumber',
    'Electrician',
    'Welder',
    'Manson',
    'Tile Installer',
    'Bricklayer',
    'Painter',
    'Iron work',
    'Glass Installer'
  ];
  double gst = 0.0;
  double platformFee = 0.0;
  double grandTotal = 0.0;

  void _calculateCosts() {
    setState(() {
      double calPrice = estimatedVal;
      gst = calPrice * 0.05;
      platformFee = calPrice * 0.03;
      grandTotal = calPrice - gst - platformFee;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: KPadding.horizontal16,
          child: Column(
            children: [
              Gap.height(25),
              Container(
                alignment: Alignment.centerLeft,
                padding: KPadding.only(bottom: 5),
                child: Text(
                  'Select work type',
                  style: KText.r16w5,
                ),
              ),
              TypeAheadFormField(
                keepSuggestionsOnSuggestionSelected: false,
                textFieldConfiguration: TextFieldConfiguration(
                  controller: work,
                  scrollPadding: KPadding.only(bottom: 250),
                  style: KText.r16w5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: CustomColors.faintGrey,
                    contentPadding: REdgeInsets.only(left: 15, top: 10),
                    hintStyle: KText.r14Grey,
                    errorStyle: KText.r14Red,
                    border: OutlineInputBorder(
                        borderRadius: kBorderRadius6,
                        // borderRadius: BorderRadius.circular(radius),
                        borderSide: const BorderSide(
                            color: CustomColors.mobileNoGrey, width: 1)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: kBorderRadius6,
                        borderSide: const BorderSide(
                            color: CustomColors.mobileNoGrey, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: kBorderRadius6,
                        borderSide: const BorderSide(
                            color: CustomColors.mobileNoGrey, width: 1)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: kBorderRadius6,
                        borderSide: const BorderSide(
                            color: CustomColors.darkRed, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: kBorderRadius6,
                        borderSide: const BorderSide(
                            color: CustomColors.mobileNoGrey, width: 1)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: kBorderRadius6,
                        borderSide: const BorderSide(
                            color: CustomColors.darkRed, width: 1)),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  var data = workList.where((state) =>
                      state.toLowerCase().contains(pattern.toLowerCase()));
                  return data;
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    dense: true,
                    tileColor: CustomColors.white,
                    title: Text(
                      suggestion,
                      style: KText.r14w5,
                    ),
                    visualDensity: VisualDensity.compact,
                  );
                },
                onSuggestionSelected: (suggestion) {
                  work.text = suggestion;
                },
              ),
              Gap.height(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Suggested Works',
                  style: KText.r14,
                ),
              ),
              Gap.height(5),
              SizedBox(
                height: 40.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              suggIndex = index;
                            });
                          },
                          child: Container(
                            padding: KPadding.all8,
                            decoration: BoxDecoration(
                                color: suggIndex == index
                                    ? CustomColors.faintGrey
                                    : null,
                                border: kBorderAllFaintGrey,
                                borderRadius: kBorderRadius25),
                            child: Center(
                              child: Text(
                                suggWork[index],
                                style: KText.r14w5,
                              ),
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => Gap.width(),
                    itemCount: suggWork.length),
              ),
              Gap.height(20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Work Area Dimensions',
                  style: KText.r16w5,
                ),
              ),
              Gap.height(6),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      textinputtype: TextInputType.number,
                      title: 'Length',
                      length: 3,
                      style: KText.r15w6,
                      titleStyle: KText.r14Grey,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 55,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 8),
                          child: Text(
                            'in feets',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap.width(20),
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      textinputtype: TextInputType.number,
                      title: 'Width',
                      length: 3,
                      style: KText.r15w6,
                      titleStyle: KText.r14Grey,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 55,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 8),
                          child: Text(
                            'in feets',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap.width(20),
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      textinputtype: TextInputType.number,
                      title: 'Height',
                      length: 3,
                      style: KText.r15w6,
                      titleStyle: KText.r14Grey,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 55,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 8),
                          child: Text(
                            'in feets',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap.height(20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Total Area*',
                  style: KText.r16w5,
                ),
              ),
              Gap.height(4),
              CustomTextFeild(
                onTextChange: (val) {},
                textinputtype: TextInputType.number,
                length: 5,
                controller: totalArea,
                style: KText.r15w6,
                titleStyle: KText.r14Grey,
                backgroundColor: CustomColors.faintGrey,
                allTypeBorderColor: CustomColors.mobileNoGrey,
                suffixIcon: Container(
                  width: 70,
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: KPadding.only(right: 10),
                    child: Text(
                      'in sq.ft',
                      style: KText.r14Grey,
                    ),
                  ),
                ),
              ),
              Gap.height(),
              const Divider(
                color: CustomColors.gradientGrey1,
              ),
              Gap.height(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Hourly Rate (optional)',
                  style: KText.r16w5,
                ),
              ),
              Gap.height(6),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      textinputtype: TextInputType.number,
                      title: 'Total Hours',
                      length: 2,
                      style: KText.r15w6,
                      titleStyle: KText.r14Grey,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 60,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 10),
                          child: Text(
                            'hours',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap.width(20),
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      textinputtype: TextInputType.number,
                      titleStyle: KText.r14Grey,
                      title: 'Rate / Hrs',
                      length: 5,
                      style: KText.r15w6,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 60,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 10),
                          child: Text(
                            '₹/hour',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap.height(),
              const Divider(
                color: CustomColors.gradientGrey1,
              ),
              Gap.height(10),
              WorkComplexitySlider(),
              Gap.height(),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      length: 3,
                      controller: TextEditingController(text: '25'),
                      style: KText.r15w6,
                      textinputtype: TextInputType.number,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 5,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 10),
                          child: Text(
                            'sq.ft',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap.width(40),
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      length: 3,
                      controller: TextEditingController(text: '29'),
                      style: KText.r15w6,
                      textinputtype: TextInputType.number,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 5,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 10),
                          child: Text(
                            'sq.ft',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap.width(40),
                  Expanded(
                    child: CustomTextFeild(
                      onTextChange: (val) {},
                      length: 3,
                      controller: TextEditingController(text: '33'),
                      style: KText.r15w6,
                      textinputtype: TextInputType.number,
                      backgroundColor: CustomColors.faintGrey,
                      allTypeBorderColor: CustomColors.mobileNoGrey,
                      suffixIcon: Container(
                        width: 5,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: KPadding.only(right: 10),
                          child: Text(
                            'sq.ft',
                            style: KText.r14Grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap.height(),
              const Divider(
                color: CustomColors.gradientGrey1,
              ),
              Gap.height(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Suggested base Sq.ft rate',
                        style: KText.r20w5,
                      ),
                      Text(
                        'Sq.ft rate is based on current market data',
                        style: KText.r14,
                      ),
                    ],
                  ),
                  Icon(
                    Ionicons.alert_circle_outline,
                    size: 24.h,
                  )
                ],
              ),
              Gap.height(20),
              SuggestedSlider(
                onSliderChange: (rate) {
                  estimatedVal = rate * double.parse(totalArea.text);
                  _calculateCosts();
                  setState(() {});
                },
              ),
              Gap.height(25),
              ShadowContainer(
                  padding: KPadding.all20,
                  borderRadius: kBorderRadius5,
                  backgroundColor: CustomColors.faintGrey,
                  disableShadow: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Estimated Value',
                            style: KText.r18w7,
                          ),
                          Text(
                            '1000 sq.ft',
                            style: KText.r15w7Grey,
                          )
                        ],
                      ),
                      Text(
                        '$estimatedVal'.commaDenote.rupee,
                        style: KText.r30w7,
                      )
                    ],
                  )),
              Gap.height(20),
              Row(
                children: [
                  Text(
                    'Total revenue breakdown',
                    style: KText.r14w5,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          showDetailRevenue = !showDetailRevenue;
                        });
                      },
                      visualDensity: VisualDensity.compact,
                      padding: KPadding.none,
                      icon: Icon(
                        showDetailRevenue
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 25,
                      ))
                ],
              ),
              Gap.height(5),
              Visibility(
                visible: showDetailRevenue,
                child: ShadowContainer(
                    padding: KPadding.all20,
                    borderRadius: kBorderRadius5,
                    backgroundColor: CustomColors.faintGrey,
                    disableShadow: true,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total order value',
                              style: KText.r14,
                            ),
                            Text(
                              estimatedVal.toString().commaDenote.rupee,
                              style: KText.r14,
                            ),
                          ],
                        ),
                        Gap.height(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'GST 5%',
                              style: KText.r14,
                            ),
                            Text(
                              '-₹${gst.toStringAsFixed(2)}',
                              style: KText.r14,
                            ),
                          ],
                        ),
                        Gap.height(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'platform fee 3%',
                              style: KText.r14,
                            ),
                            Text(
                              '-₹${platformFee.toStringAsFixed(2)}',
                              style: KText.r14,
                            ),
                          ],
                        ),
                        const Divider(
                          color: CustomColors.gradientGrey1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Receivable amount',
                              style: KText.r16w5,
                            ),
                            Text(
                              '₹${grandTotal.toStringAsFixed(2)}',
                              style: KText.r16w5,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Gap.height(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShadowContainer(
                        padding: KPadding.symmetric(5, 2),
                        disableShadow: true,
                        backgroundColor: CustomColors.yellow,
                        borderRadius: kBorderRadius8,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'SUGGESTIONS'.firstLetterCap(),
                              style: KText.r12w5,
                            ),
                          ],
                        ),
                      ),
                      Gap.height(5),
                      Text(
                        'Your Estimates',
                        style: KText.r20w5,
                      ),
                      Text('as per your selection', style: KText.r14w5)
                    ],
                  ),
                  Padding(
                    padding: KPadding.only(right: 25),
                    child: Column(
                      children: [
                        SpinPerfect(
                          animate: isRefresh,
                          infinite: false,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isRefresh = !isRefresh;
                              });
                            },
                            child: const Icon(
                              MaterialIcons.refresh,
                              size: 25,
                            ),
                          ),
                        ),
                        Text(
                          'Re-fresh',
                          style: KText.r14w5,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Gap.height(20),
              ShadowContainer(
                  padding: KPadding.all20,
                  margin: KPadding.horizontal15,
                  borderRadius: kBorderRadius5,
                  backgroundColor: CustomColors.faintGrey,
                  disableShadow: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current Market',
                            style: KText.r15w7,
                          ),
                          Text(
                            'Estimated Price',
                            style: KText.r15w7,
                          ),
                        ],
                      ),
                      Text(
                        '₹20,000 - ₹22,000',
                        style: KText.r16w5,
                      )
                    ],
                  )),
              Gap.height(),
              ShadowContainer(
                  backgroundColor: CustomColors.black,
                  borderRadius: kBorderRadius10,
                  disableShadow: false,
                  padding:
                      KPadding.only(top: 10, left: 30, right: 15, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ShadowContainer(
                        padding: KPadding.symmetric(5, 2),
                        disableShadow: true,
                        backgroundColor: CustomColors.yellow,
                        borderRadius: kBorderRadius5,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Entypo.emoji_flirt,
                              size: 15,
                            ),
                            Text(
                              '  Recommend',
                              style: KText.r12w5,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                ImagePath.whiteLogo,
                                height: 25.h,
                              ),
                              Text(
                                'Suggested Price',
                                style: KText.r15BoldWhite,
                              )
                            ],
                          ),
                          Text(
                            '₹3,780 - ₹3,990',
                            style: KText.r18w5White,
                          )
                        ],
                      ),
                    ],
                  )),
              Gap.height(20),
              ShadowContainer(
                  padding: KPadding.all20,
                  margin: KPadding.horizontal15,
                  borderRadius: kBorderRadius5,
                  backgroundColor: CustomColors.faintGrey,
                  disableShadow: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Minimum Market Price',
                            style: KText.r15w7,
                          ),
                          Text(
                            '(MMP)',
                            style: KText.r15w7,
                          ),
                        ],
                      ),
                      Text(
                        '₹20,000 - ₹22,000',
                        style: KText.r16w5,
                      )
                    ],
                  )),
              Gap.height(20),
              const Divider(
                color: CustomColors.gradientGrey1,
              ),
              Gap.height(20),
            ],
          ),
        ),
      ),
    );
  }
}
