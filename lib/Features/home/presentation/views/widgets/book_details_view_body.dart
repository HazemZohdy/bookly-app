import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/cusotm_bookly_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_detals_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similer_book_list_view_item.dart';
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
            const SizedBox(height: 10),
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
                'any Book',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const CustomBooklyRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 30),
            const BooksAction(),
            const SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SimilerBooksListView(),
          ],
        ),
      ),
    );
  }
}
