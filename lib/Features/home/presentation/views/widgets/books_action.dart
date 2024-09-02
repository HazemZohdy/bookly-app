import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/utils/launch_url.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onpressed: () async {
                launchCustomUrl(context, bookmodel.volumeInfo.previewLink!);
              },
              backgraoondColor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onpressed: () async {
                launchCustomUrl(context, bookmodel.accessInfo!.webReaderLink!);
              },
              fontsize: 16,
              backgraoondColor: const Color(0xffEF8262),
              textColor: Colors.white,
              text: GitText(bookmodel),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String GitText(BookModel bookmodel) {
    if (bookmodel.volumeInfo.previewLink == null) {
      return 'Not Avalalble';
    } else {
      return 'preview';
    }
  }
}
