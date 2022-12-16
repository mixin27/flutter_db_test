import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class AppInitialization {
  AppInitialization._();

  static Future<void> initialized() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Copy database to application document directory
    await copyDatabaseToDevice();
  }
}

const String databaseName = "Armo.db";

/// [https://stackoverflow.com/a/51387985](https://stackoverflow.com/a/51387985)
Future<void> copyDatabaseToDevice() async {
  try {
    // Construct a file path to copy database to
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, databaseName);

    // Only copy if the database doesn't exist
    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      // Load database from asset and copy
      ByteData data =
          await rootBundle.load(join("assets", "database", databaseName));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Save copied asset to documents
      final copiedFile = await File(path).writeAsBytes(bytes);
      log("Database is copied to ${copiedFile.path}");
    } else {
      log("Database is already existed.");
    }
  } on IOException catch (e) {
    log("Error on copying database: $e");
  }
}
