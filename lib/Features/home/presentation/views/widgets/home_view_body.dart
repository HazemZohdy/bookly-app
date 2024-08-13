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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: const CustomListView(),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Best Saller',
            style: Styles.titleSmaller,
          ),
        ],
      ),
    );
  }
}
