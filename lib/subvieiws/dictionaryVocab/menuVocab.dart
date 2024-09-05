import 'package:buddhadham/subvieiws/dictionaryVocab/mainVocab.dart';
import 'package:buddhadham/subvieiws/dictionaryVocab/screenForReadVocab.dart';
import 'package:buddhadham/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuVocab extends StatefulWidget {
  const MenuVocab({super.key});

  @override
  State<MenuVocab> createState() => _MenuVocabState();
}

PageController _pageController = PageController(viewportFraction: 1);

class _MenuVocabState extends State<MenuVocab> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors().primaryColor,
        iconTheme: IconThemeData(color: AppColors().textColor),
        toolbarHeight: 75,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors().textColor,
          ),
        ),
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
                text: '\n(ฉบับประมวลศัพท์)',
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'สารบัญ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  child: _buildRow('ควรทราบก่อน', '๑'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainVocab(),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('วิธีอ่านคำบาลี', '๒'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 2,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('อักษรย่อชื่อคัมภีร์', '๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 3,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ก', '๔'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 4,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ข', '๒๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 23,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ค', '๒๙'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 29,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ฆ', '๔๑'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 41,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ง', '๔๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 43,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('จ', '๔๔'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 44,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ฉ', '๖๐'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 60,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ช', '๖๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 63,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ซ', '๗๐'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 70,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ฌ', '๗๑'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 71,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ญ', '๗๒'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 72,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ฎ', '๗๔'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 74,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ฐ', '๗๕'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 75,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ด', '๗๖'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 76,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ต', '๗๘'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 78,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ถ', '๙๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 93,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ท', '๙๖'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 96,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ธ', '๑๐๑'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 101,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('น', '๑๐๘'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 108,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('บ', '๑๑๖'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 116,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ป', '๑๒๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 123,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ผ', '๑๔๕'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 145,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('พ', '๑๔๗'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 147,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ฟ', '๑๕๗'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 157,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ภ', '๑๕๘'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 158,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ม', '๑๖๔'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 164,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ย', '๑๘๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 183,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ร', '๑๘๖'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 186,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ฤ', '๑๙๑'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 191,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ล', '๑๙๒'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 192,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ว', '๑๙๕'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 195,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ศ', '๒๐๘'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 208,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ส', '๒๑๙'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 219,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ห', '๓๐๕'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 305,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('อ', '๓๐๙'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 309,
                        ),
                      ),
                    );
                  },
                ),
                _buildSectionHeader('ผนวก คำนำบูชาในวันสำคัญ'),
                InkWell(
                  child: _buildRow('วันมาฆบูชา', '๔๓๐'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 430,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('วันวิสาขบูชา', '๔๓๒'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 432,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('วันอาสาฬหบูชา', '๔๓๕'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 435,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      'แถลงการจัดทำหนังสือ (ในการพิมพ์ครั้งที่ ๑)', '๔๓๗'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 437,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ความเป็นมาของ พจนานุกรมพุทธศาสตร์', '๔๓๙'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 439,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('ทุนพิมพ์พจนานุกรมพุทธศาสน์', '๔๔๑'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 441,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      'จาก พ.ศ. ๒๕๒๒ - ๓๗๓ หน้า ถึง พ.ศ. ๒๕๖๖ - ๔๖๓ หน้า',
                      '๔๔๓'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 443,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      '- บันทึกของผู้เรียบเรียง (ในการพิมพ์ครั้งที่ ๒ – พ.ศ. ๒๕๒๗)',
                      '๔๔๔'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(initialPage: 444),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      '- คำปรารภ (ในการพิมพ์ครั้งที่ ๑๐ - ๒๕๔๖) ', '๔๔๖'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 446,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      '- ความเป็นมา (ในการ “ชำระ-เพิ่มเติม ช่วงที่ ๑”: ม.ค. ๒๕๕๐ - มิ.ย. ๒๕๕๑) ',
                      '๔๕๒'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 452,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow('- บันทึกเสริม ', '๔๕๘'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 458,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      '- บันทึกนำ - พิมพ์ครั้งที่ ๑๑ (ฉบับ “ชำระเพิ่มเติม ช่วงที่ ๑”) ๒๕๕๑',
                      '๔๕๙'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 459,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      '- คำชี้แจง (งานแทรกพิเศษ ท้ายปี ๒๕๖๐ - พิมพ์ครั้งที่ ๓๑) ',
                      '๔๖๐'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 460,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      '- บันทึกประกอบ ในการพิมพ์ ครั้งที่ ๓๔ - ม.ค. ๒๕๖๓, ครั้งที่ ๓๗ - ม.ค. ๒๕๖๕',
                      '๔๖๑'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 461,
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: _buildRow(
                      '- บันทึกความเป็นมา ในการพิมพ์ครั้งที่ ๓๘ - ส.ค. ๒๕๖๕',
                      '๔๖๒'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreenVocab(
                          initialPage: 462,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String title, String page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            page,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
