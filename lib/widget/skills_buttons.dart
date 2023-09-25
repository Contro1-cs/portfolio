import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List skills = [
  'FLUTTER',
  'DART',
  'FIREBASE',
  'FIGMA',
  'JIRA',
  'PYTHON',
  'MOBILE APPLICATION DEVELOPMENT',
  'WEB DEVELOPMENT',
  'COMEDIAN',
  'C++',
  'C',
  'REST API',
];

class SkillButton extends StatelessWidget {
  final String skillName;

  const SkillButton({super.key, required this.skillName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Text(
        skillName,
        style: GoogleFonts.firaCode(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

skillsButtons() {
  return Container(
    height: 260,
    width: 520,
    alignment: Alignment.center,
    child: Wrap(
      alignment: WrapAlignment.start,
      children: skills.map((skill) {
        return SkillButton(skillName: skill);
      }).toList(),
    ),
  );
}
