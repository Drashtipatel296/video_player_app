import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';

import 'package:share/share.dart';

class ShareProvider with ChangeNotifier {
  Future<void> shareReel(String assetPath) async {
    try {
      final directory = await getTemporaryDirectory();
      final filePath = '${directory.path}/video.mp4';

      final byteData = await rootBundle.load(assetPath);
      final file = File(filePath);
      await file.writeAsBytes(byteData.buffer.asUint8List());

      Share.shareFiles([filePath], text: 'Check out this awesome reel!');
      notifyListeners();
    } catch (e) {
      print('Error sharing reel: $e');
    }
  }
}