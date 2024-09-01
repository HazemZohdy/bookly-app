import 'package:booklyapp/Features/home/presentation/views/widgets/best_saller_list_view_Item.dart';
import 'package:flutter/material.dart';

class CustomListViewSearch extends StatelessWidget {
  const CustomListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      clipBehavior: Clip.none,
      padding: EdgeInsets.zero,
      itemCount: 50,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BookListViewItem(),
          child: Text('data'),
        );
      },
    );
  }
}
