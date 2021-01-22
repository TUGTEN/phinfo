import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:phinfo/services/info_service.dart';

class GeneratePage extends StatefulWidget {
  GeneratePage({Key key}) : super(key: key);

  @override
  _GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
  //Services
  InfoService infoService = InfoService();
  Share share;
  DeviceInfoPlugin deviceInfoPlugin;

  String filename;
  String filepath;

  bool isLoading = true;
  bool _reportStarted = false;

  _loadDeviceInfo() async {
    await infoService.getInfo();
    setState(() {
      filename = infoService.filename;
      filepath = infoService.filepath;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Click below to Generate a device report"),
              RaisedButton(
                child: Text("Generate"),
                onPressed: () {
                  setState(() {
                    _reportStarted = true;
                    _loadDeviceInfo();
                  });
                },
              ),
              _reportStarted
                  ? (isLoading
                      ? Container(
                          child: CircularProgressIndicator(),
                        )
                      : Text("$filename generated"))
                  : Container(),
              _reportStarted && !isLoading
                  ? Column(
                      children: [
                        Text("Share report"),
                        RaisedButton(
                            child: Text("Share"),
                            onPressed: () {
                              Share.shareFiles(
                                [filepath],
                                subject: "ALPAPP UX: Device info"
                              );
                            })
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
