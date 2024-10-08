import 'package:buddhadham/models/appTextSetting.dart';
import 'package:buddhadham/utils/appcolors.dart';
import 'package:buddhadham/views/screenForSearch.dart';
import 'package:flutter/material.dart';
import 'package:buddhadham/models/section.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html/parser.dart' show parse;
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];

  String thaiNumDigit(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const thai = ['๐', '๑', '๒', '๓', '๔', '๕', '๖', '๗', '๘', '๙'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], thai[i]);
    }

    return input;
  }

  Future<void> _search(String query) async {
    if (query.trim().isEmpty) {
      return;
    }

    List<String> allTexts = await Section.listAllText;
    List<String> searchResults = [];

    for (int i = 0; i < allTexts.length; i++) {
      final rawData = allTexts[i];
      String data = allTexts[i].replaceAll(RegExp(r'<[^>]*>'), ' ');
      data = data.replaceAll('&nbsp;', '');
      allTexts[i] = rawData;
      //-------------------

      if (data.contains(query)) {
        //if (allTexts[i].contains(query)) {
        String cleanText = parse(allTexts[i]).body?.text ?? '';
        cleanText = cleanText.replaceAll('&nbsp;', ''); // Remove '&nbsp;'
        cleanText =
            cleanText.replaceAll(RegExp(r'\s+'), ' '); // Remove extra spaces
        if (cleanText.length <= 50) {
          print(cleanText);
          searchResults.add(
              'หน้าที่ ${thaiNumDigit((i + 1).toString())}    \n${cleanText.trim()}...'); //thaiNumDigit((index + 1).toString())
        } else {
          SizerUtil.deviceType == DeviceType.mobile
              ? searchResults.add(
                  'หน้าที่ ${thaiNumDigit((i + 1).toString())}    \n${cleanText.substring(0, 50).trim()}...')
              : searchResults.add(
                  'หน้าที่ ${thaiNumDigit((i + 1).toString())}    \n${cleanText.substring(0, 70).trim()}...');
        }
      }
    }

    setState(() {
      _searchResults = searchResults;
    });
  }

  @override
  void initState() {
    AppTextSetting.APP_FONTSIZE_READ = 15;
    AppTextSetting.APP_FONTSIZE_READ_TABLET = 23;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors().primaryColor,
        iconTheme: IconThemeData(color: AppColors().textColor),
        toolbarHeight: 75,
        
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'พุทธธรรม',
                style: GoogleFonts.sarabun(
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors().textColor,
                  ),
                ),
              ),
              TextSpan(
                text: ' (ฉบับปรับขยาย)',
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
      body: Column(
        children: <Widget>[
          Container(
            color: AppColors().searchColor1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              child: TextField(
                style: GoogleFonts.sarabun(
                  color: AppColors().textSearchColor,
                ),
                controller: _searchController,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'[&%=#@\$\\/;]')),
                ],
                decoration: InputDecoration(
                  hintText: ' ค้นหา (search)',
                  hintStyle: GoogleFonts.sarabun(
                    color: Colors.grey[400],
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors().primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors().primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: AppColors().primaryColor,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.grey[400],
                    ),
                    onPressed: () {
                      _searchController.clear();
                      setState(() {
                        _searchResults = [];
                      });
                    },
                  ),
                ),
                onSubmitted: _search,
                textInputAction: TextInputAction.search,
              ),
            ),
          ),
          _searchResults.length == 0
              ? Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Divider(),
                    ),
                    itemCount:
                        SizerUtil.deviceType == DeviceType.mobile ? 10 : 15,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(
                            ' ',
                            style: GoogleFonts.sarabun(),
                          ),
                          onTap: () async {});
                    },
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: Divider(),
                    ),
                    itemCount: _searchResults.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: SizerUtil.deviceType == DeviceType.mobile
                            ? EdgeInsets.symmetric(vertical: 3.0)
                            : EdgeInsets.symmetric(vertical: 10.0),
                        child: ListTile(
                          // title: Text(
                          //   _searchResults[index],
                          //   style: GoogleFonts.sarabun(),
                          // ),
                          title: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: _searchResults[index].substring(0, 13),
                                  style: GoogleFonts.sarabun(
                                    color: AppColors().primaryColor,
                                    fontSize: SizerUtil.deviceType ==
                                            DeviceType.mobile
                                        ? AppTextSetting.APP_FONTSIZE_READ
                                        : AppTextSetting
                                            .APP_FONTSIZE_READ_TABLET,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: _searchResults[index].substring(
                                    13,
                                  ),
                                  style: GoogleFonts.sarabun(
                                    color: AppColors().primaryColor,
                                    fontSize: SizerUtil.deviceType ==
                                            DeviceType.mobile
                                        ? AppTextSetting.APP_FONTSIZE_READ
                                        : AppTextSetting
                                            .APP_FONTSIZE_READ_TABLET,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () async {
                            int pageNumber =
                                index + 1; // Get the correct page number

                            List<String> allTexts = await Section.listAllText;
                            String query = _searchController.text;
                            int page = 0;
                            int pageIndex = -1;

                            for (int i = 0; i < allTexts.length; i++) {
                              final rawData = allTexts[i];
                              String data = allTexts[i]
                                  .replaceAll(RegExp(r'<[^>]*>'), ' ');
                              data = data.replaceAll('&nbsp;', '');
                              allTexts[i] = rawData;
                              //-------------------

                              if (data.contains(query)) {
                                // if (allTexts[i].contains(query)) {
                                page++;
                                if (page == pageNumber) {
                                  pageIndex = i;
                                  break;
                                }
                              }
                            }

                            if (pageIndex != -1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReadScreenForSearch(
                                    initialPage: pageIndex + 1,
                                    searchText: _searchController.text,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
