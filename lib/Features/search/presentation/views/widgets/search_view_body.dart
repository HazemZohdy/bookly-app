import 'package:booklyapp/Features/search/presentation/views/widgets/custom_list_view_search.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/custom_text_feild_search_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                CustomTextFeildSearch(),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Best Saller', style: Styles.textStyle18),
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomListViewSearch(),
          ),
        ),
      ],
    );
  }
}
