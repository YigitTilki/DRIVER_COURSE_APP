import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import 'pagelist.dart';
import 'package:sizer/sizer.dart';

class BookPage extends StatelessWidget {
  BookPage({Key? key, required this.pdfAssetPath}) : super(key: key);
  final String pdfAssetPath;
  final Completer<PDFViewController> _pdfViewController =
      Completer<PDFViewController>();
  final StreamController<String> _pageCountController =
      StreamController<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('E-Kitap',style: TextStyle(color: Colors.white,fontSize: 2.5.h),),
        backgroundColor: Color.fromRGBO(51, 61, 71, 1),
      ),
      body: Container(
        width: 105.h,
        height: 105.h,
        child: PDF(
          enableSwipe: true,
          swipeHorizontal: true,
          autoSpacing: false,
          pageFling: false,
          onPageChanged: (int? current, int? total) =>
              _pageCountController.add('${current! + 1} - $total'),
          onViewCreated: (PDFViewController pdfViewController) async {
            _pdfViewController.complete(pdfViewController);
            final int currentPage =
                await pdfViewController.getCurrentPage() ?? 0;
            final int? pageCount = await pdfViewController.getPageCount();
            _pageCountController.add('${currentPage + 1} - $pageCount');
          },
        ).fromAsset(
          "assets/eKitap.pdf",
          errorWidget: (dynamic error) => Center(child: Text(error.toString())),
        ),
      ),
      floatingActionButton: FutureBuilder<PDFViewController>(
        future: _pdfViewController.future,
        builder: (_, AsyncSnapshot<PDFViewController> snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 2.5.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(51, 61, 71, 1)),
                  child:  Text(
                    'Önceki Konu',
                    style: TextStyle(fontSize: 1.5.h),
                  ),
                  onPressed: () async {
                    final PDFViewController pdfController = snapshot.data!;

                    if (PageList.index > 0) {
                      PageList.index -= 1;
                      if (PageList.index == -1) {
                        PageList.index = 0;
                      }
                      await pdfController
                          .setPage(PageList.pageList[PageList.index]);
                    }
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(51, 61, 71, 1)),
                  child:  Text('Geri', style: TextStyle(fontSize: 1.5.h)),
                  onPressed: () async {
                    final PDFViewController pdfController = snapshot.data!;
                    final int currentPage =
                        (await pdfController.getCurrentPage())! - 1;
                    if (currentPage >= 0) {
                      await pdfController.setPage(currentPage);
                    }
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(51, 61, 71, 1)),
                  child:  Text('İleri', style: TextStyle(fontSize: 1.5.h)),
                  onPressed: () async {
                    final PDFViewController pdfController = snapshot.data!;
                    final int currentPage =
                        (await pdfController.getCurrentPage())! + 1;
                    final int numberOfPages =
                        await pdfController.getPageCount() ?? 0;
                    if (numberOfPages > currentPage) {
                      await pdfController.setPage(currentPage);
                    }
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(51, 61, 71, 1)),
                  child:  Text('Sonraki Konu',
                      style: TextStyle(fontSize: 1.5.h)),
                  onPressed: () async {
                    final PDFViewController pdfController = snapshot.data!;

                    if (PageList.index < 15) {
                      PageList.index += 1;
                      if (PageList.index == 15) {
                        PageList.index = 14;
                      }
                      await pdfController
                          .setPage(PageList.pageList[PageList.index]);
                    }
                  },
                ),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
