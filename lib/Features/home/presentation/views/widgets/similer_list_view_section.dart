import 'package:booklyapp/Features/home/presentation/views/widgets/similer_book_list_view_item.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilerListViewSection extends StatelessWidget {
  const SimilerListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilerBooksListView(),
      ],
    );
  }
}
