import 'package:booklyapp/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similer_list_view_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  BooksDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SimilerListViewSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
