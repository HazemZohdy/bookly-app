 import 'package:booklyapp/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        CustomAppBar(),
       SizedBox(
        height: MediaQuery.of(context).size.height * .25,
        child:const CustomListView()),
      ],
    );
  }
}