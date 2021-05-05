import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class PDfFileAccess extends StatefulWidget {
  @override
  _PDfFileAccessState createState() => _PDfFileAccessState();
}

class _PDfFileAccessState extends State<PDfFileAccess> {
  File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: file != null
            ? PDF.file(
                file,
                height: 700,
                width: double.infinity,
              )
            :
            // ignore: deprecated_member_use
            RaisedButton(
                onPressed: () async {
                  File pickedFile = await FilePicker.getFile(
                    type: FileType.CUSTOM,
                    fileExtension: 'pdf',
                  );
                  setState(() {
                    file = pickedFile;
                  });
                },
                child: Text("Pick PDf"),
              ),
      ),
    );
  }
}
