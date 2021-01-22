import 'dart:convert';

import 'package:device_info/device_info.dart';
import 'package:system_info/system_info.dart';

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

  //SystemInfo
  final String kernelArchitecture;
  final int kernelBitness;
  final String kernelName;
  final String kernelVersion;
  final String operatingSystemName;
  final String operatingSystemVersion;
  final int processorsCount;
  final List<Map<String, dynamic>> processorInfo;
  final String userDirectory;
  final String userId;
  final String userName;
  final int userSpaceBitness;
  final int freePMemory;
  final int freeVMemory;
  final int totalPMemory;
  final int totalVMemory;
  final int vMemorySize;

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
  })  : kernelArchitecture = SysInfo.kernelArchitecture,
        kernelBitness = SysInfo.kernelBitness,
        kernelName = SysInfo.kernelName,
        kernelVersion = SysInfo.kernelVersion,
        operatingSystemName = SysInfo.operatingSystemName,
        operatingSystemVersion = SysInfo.operatingSystemVersion,
        processorsCount = SysInfo.processors.length,
        processorInfo = SysInfo.processors
            .map((ProcessorInfo info) => {
                  "architecture": info.architecture.name,
                  "name": info.name,
                  "socket": info.socket,
                  "vendor": info.vendor,
                })
            .toList(),
        userDirectory = SysInfo.userDirectory,
        userId = SysInfo.userId,
        userName = SysInfo.userName,
        userSpaceBitness = SysInfo.userSpaceBitness,
        freePMemory = SysInfo.getFreePhysicalMemory(),
        freeVMemory = SysInfo.getFreeVirtualMemory(),
        totalPMemory = SysInfo.getTotalPhysicalMemory(),
        totalVMemory = SysInfo.getTotalVirtualMemory(),
        vMemorySize = SysInfo.getVirtualMemorySize();

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
      'kernelArchitecture': kernelArchitecture,
      'kernelBitness': kernelBitness,
      'kernelName': kernelName,
      'kernelVersion': kernelVersion,
      'operatingSystemName': operatingSystemName,
      'operatingSystemVersion': operatingSystemVersion,
      'processorsCount': processorsCount,
      'processorInfo': processorInfo,
      'userDirectory': userDirectory,
      'userId': userId,
      'userName': userName,
      'userSpaceBitness': userSpaceBitness,
      'freePhysicalMemory': freePMemory,
      'freeVirtualMemory': freeVMemory,
      'totalPhysicalMemory': totalPMemory,
      'totalVirtualMemory': totalVMemory,
      'virtualMemorySize': vMemorySize,
    };
  }

  String toJson() => json.encode(toMap());

  factory DeviceInfo.fromInfo(AndroidDeviceInfo map) {
    if (map == null) return null;

    return DeviceInfo(
      androidId: map.androidId,
      board: map.board,
      bootloader: map.bootloader,
      baseOS: map.version.baseOS,
      codename: map.version.codename,
      brand: map.brand,
      device: map.device,
      display: map.display,
      fingerprint: map.fingerprint,
      hardware: map.hardware,
      host: map.host,
      incremental: map.version.incremental,
      id: map.id,
      manufacturer: map.manufacturer,
      model: map.model,
      product: map.product,
      previewSdkInt: map.version.previewSdkInt,
      release: map.version.release,
      sdkInt: map.version.sdkInt,
      securityPatch: map.version.securityPatch,
      supported32BitAbis: map.supported32BitAbis,
      supported64BitAbis: map.supported64BitAbis,
      supportedAbis: map.supportedAbis,
      systemFeatures: map.systemFeatures,
      tags: map.tags,
      type: map.type,
    );
  }
}
