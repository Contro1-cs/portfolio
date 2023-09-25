import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mobileProjectDisplay(
  String title,
  String description,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset("assets/phone-default.png"),
      const SizedBox(width: 200),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 40,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 600,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.firaCode(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

laptopProjectDisplay(
  String title,
  String description,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 40,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 600,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.firaCode(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(width: 200),
      Image.asset("assets/laptop-default.png"),
      
    ],
  );
}
