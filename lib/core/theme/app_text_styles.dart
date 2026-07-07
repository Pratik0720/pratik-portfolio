import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
    AppTextStyle._();

    static final hero = GoogleFonts.outfit(
    fontSize: 72,
    fontWeight: FontWeight.w700,
    height: 1.0,
    );

    static final title = GoogleFonts.outfit(
    fontSize: 40,
    fontWeight: FontWeight.w600,
    );

    static final subtitle = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    );

    static final body = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    );

}