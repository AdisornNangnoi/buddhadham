import 'package:buddhadham/subvieiws/dictionaryVocab/menuVocab.dart';
import 'package:buddhadham/subvieiws/dictionaryVocab/screenForReadVocab.dart';
import 'package:buddhadham/subvieiws/dictionaryVocab/searchScreenVocab.dart';
import 'package:buddhadham/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainVocab extends StatefulWidget {
  const MainVocab({super.key});

  @override
  State<MainVocab> createState() => _MainVocabState();
}

class _MainVocabState extends State<MainVocab> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    MenuVocab(),
    ReadScreenVocab(
      initialPage: 1,
    ), // Replace with your desired widget for the Home screen
    SearchScreenVocab(),
    // LogListScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(child: Text('พุทธรรม(ภาษาไทย)')),
      //   automaticallyImplyLeading: false,
      // ),
      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.sarabun(),
        unselectedLabelStyle: GoogleFonts.sarabun(),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_rounded),
            label: 'สารบัญ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'อ่าน',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.star),
          //   label: 'รายการบันทึก',
          // ),
          BottomNavigationBarItem(
            // Added new BottomNavigationBarItem for About page
            icon: Icon(Icons.search),
            label: 'ค้นหา',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors().textColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        backgroundColor: AppColors().primaryColor,
      ),
    );
  }
}
