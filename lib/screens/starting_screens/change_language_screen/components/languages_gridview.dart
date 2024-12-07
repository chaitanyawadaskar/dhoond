import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/language_tile.dart';

class LanguageGridView extends StatelessWidget {
  const LanguageGridView({
    super.key,
    required this.onLanguagePress,
    this.selectedLang = '',
  });
  final Function(String) onLanguagePress;
  final String selectedLang;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> languages = [
      {'name': 'ENGLISH', 'color': '0xFFE1FFFB'},
      {'name': 'हिंदी', 'color': '0xFFFFDEFE'},
      {'name': 'मराठी', 'color': '0xFFFFE8E8'},
      {'name': 'తెలుగు', 'color': '0xFFD6FFE2'},
      {'name': 'മലയാളം', 'color': '0xFFF9FFD5'},
      {'name': 'ಕನ್ನಡ', 'color': '0xFFD4FFFF'},
      {'name': 'தமிழ்', 'color': '0xFFF2DDFF'},
      {'name': 'বাংলা', 'color': '0xFFFFFACF'},
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 400.h,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              mainAxisExtent: 80.h),
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return LanguageTile(
              enableBorder: selectedLang == languages[index]['name'],
              language: languages[index]['name']!,
              color: Color(int.parse(languages[index]['color']!)),
              onTap: () {
                onLanguagePress('${languages[index]['name']}');
              },
            );
          },
        ),
      ),
    );
  }
}
