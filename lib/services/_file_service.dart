import 'package:phinfo/models/device_info.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileService {
  String _filename;
  String _filepath;
  String state;
  DeviceInfo _deviceInfo;

  //Getters
  String get filename {
    return _filename ?? Exception("Call Generate file before");
  }

  String get filepath {
    return _filepath ?? Exception("Call Generate file before");
  }

  FileService(this._deviceInfo);

  generateFile() async {
    final Directory directory = await getExternalStorageDirectory();
    _filename = _genFilename(_deviceInfo);
    _filepath = '${directory.path}/' + filename + ".txt";
    print(_deviceInfo.toJson());
    File(filepath).writeAsStringSync(_deviceInfo.toJson());
  }

  String _genFilename(DeviceInfo deviceInfo) {
    return deviceInfo.board +
        deviceInfo.androidId +
        DateTime.now().toIso8601String();
  }
}
