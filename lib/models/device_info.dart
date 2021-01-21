import 'dart:convert';

class DeviceInfo {
  final String androidId;
  final String board;
  final String bootloader;
  final String baseOS;
  final String codename;
  final String brand;
  final String device;
  final String display;
  final String fingerprint;
  final String hardware;
  final String host;
  final String incremental;
  final String id;
  final String manufacturer;
  final String model;
  final String product;
  final int previewSdkInt;
  final String release;
  final int sdkInt;
  final String securityPatch;
  final List<String> supported32BitAbis;
  final List<String> supported64BitAbis;
  final List<String> supportedAbis;
  final List<String> systemFeatures;
  final String tags;
  final String type;
  final String version;
  DeviceInfo({
    this.androidId,
    this.board,
    this.bootloader,
    this.baseOS,
    this.codename,
    this.brand,
    this.device,
    this.display,
    this.fingerprint,
    this.hardware,
    this.host,
    this.incremental,
    this.id,
    this.manufacturer,
    this.model,
    this.product,
    this.previewSdkInt,
    this.release,
    this.sdkInt,
    this.securityPatch,
    this.supported32BitAbis,
    this.supported64BitAbis,
    this.supportedAbis,
    this.systemFeatures,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return {
      'androidId': androidId,
      'board': board,
      'bootloader': bootloader,
      'baseOS': baseOS,
      'codename': codename,
      'brand': brand,
      'device': device,
      'display': display,
      'fingerprint': fingerprint,
      'hardware': hardware,
      'host': host,
      'incremental': incremental,
      'id': id,
      'manufacturer': manufacturer,
      'model': model,
      'product': product,
      'previewSdkInt': previewSdkInt,
      'release': release,
      'sdkInt': sdkInt,
      'securityPatch': securityPatch,
      'supported32BitAbis': supported32BitAbis,
      'supported64BitAbis': supported64BitAbis,
      'supportedAbis': supportedAbis,
      'systemFeatures': systemFeatures,
      'tags': tags,
      'type': type,
      'version': version,
    };
  }

  factory DeviceInfo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return DeviceInfo(
      androidId: map['androidId'],
      board: map['board'],
      bootloader: map['bootloader'],
      baseOS: map['baseOS'],
      codename: map['codename'],
      brand: map['brand'],
      device: map['device'],
      display: map['display'],
      fingerprint: map['fingerprint'],
      hardware: map['hardware'],
      host: map['host'],
      incremental: map['incremental'],
      id: map['id'],
      manufacturer: map['manufacturer'],
      model: map['model'],
      product: map['product'],
      previewSdkInt: map['previewSdkInt'],
      release: map['release'],
      sdkInt: map['sdkInt'],
      securityPatch: map['securityPatch'],
      supported32BitAbis: List<String>.from(map['supported32BitAbis']),
      supported64BitAbis: List<String>.from(map['supported64BitAbis']),
      supportedAbis: List<String>.from(map['supportedAbis']),
      systemFeatures: List<String>.from(map['systemFeatures']),
      tags: map['tags'],
      type: map['type'],
      version: map['version'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DeviceInfo.fromJson(String source) => DeviceInfo.fromMap(json.decode(source));
}
