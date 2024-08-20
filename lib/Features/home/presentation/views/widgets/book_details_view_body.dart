import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_detals_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 42),
            Text(
              'The jungle Book',
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold,
               ),
            ),
            Opacity(
              opacity: .7,
              child: Text(
                'The jungle Book',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
