import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/cusotm_bookly_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_detals_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 42),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 14),
        CustomBooklyRating(
          count: book.volumeInfo.pageCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        BooksAction(
          bookmodel: book,
        ),
      ],
    );
  }
}
