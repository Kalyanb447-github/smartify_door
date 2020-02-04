import 'dart:io';

import 'package:path_provider/path_provider.dart';

class AppUtil {
  String folderName = 'Smartify';
  String fileName = 'smartify_Shutter.txt';
  Directory _appDocDir;

  Future<String> findAppPath() async {
    _appDocDir = await getExternalStorageDirectory();
    final Directory _appFile =
        Directory('${_appDocDir.path}/$folderName/$fileName');
    return _appFile.path;
//  if (await File(_appFile.path).exists()) {
// //  Navigator.of(context).pushReplacement(
// //       MaterialPageRoute(
// //         builder: (context) => ButtonDashboard(),
// //       ),
// //     );
//  }
    //  List<String> valueOfLile = await ourTempFile.readAsLines();
    // text = await ourTempFile.readAsString();
    // if (await ourTempFile.exists()) {
    //   setState(() {
    //     location = valueOfLile[0];
    //     location = valueOfLile[1];
    //     buttonStatus = valueOfLile[2];
    //   });
    // }
  }

  storeAllButtonData(
      {
        String data
        }) async {
    String mainFilePath = await findAppPath();
    File mainfile = File(mainFilePath);
    mainfile.writeAsString(data);
  }

  // static Future<String> createFolderInAppDocDir(String folderName) async {
  //   //Get this App Document Directory
  //   final Directory _appDocDir = await getExternalStorageDirectory();
  //   //App Document Directory + folder name
  //   final Directory _appDocDirFolder =
  //       Directory('${_appDocDir.path}/$folderName/');
  //   //rootDirectory= _appDocDirFolder.path;
  //   if (await _appDocDirFolder.exists()) {
  //     //if folder already exists return path
  //     return _appDocDirFolder.path;
  //   } else {
  //     //if folder not exists create folder and then return its path
  //     final Directory _appDocDirNewFolder =
  //         await _appDocDirFolder.create(recursive: true);
  //     return _appDocDirNewFolder.path;
  //   }
  // }
}
