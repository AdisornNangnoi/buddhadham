import 'package:flutter/material.dart';

void showContextMenu(BuildContext context, String selectedText) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 50,
      right: 20,
      child: Material(
        color: Colors.transparent,
        child: PopupMenuButton<String>(
          onSelected: (value) {},
          itemBuilder: (context) => [
            PopupMenuItem<String>(
              value: 'info',
              child: Text('Selected Text: $selectedText'),
            ),
          ],
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  Future.delayed(Duration(seconds: 2), () {
    overlayEntry.remove();
  });
}
