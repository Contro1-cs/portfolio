import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widget/about_me_section.dart';
import 'package:portfolio/widget/dash.dart';
import 'package:portfolio/widget/project_display.dart';
import 'package:portfolio/widget/skills_buttons.dart';
import 'dart:html' as html;

import 'package:portfolio/widget/typewriter_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void downloadPdf() {
    const String pdfAssetPath = 'assets/resume.pdf';
    html.AnchorElement(href: pdfAssetPath)
      ..target = 'a_blank_target'
      ..download = 'Aaditya-Jagdale-Resume.pdf'
      ..click();
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    Color buttonColor = Colors.white;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
          child: Image.asset('assets/logo.png'),
        ),
        actions: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  scrollController.animateTo(
                    4000,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'CONTACT ME',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 100),
              TextButton(
                onPressed: () {
                  scrollController.animateTo(
                    1150,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'PROJECTS',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 100),
              TextButton(
                onPressed: () {
                  downloadPdf();
                },
                child: Text(
                  'RESUME',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 50),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const SizedBox(height: 80),
            Center(
              child: Text(
                'AADITYA JAGDALE',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 100,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 300),
              child: TypingTextAnimation(
                text:
                    "I'm passionate about merging creativity and technology to build exceptional mobile",
                duration: const Duration(milliseconds: 20),
                textStyle: GoogleFonts.firaCode(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 300),
              child: TypingTextAnimation(
                text:
                    "applications. With a strong foundation in Computer Science, I lead Android tech",
                duration: const Duration(milliseconds: 25),
                textStyle: GoogleFonts.firaCode(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 300),
              child: TypingTextAnimation(
                text:
                    "teams, solve complex problems, and craft engaging user experiences. Explore my",
                duration: const Duration(milliseconds: 30),
                textStyle: GoogleFonts.firaCode(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 300),
              child: TypingTextAnimation(
                text:
                    "portfolio to witness my innovative approach to app development",
                duration: const Duration(milliseconds: 45),
                textStyle: GoogleFonts.firaCode(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 160),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  scrollController.animateTo(
                    1150,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 200),
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                child: Text(
                  'PROJECTS',
                  style: GoogleFonts.firaCode(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
            dottedLine(),
            const SizedBox(height: 70),
            Center(
              child: Text(
                'SKILLS',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 60,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 260,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 180),
                  skillsButtons(),
                ],
              ),
            ),
            const SizedBox(height: 70),
            dottedLine(),
            const SizedBox(height: 70),
            mobileProjectDisplay(
              'PROJECT 1',
              'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum EU.',
            ),
            const SizedBox(height: 100),
            laptopProjectDisplay(
              'PROJECT 2',
              'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum EU.',
            ),
            const SizedBox(height: 70),
            mobileProjectDisplay(
              'PROJECT 3',
              'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum EU.',
            ),
            const SizedBox(height: 120),
            dottedLine(),
            const SizedBox(height: 120),
            aboutMe(),
            const SizedBox(height: 120),
            dottedLine(),
            const SizedBox(height: 120),
            Center(
              child: Text(
                'WORK EXPERIENCE',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 60,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('erc-logo.png'),
                  Image.asset('mit-logo.png'),
                  Image.asset('mittarv-logo.png'),
                  Image.asset('soncur-logo.png'),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Center(
              child: Text(
                'MY VENTURES',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 60,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 200),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('pixlab-logo.png'),
                  const SizedBox(width: 100),
                  Image.asset('younoia-logo.png'),
                ],
              ),
            ),
            const SizedBox(height: 70),
            dottedLine(),
            const SizedBox(height: 70),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                const SizedBox(width: 100),

                //Contact Form
                Container(
                  width: 600,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: 'EMAIL*',
                          hintStyle: GoogleFonts.baskervville(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 280,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2),
                                ),
                                hintText: 'NAME*',
                                hintStyle: GoogleFonts.baskervville(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 290,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2),
                                ),
                                hintText: 'PHONE',
                                hintStyle: GoogleFonts.baskervville(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 600,
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: TextField(
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'DROP A MESSAGE...',
                            hintStyle: GoogleFonts.baskervville(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 600,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Colors.black),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'SUBMIT',
                            style: GoogleFonts.leagueSpartan(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
