import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSelectionControls extends MaterialTextSelectionControls {
  Offset _tapPosition = Offset.zero; // เก็บตำแหน่งที่กด

  // ฟังก์ชันที่เรียกเมนู Popup
  void showPopupMenu(BuildContext context) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        _tapPosition.dx, // ตำแหน่ง X ที่แตะ
        _tapPosition.dy, // ตำแหน่ง Y ที่แตะ
        overlay.size.width - _tapPosition.dx,
        overlay.size.height - _tapPosition.dy,
      ),
      items: [
        PopupMenuItem(
          value: 'search',
          child: Text('ค้นหาในพุทธรรม'),
        ),
        PopupMenuItem(
          value: 'copy',
          child: Text('คัดลอกข้อความ'),
        ),
      ],
    ).then((value) {
      if (value == 'copy') {
        Clipboard.setData(ClipboardData(text: "ข้อความที่ถูกคัดลอก"));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('คัดลอกข้อความเรียบร้อย!')),
        );
      }
    });
  }

  // จับตำแหน่งที่กด
  void setTapPosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }
}

class HighlightPopupExample extends StatefulWidget {
  @override
  _HighlightPopupExampleState createState() => _HighlightPopupExampleState();
}

class _HighlightPopupExampleState extends State<HighlightPopupExample> {
  late CustomSelectionControls _customControls;

  @override
  void initState() {
    super.initState();
    _customControls = CustomSelectionControls();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Highlight Popup Example'),
      ),
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          _customControls.setTapPosition(details); // จับตำแหน่งที่กด
        },
        onLongPress: () {
          _customControls.showPopupMenu(context); // แสดงเมนูเมื่อกดค้าง
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SelectableText(
            'ลองเลือกข้อความแล้วกดเพื่อแสดงเมนู',
            selectionControls: null, // ปิดเมนูป็อปอัพของระบบ
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}