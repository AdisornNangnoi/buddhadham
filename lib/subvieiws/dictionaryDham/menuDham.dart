import 'package:buddhadham/subvieiws/dictionaryDham/screenForReadDham.dart';
import 'package:buddhadham/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDham extends StatefulWidget {
  const MenuDham({super.key});

  @override
  State<MenuDham> createState() => _MenuDhamState();
}

class _MenuDhamState extends State<MenuDham> {
  // รายการหัวข้อในสารบัญ
  final List<Map<String, dynamic>> vocabList = [
    //หมวด 1
    {'title': 'เอกกะ - หมวด 1', 'page': 17},
    {'title': '[1] กัลยาณมิตตตา', 'page': 17},
    {'title': '[2] โยนิโสมนสิการ', 'page': 18},
    {'title': '[3] อัปปมาทะ', 'page': 19},
    //หมวด 2
    {'title': 'ทุกะ - หมวด 2', 'page': 20},
    {'title': '[4] กรรม 2', 'page': 20},
    {'title': '[5] กาม 2', 'page': 20},
    {'title': '[6] กามคุณ 5', 'page': 20},
    {'title': '[7] ฌาน 2', 'page': 21},
    {'title': '[8] ฌาน 2 ประเภท', 'page': 21},
    {'title': '[9] ฌาน 4, 5', 'page': 21},
    {'title': '[10] ฌาน 8', 'page': 22},
    {'title': '[11] ทาน 21', 'page': 22},
    {'title': '[12] ทาน 22', 'page': 22},
    {'title': '[13] ทิฏฐิ 2', 'page': 23},
    {'title': '[14] ทิฏฐิ 3', 'page': 23},
    {'title': '[15] ที่สุด (อันตา) 2', 'page': 23},
    {'title': '[16] ทุกข์ 2', 'page': 23},
    {'title': '[17] เทศนา 2\u00b9', 'page': 23},
    {'title': '[18] เทศนา 2\u00B2', 'page': 24},
    {'title': '[19] ธรรม 2\u00b9', 'page': 24},
    {'title': '[20] ธรรม 2\u00B2', 'page': 24},
    {'title': '[21] ธรรม 2\u00B3', 'page': 25},
    {'title': '[22] ธรรม 2\u2074', 'page': 25},
    {'title': '[23] ธรรมคุ้มครองโลก 2', 'page': 25},
    {'title': '[24] ธรรมทำให้งาม 2', 'page': 25},
    {'title': '[25] ธรรมมีอุปการะมาก 2', 'page': 25},
    {'title': '[26] ธุระ 22', 'page': 26},
    {'title': '[27] นิพพาน 2', 'page': 26},
    {'title': '[28] บัญญัติ 2, 6', 'page': 27},
    {'title': '[29] บุคคลหาได้ยาก 2', 'page': 28},
    {'title': '[30] บูชา 2', 'page': 28},
    {'title': '[31] ปฏิสันถาร 2', 'page': 28},
    {'title': '[32] ปธาน 2', 'page': 28},
    {'title': '[33] ปริเยสนา 2', 'page': 28},
    {'title': '[34] ปัจจัยให้เกิดสัมมาทิฏฐฐิ 2', 'page': 29},
    {'title': '[35] ปาพจน์ 2', 'page': 29},
    {'title': '[36] ภาวนา 2', 'page': 29},
    {'title': '[37] ภาวนา 4', 'page': 29},
    {'title': '[38] รูป 2\u00b9, 28', 'page': 30},
    {'title': '[39] มหาภูต หรือ ภูตรูป 4', 'page': 30},
    {'title': '[40] อุปาทารูป หรือ อุปาทายรูป 24', 'page': 31},
    {'title': '[41] รูป 2\u00B2', 'page': 32},
    {'title': '[42] ฤทธิ์ 2', 'page': 32},
    {'title': '[43] วิมุตติ 2', 'page': 32},
    {'title': '[44] เวปุลละ 2', 'page': 32},
    {'title': '[45] สมาธิ 2', 'page': 32},
    {'title': '[46] สมาธิ 3\u00B9', 'page': 33},
    {'title': '[47] สมาธิ 3\u00B2', 'page': 33},
    {'title': '[48] สังขาร 2', 'page': 33},
    {'title': '[49] สังคหะ 2', 'page': 33},
    {'title': '[50] สัจจะ 2', 'page': 34},
    {'title': '[51] สาสน์ หรือ ศาสนา 2', 'page': 34},
    {'title': '[52] สุข 2\u00B9', 'page': 34},
    {'title': '[53] สุข 2\u00B2', 'page': 34},
    {'title': '[54] สุทธิ 2', 'page': 35},
    {'title': '[55] อริยบุคคล 2', 'page': 35},
    {'title': '[56] อริยบุคคล 4', 'page': 35},
    {'title': '[57] อริยบุคคล 8', 'page': 36},
    {'title': '[58] โสดาบัน 3', 'page': 37},
    {'title': '[59] สกทาคามี 3, 5', 'page': 37},
    {'title': '[60] อนาคามี 5', 'page': 38},
    {'title': '[61] อรหันต์ 2', 'page': 38},
    {'title': '[62] อรหันต์ 4, 5, 60', 'page': 39},
    {'title': '[63] อริยบุคคล 7', 'page': 40},
    {'title': '[64] อัตถะ 2', 'page': 41},
    {'title': '[65] อุปัญญาตธรรม 2', 'page': 41},
    //หมวด 3
    {'title': 'ติกะ - หมวด 3', 'page': 42},
    {'title': '[66] กรรม 3', 'page': 42},
    {'title': '[67] กุศลมูล 3', 'page': 42},
    {'title': '[68] อกุศลมูล 3', 'page': 42},
    {'title': '[69] กุศลวิตก 3', 'page': 42},
    {'title': '[70] อกุศลวิตก 3', 'page': 43},
    {'title': '[71] โกศล 3', 'page': 43},
    {'title': '[72] ญาณ 3\u00B9', 'page': 43},
    {'title': '[73] ญาณ 3\u00B2', 'page': 44},
    {'title': '[74] ตัณหา 3', 'page': 44},
    {'title': '[75] ไตรปิฎก', 'page': 45},
    {'title': '[76] ไตรลักษณ์', 'page': 47},
    {'title': '[77] ทวาร 3', 'page': 48},
    {'title': '[78] ทวาร 6', 'page': 48},
    {'title': '[79] ทุกขตา 3', 'page': 48},
    {'title': '[80] ทุจริต 3', 'page': 48},
    {'title': '[81] สุจริต 3', 'page': 49},
    {'title': '[82] เทพ 3 ', 'page': 49},
    {'title': '[83] เทวทูต 3', 'page': 49},
    {'title': '[84] เทวทูต 5', 'page': 49},
    {'title': '[85] ธรรม 3', 'page': 50},
    {'title': '[86] ธรรมนิยาม 3', 'page': 50},
    {'title': '[87] นิมิต หรือ นิมิตต์ 3', 'page': 51},
    {'title': '[88] บุญกิริยาวัตถุ 3', 'page': 51},
    {'title': '[89] บุญกิริยาวัตถุ 10', 'page': 52},
    {'title': '[90] บุตร 3', 'page': 53},
    {'title': '[91] ปปัญจะ 3', 'page': 53},
    {'title': '[92] ปริญญา 3', 'page': 54},
    {'title': '[93] ปัญญา 3', 'page': 54},
    {'title': '[94] ปาฏิหาริย์ 3', 'page': 55},
    {'title': '[95] ปาปณิกธรรม 3', 'page': 55},
    {'title': '[96] พุทธจริยา 3', 'page': 55},
    {'title': '[97] พุทธโอวาท 3', 'page': 56},
    {'title': '[98] ภพ 3', 'page': 56},
    {'title': '[99] ภาวนา 3', 'page': 56},
    {'title': '[100] รัตนตรัย', 'page': 57},
    {'title': '[101] ลัทธินอกพระพุทธศาสนา 3', 'page': 57},
    {'title': '[102] โลก 3\u00B9', 'page': 58},
    {'title': '[103] โลก 3\u00B2', 'page': 58},
    {'title': '[104] โลก 3\u00B3', 'pag  ge': 58},
    {'title': '[105] วัฏฏะ 3 หรือ ไตรวัฏฏ์', 'page': 59},
    {'title': '[106] วิชชา 3', 'page': 59},
    {'title': '[107] วิโมกข์ 3', 'page': 59},
    {'title': '[108] วิรัติ 3', 'page': 60},
    {'title': '[109] วิเวก 3', 'page': 60},
    {'title': '[110] เวทนา 2', 'page': 61},
    {'title': '[111] เวทนา 3', 'page': 61},
    {'title': '[112] เวทนา 5', 'pagee': 61},
    {'title': '[113] เวทนา 6 ', 'page': 61},
    {'title': '[114] สมบัติ 3\u00B9', 'page': 62},
    {'title': '[115] สมบัติ 3\u00B2 หรือ ทานสมบัติ 3', 'page': 62},
    {'title': '[116] สรรณะ 3 หรือ ไตรสรณะ', 'page': 62},
    {'title': '[117] สังขตลักษณะ 3', 'page': 63},
    {'title': '[118] อสังขตลักษณะ 3', 'page': 63},
    {'title': '[119] สังขาร 3\u00B9', 'page': 63},
    {'title': '[120] สังขาร 3\u00B2', 'page': 64},
    {'title': '[121] สัทธรรม 3', 'page': 64},
    {'title': '[122] สันโดษ 3, 12', 'page': 65},
    {'title': '[123] สัปปุริสบัญญัติ 3', 'page': 65},
    {'title': '[124] สิกขา 3 หรือ ไตรสิกขา', 'page': 66},
    {'title': '[125] อธิปไตย 3', 'page': 66},
    {'title': '[126] อนุตตริยะ 3', 'page': 67},
    {'title': '[127] อนุตตริยะ 6', 'page': 67},
    {'title': '[128] อปัณณกปฏิปทา 3', 'page': 68},
    {'title': '[129] อภิสังขาร 3', 'page': 68},
    {'title': '[130] อัคคิ 3\u00B9', 'page': 68},
    {'title': '[131] อัคคิ 3\u00B2 หรือ อัคคิปาริจริยา', 'page': 69},
    {'title': '[132] อัตถะ หรือ อรรถ 3\u00B9', 'page': 69},
    {'title': '[133] อัตถะ หรือ อรรถ 3\u00B2', 'page': 70},
    {'title': '[134] อาการที่พระพุทธเจ้าทรงสั่งสอน 3', 'page': 70},
    {'title': '[135] อาสวะ 3', 'page': 71},
    {'title': '[136] อาสวะ 4', 'page': 71},
    //หมวด 4
    {'title': 'จตุกกะ - หมวด 4', 'page': 72},
    {'title': '[137] กรรมกิเลส 4', 'page': 72},
    {'title': '[138] กุลจิรัฏฐิติธรรม 4', 'page': 72},
    {'title': '[139] ฆราวาสธรรม 4', 'page': 73},
    {'title': '[140] จักร 4', 'page': 73},
    {'title': '[141] เจดีย์ 4', 'page': 74},
    {'title': '[142] ถูปารหบุคคล 4', 'page': 74},
    {'title': '[143] ทักขิณาวิสุทธิ 4', 'page': 75},
    {'title': '[144] ทิฏฐธัมมิกัตถสังวัตตนิกธรรม 4', 'page': 75},
    {'title': '[145] ธรรมสมาทาน 4', 'page': 76},
    {'title': '[146] ธาตุ 4', 'page': 76},
    {'title': '[147] ธาตุกัมมัฏฐาน 4', 'page': 77},
    {'title': '[148] ธาตุ 6', 'page': 77},
    {'title': '[149] ธาตุกัมมัฏฐาน 6', 'page': 78},
    {'title': '[150] นิมิต 4', 'page': 78},
    {'title': '[151] บริษัท 4\u00B9', 'page': 78},
    {'title': '[152] บริษัท 4\u00B2 ', 'page': 79},
    {'title': '[153] บุคคล 4', 'page': 79},
    {'title': '[154] ปฏิปทา 4', 'page': 80},
    {'title': '[155] ปฏิสัมภิทา 4', 'page': 80},
    {'title': '[156] ปธาน 4', 'page': 81},
    {'title': '[157] ปรมัตถธรรม 4', 'page': 81},
    {'title': '[158] ประมาณ หรือ ปมาณิก 4', 'page': 82},
    {'title': '[159] ปัจจัย 4', 'page': 83},
    {'title': '[160] ปาริสุทธิศีล 4', 'page': 83},
    {'title': '[161] พรหมวิหาร 4', 'page': 84},
    {'title': '[162] ภูมิ 4', 'page': 87},
    {'title': '[163] โภควิภาค 4', 'page': 87},
    {'title': '[164] มรรค 4', 'page': 88},
    {'title': '[165] ผล 4', 'page': 88},
    {'title': '[166] มหาปเทส 4\u00B9', 'page': 89},
    {'title': '[167] มหาปเทส 4\u00B2', 'page': 90},
    {'title': '[168] มิตรปฏิรูปก์ หรือ มิตรเทียม 4', 'page': 90},
    {'title': '[169] สุหทมิตร หรือ มิตรแท้ 4', 'page': 91},
    {'title': '[170] โยคะ 4', 'page': 92},
    {'title': '[171] โยนิ 4', 'page': 92},
    {'title': '[172] ลีลาการสอน 4', 'page': 93},
    {'title': '[173] วรรณะ 4', 'page': 93},
    {'title': '[174] วิธีปฏิบัติต่อทุกข์–สุข 4', 'page': 94},
    {'title': '[175] วิบัติ 4\u00B9', 'page': 94},
    {'title': '[176] วิบัติ 4\u00B2', 'page': 95},
    {'title': '[177] สมบัติ 4', 'page': 96},
    {'title': '[178] วิปัลลาส หรือ วิปลาส 4', 'page': 97},
    {'title': '[179] วุฒิ หรือ วุฒิธรรม 4', 'page': 97},
    {'title': '[180] เวสารัชชะ หรือ เวสารัชชญาณ 4', 'page': 98},
    {'title': '[181] ศรัทธา 4', 'page': 99},
    {'title': '[182] สติปัฏฐาน 4', 'page': 100},
    {'title': '[183] สมชีวิธรรม 4', 'page': 101},
    {'title': '[184] สมาธิภาวนา 4', 'page': 101},
    {'title': '[185] สังขาร 4', 'page': 102},
    {'title': '[186] สังคหวัตถุ 4', 'page': 102},
    {'title': '[187] สังคหวัตถุของผู้ครองแผ่นดิน 4 หรือ ราช-สังคหวัตถุ 4', 'page': 103},
    {'title': '[188] สังเวชนียสถาน 4', 'page': 104},
    {'title': '[189] สัมปชัญญะ 4', 'page': 105},
    {'title': '[190] สัมปทา หรือ สัมปทาคุณ 4', 'page': 106},
    {'title': '[191] สัมปรายิกัตถสังวัตตนิกธรรม 4', 'page': 106},
    {'title': '[192] สุขของคฤหัสถ์ 4', 'page': 107},
    {'title': '[193] โสดาปัตติยังคะ 4\u00B9', 'page': 107},
    {'title': '[194] โสดาปัตติยังคะ 4\u00B2', 'page': 108},
    {'title': '[195] โสดาปัตติยังคะ 4\u00B3', 'page': 108},
    {'title': '[196] อคติ 4', 'page': 108},
    {'title': '[197] อธิษฐาน หรือ อธิษฐานธรรม 4', 'page': 109},
    {'title': '[198] อบาย 4, อบายภูมิ 4; และ [351]', 'page': 109},
    {'title': '[199] อบายมุข 4', 'page': 110},
    {'title': '[200] อบายมุข 6', 'page': 110},
    {'title': '[201] วัฒนมุข 6', 'page': 112},
    {'title': '[202] อปัสเสนะ หรือ อปัสเสนธรรม 4', 'page': 113},
    {'title': '[203] อริยวงศ์ 4', 'page': 114},
    {'title': '[204] อริยสัจจ์ 4', 'page': 115},
    {'title': '[205] กิจในอริยสัจจ์ 4', 'page': 116},
    {'title': '[206] ธรรม 4', 'page': 117},
    {'title': '[207] อรูป หรือ อารุปป์ 4', 'page': 117},
    {'title': '[208] อวิชชา 4', 'page': 118},
    {'title': '[209] อวิชชา 8', 'page': 118},
    {'title': '[210] อันตรายของภิกษุสามเณรผู้บวชใหม่ 4', 'page': 118},
    {'title': '[211] อาจารย์ 4', 'page': 119},
    {'title': '[212] อาหาร 4', 'page': 120},
    {'title': '[213] อิทธิบาท 4', 'page': 121},
    {'title': '[214] อุปาทาน 4', 'page': 121},
    {'title': '[215] โอฆะ 4', 'page': 121},
    //หมวด 5
    {'title': 'ปัญจกะ – หมวด 5', 'page': 123},
    {'title': '[216] ขันธ์ 5 หรือ เบญจขันธ์', 'page': 123},
    {'title': '[217] จักขุ 5', 'page': 124},
    {'title': '[218] ธรรมขันธ์ 5', 'page': 124},
    {'title': '[219] ธรรมเทสกธรรม 5', 'page': 125},
    {'title': '[220] ธรรมสมาธิ 5', 'page': 125},
    {'title': '[221] ธรรมสวนานิสงส์ 5', 'page': 126},
    {'title': '[222] นวกภิกขุธรรม 5', 'page': 126},
    {'title': '[223] นิยาม 5', 'page': 127},
    {'title': '[224] นิโรธ 5', 'page': 127},
    {'title': '[225] นิวรณ์ 5', 'page': 128},
    {'title': '[226] ปีติ 5', 'page': 128},
    {'title': '[227] พร 5', 'page': 129},
    {'title': '[228] พละ 5', 'page': 129},
    {'title': '[229] พละ 4', 'page': 130},
    {'title': '[230] พละ 5 ของพระมหากษัตริย์', 'page': 131},
    {'title': '[231] พหูสูตมีองค์ 5', 'page': 131},
    {'title': '[232] โภคอาทิยะ หรือ โภคาทิยะ 5', 'page': 132},
    {'title': '[233] มัจฉริยะ 5', 'page': 133},
    {'title': '[234] มาร 5', 'page': 133},
    {'title': '[235] วณิชชา 5', 'page': 134},
    {'title': '[236] วิมุตติ 5', 'page': 134},
    {'title': '[237] เวสารัชชกรณธรรม 5', 'page': 134},
    {'title': '[238] ศีล 5 หรือ เบญจศีล', 'page': 135},
    {'title': '[239] เบญจธรรม หรือ เบญจกัลยาณธรรม', 'page': 135},
    {'title': '[240] ศีล 8 หรือ อัฏฐศีล', 'page': 136},
    {'title': '[241] ศีล 8 ทั้งอาชีวะ หรือ อาชีวัฏฐมกศีล', 'page': 137},
    {'title': '[242] ศีล 10 หรือ ทศศีล', 'page': 137},
    {'title': '[243] สังวร 5', 'page': 138},
    {'title': '[244] สุทธาวาส 5', 'page': 138},
    {'title': '[245] อนันตริยกรรม 5', 'page': 139},
    {'title': '[246] อนุปุพพิกถา 5', 'page': 139},
    {'title': '[247] อภิณหปัจจเวกขณ์ 5', 'page': 140},
    {'title': '[248] ปัพพชิตอภิณหปัจเวกขณ์ 10', 'page': 141},
    {'title': '[249] อริยวัฑฒิ หรือ อารยวัฒิ 5', 'page': 142},
    {'title': '[250] อายุสสธรรม หรือ อายุวัฒนธรรม 5', 'page': 142},
    {'title': '[251] อาวาสิกธรรม 5\u00B9', 'page': 143},
    {'title': '[252] อาวาสิกธรรม 5\u00B2', 'page': 143},
    {'title': '[253] อาวาสิกธรรม 5\u00B3', 'page': 144},
    {'title': '[254] อาวาสิกธรรม 5\u2074', 'page': 144},
    {'title': '[255] อาวาสิกธรรม 5\u2075', 'page': 145},
    {'title': '[256] อาวาสิกธรรม 5\u2076', 'page': 145},
    {'title': '[257] อาวาสิกธรรม 5\u2077', 'page': 146},
    {'title': '[258] อินทรีย์ 5', 'page': 146},
    {'title': '[259] อุบาสกธรรม 5', 'page': 147},
    {'title': '[260] อุบาสกธรรม 7', 'page': 147},

//หมวด 6
    {'title': 'ฉักกะ – หมวด 6', 'page': 148},
    {'title': '[261] คารวะ หรือ คารวตา 6', 'page': 148},
    {'title': '[262] จริต หรือ จริยา 6', 'page': 149},
    {'title': '[263] เจตนา หรือ สัญเจตนา 6', 'page': 149},
    {'title': '[264] ตัณหา 6', 'page': 150},
    {'title': '[265] ทิศ 6', 'page': 151},
    {'title': '[266] ปิยรูป สาตรูป 6 x 10', 'page': 157},
    {'title': '[267] ภัพพตาธรรม 6', 'page': 157},
    {'title': '[268] วิญญาณ 6', 'page': 158},
    {'title': '[269] เวปุลลธรรม 6', 'page': 158},
    {'title': '[270] สวรรค์ 6', 'page': 159},
    {'title': '[271] สัญญา 6', 'page': 159},
    {'title': '[272] สัมผัส หรือ ผัสสะ 6', 'page': 160},
    {'title': '[273] สารณียธรรม 6', 'page': 160},
    {'title': '[274] อภิญญา 6', 'page': 161},
    {'title': '[275] อภิฐาน 6', 'page': 161},
    {'title': '[276] อายตนะภายใน 6', 'page': 161},
    {'title': '[277] อายตนะภายนอก 6', 'page': 162},

//หมวด 7
    {'title': 'สัตตกะ – หมวด 7', 'page': 163},
    {'title': '[278] กัลยาณมิตรธรรม 7', 'page': 163},
    {'title': '[279] ธรรมมีอุปการะมาก 7 [292]', 'page': 163},
    {'title': '[280] บุพนิมิตแห่งมรรค 7', 'page': 164},
    {'title': '[281] โพชฌงค์ 7', 'page': 165},
    {'title': '[282] ภรรยา 7', 'page': 165},
    {'title': '[283] เมถุนสังโยค 7', 'page': 166},
    {'title': '[284] วิญญาณฐิติ 7', 'page': 167},
    {'title': '[285] วิสุทธิ 7', 'page': 168},
    {'title': '[286] สัปปายะ 7', 'page': 169},
    {'title': '[287] สัปปุริสธรรม \u00B9', 'page': 170},
    {'title': '[288] อนุสัย 7', 'page': 171},
    {'title': '[289] อปริหานิยธรรม 7\u00B9', 'page': 171},
    {'title': '[290] อปริหานิยธรรม 7\u00B2', 'page': 172},
    {'title': '[291] อปริหานิยธรรม 7\u00B3', 'page': 173},
    {'title': '[292] อริยทรัพย์ 7', 'page': 174},

//หมวด 8
    {'title': 'อัฏฐกะ – หมวด 8', 'page': 175},
    {'title': '[293] มรรคมีองค์ 8 หรือ อัฏฐังคิกมรรค', 'page': 175},
    {'title': '[294] ลักษณะตัดสินธรรมวินัย 8', 'page': 176},
    {'title': '[295] ลักษณะตัดสินธรรมวินัย 7', 'page': 176},
    {'title': '[296] โลกธรรม 8', 'page': 177},
    {'title': '[297] วิชชา 8', 'page': 177},
    {'title': '[298] วิโมกข์ 8', 'page': 178},
    {'title': '[299] สมาบัติ 8', 'page': 179},
    {'title': '[300] สัปปุริสทาน 8', 'page': 179},
    {'title': '[301] สัปปุริสธรรม 8', 'page': 180},

//หมวด 9
    {'title': 'นวกะ – หมวด 9', 'page': 181},
    {'title': '[302] นวังคสัตถุศาสน์', 'page': 181},
    {'title': '[303] พุทธคุณ 9', 'page': 182},
    {'title': '[304] พุทธคุณ 2', 'page': 183},
    {'title': '[305] พุทธคุณ 3', 'page': 183},
    {'title': '[306] ธรรมคุณ 6', 'page': 183},
    {'title': '[307] สังฆคุณ 9', 'page': 184},
    {'title': '[308] มละ 9', 'page': 184},
    {'title': '[309] มานะ 9', 'page': 185},
    {'title': '[310] โลกุตตรธรรม 9', 'page': 185},
    {'title': '[311] วิปัสสนาญาณ 9', 'page': 186},
    {'title': '[312] สัตตาวาส 9', 'page': 187},
    {'title': '[313] อนุบุพพวิหาร 9', 'page': 187},

//หมวด 10
    {'title': 'ทสกะ – หมวด 10', 'page': 188},
    {'title': '[314] กถาวัตถุ 10', 'page': 188},
    {'title': '[315] กสิณ 10', 'page': 189},
    {'title': '[316] กามโภคี 10', 'page': 190},
    {'title': '[317] กาลามสูตรกังขานิยฐาน 10', 'page': 191},
    {'title': '[318] กิเลส 10', 'page': 192},
    {'title': '[319] กุศลกรรมบถ 10\u00B9', 'page': 192},
    {'title': '[320] กุศลกรรมบถ 10\u00B2', 'page': 193},
    {'title': '[321] อกุศลกรรมบถ 10', 'page': 194},
    {'title': '[322] เถรธรรม 10', 'page': 195},
    {'title': '[323] ทศพลญาณ', 'page': 196},
    {'title': '[324] นาาถกรณธรรม 10', 'page': 197},
    {'title': '[325] บารมี 10 หรือ ทศบารมี', 'page': 198},
    {'title': '[326] ราชธรรม 10 หรือ ทศพิธราชธรรม  ', 'page': 199},
    {'title': '[327] วัตถุประสงค์ในการบัญญัติพระวินัย 10', 'page': 200},
    {'title': '[328] วิปัสสนูปกิเลส 10', 'page': 201},
    {'title': '[329] สังโยชน์ 10\u00B9', 'page': 201},
    {'title': '[330] สังโยชน์ 10\u00B2', 'page': 202},
    {'title': '[331] สัญญา 10', 'page': 202},
    {'title': '[332] สัทธรรม 10', 'page': 203},
    {'title': '[333] สัมมัตตะ 10', 'page': 203},
    {'title': '[334] มิจฉัตตะ 10', 'page': 203},
    {'title': '[335] อนุสติ 10', 'page': 204},
    {'title': '[336] อสุภะ 10', 'page': 205},
    {'title': '[337] อันตคาหิกทิฏฐิ 10', 'page': 205},

//หมวดเกิน 10
    {'title': 'อติเรกทสกะ – หมวดเกิน 10', 'page': 206},
    {'title': '[338] กรรม 12', 'page': 206},
    {'title': '[339] จักรวรรดิวัตร 5, 12', 'page': 207},
    {'title': '[340] ปฏิจจสมุปบาท 12', 'page': 209},
    {'title': '[341] อายตนะ 12', 'page': 213},
    {'title': '[342] ธุดงค์ 13', 'page': 213},
    {'title': '[343] กิจ หรือ วิญญาณกิจ 14', 'page': 216},
    {'title': '[344] จรณะ 15', 'page': 217},
    {'title': '[345] ญาณ 16 หรือ โสฬสญาณ', 'page': 217},
    {'title': '[346] อานาปานสติ 16 ฐาน', 'page': 218},
    {'title': '[347] อุปกิเลส หรือ จิตตอุปกิเลส 16', 'page': 223},
    {'title': '[348] ธาตุ 18', 'page': 224},
    {'title': '[349] อินทรีย์ 22', 'page': 225},
    {'title': '[350] ปัจจัย 24', 'page': 226},
    {'title': '[351] ภูมิ 4 หรือ 31', 'page': 227},
    {'title': '[352] โพธิปักขิยธรรม 37', 'page': 230},
    {'title': '[353] มงคล 38', 'page': 232},
    {'title': '[354] กรรมฐาน 40', 'page': 370},
    {'title': '[355] เจตสิก 52', 'page': 235},
    {'title': '[356] จิต 89 หรือ 121', 'page': 236},
    {'title': '[357] ตัณหา 108', 'page': 239},
    {'title': '[358] เวทนา 108', 'page': 249},
    {'title': '[359] กิเลส 1500', 'page': 249}
  ];

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
          textAlign: TextAlign.center,
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
                    'สารบัญ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true, // ใช้เพื่อให้ ListView ไม่ขยายเกินพื้นที่ที่กำหนด
                  physics: NeverScrollableScrollPhysics(), // ปิดการ scroll ใน ListView เพื่อให้ใช้ scroll ของ SingleChildScrollView
                  itemCount: vocabList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: _buildRow(vocabList[index]['title'], vocabList[index]['page'].toString()),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReadScreenDham(
                              initialPage: vocabList[index]['page'],
                            ),
                          ),
                        );
                      },
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ListTile(
        //   title: Text(
        //     title,
        //     style: TextStyle(
        //       fontSize: 18,
        //       color: AppColors().primaryColor,
        //     ),
        //   ),
        //   // trailing: Text(
        //   //   'หน้า $page',
        //   //   style: TextStyle(
        //   //     fontSize: 16,
        //   //     color: AppColors().textColor,
        //   //   ),
        //   // ),
        // ),
        Wrap(         
          children: [
            title.contains('หมวด') == true
            ? Text(
              title,
              style: TextStyle(
                // fontSize: 18,
                color: AppColors().primaryColor,
                fontWeight: FontWeight.bold,
              ),
            )
            : Text(
              title,
              style: TextStyle(
                // fontSize: 18,
                color: AppColors().primaryColor,
              ),
            ),
          ],
        ),
<<<<<<< HEAD
        Divider(),
      ],
=======
      ),
      // trailing: Text(
      //   'หน้า $page',
      //   style: TextStyle(
      //     fontSize: 16,
      //     color: AppColors().textColor,
      //   ),
      // ),
>>>>>>> 96a4e4092104b876b08194c6718deb949bce10de
    );
  }
}
