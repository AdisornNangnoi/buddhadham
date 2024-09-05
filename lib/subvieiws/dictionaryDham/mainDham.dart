import 'package:buddhadham/subvieiws/dictionaryDham/indexDham.dart';
import 'package:buddhadham/subvieiws/dictionaryDham/menuDham.dart';
import 'package:buddhadham/subvieiws/dictionaryDham/screenForReadDham.dart';
import 'package:buddhadham/subvieiws/dictionaryDham/searchScreenDham.dart';
import 'package:buddhadham/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDham extends StatefulWidget {
  const MainDham({super.key});

  @override
  State<MainDham> createState() => _MainDhamState();
  
}

class _MainDhamState extends State<MainDham> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    MenuDham(),
    IndexDham(),
    ReadScreenDham(
      initialPage: 1,
    ), // Replace with your desired widget for the Home screen
    SearchScreenDham(),
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
            icon: Icon(Icons.list_alt_rounded),
            label: 'ดัชชี้ค้นคำ',
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