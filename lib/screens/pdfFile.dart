import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class PdfPage extends StatefulWidget {
  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PDF.asset("assets/sample.pdf",
        height:700,
        width:double.infinity,),
        
      ),
      
    );
  }
}