import 'package:device_info/device_info.dart';
import 'package:phinfo/models/device_info.dart';

import '_file_service.dart';

class InfoService {
  FileService service;
  DeviceInfo info;

  String _filename;
  String _filepath;

  String get filename => _filename;

  String get filepath => _filepath;

  getInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    await deviceInfo.androidInfo.then(
      (value) async {
        info = DeviceInfo.fromInfo(value);

        service = FileService(info);
        await service.generateFile();

        _filename = service.filename;
        _filepath = service.filepath;

      },
    );
  }
}
