import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({super.key});

  @override
  State<HomePage5> createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  late PdfControllerPinch pdfControllerPinch;

  int totalPageCount = 0, currentPage = 1;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset(
            'assets/IAS_Fundamental-Duties-in-India-Article-51A-2023-copy-1.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Total Pages: ${totalPageCount}"),
            IconButton(
              onPressed: () {
                pdfControllerPinch.previousPage(
                  duration: Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.linear,
                );
              },
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
            Text("Current Page: ${currentPage}"),
            IconButton(
              onPressed: () {
                pdfControllerPinch.nextPage(
                  duration: Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.linear,
                );
              },
              icon: Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
        _pdfView(),
      ],
    );
  }

  Widget _pdfView() {
    return Expanded(
      child: PdfViewPinch(
        scrollDirection: Axis.vertical,
        controller: pdfControllerPinch,
        onDocumentLoaded: (doc) {
          setState(() {
            totalPageCount = doc.pagesCount;
          });
        },
        onPageChanged: (page) {
          setState(() {
            currentPage = page;
          });
        },
      ),
    );
  }
}
