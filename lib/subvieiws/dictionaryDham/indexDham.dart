import 'package:buddhadham/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexDham extends StatefulWidget {
  const IndexDham({super.key});

  @override
  State<IndexDham> createState() => _IndexDhamState();
}

class _IndexDhamState extends State<IndexDham> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors().textColor,
          ),
        ),
        backgroundColor: AppColors().primaryColor,
        iconTheme: IconThemeData(color: AppColors().textColor),
        toolbarHeight: 75,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'พจนานุกรมพุทธศาสตร์',
                style: GoogleFonts.sarabun(
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors().textColor,
                  ),
                ),
              ),
              TextSpan(
                text: '\n(ฉบับประมวลธรรม)',
                style: GoogleFonts.sarabun(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: AppColors().textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'ดัชนีค้นคำ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
