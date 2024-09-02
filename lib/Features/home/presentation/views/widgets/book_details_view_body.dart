import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similer_list_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  BooksDetailsSection(
                    book: bookmodel,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  const SimilerListViewSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
