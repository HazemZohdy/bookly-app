import 'package:booklyapp/Features/home/presentation/views/widgets/best_saller_list_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListView(),
          SizedBox(height: 50),
          Text('Best Saller', style: Styles.titleSmaller),
          SizedBox(height: 25),
          BestSallerListViewItem(),
        ],
      ),
    );
  }
}

