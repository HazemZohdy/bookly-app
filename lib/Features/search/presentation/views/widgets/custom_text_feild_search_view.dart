import 'package:booklyapp/Features/search/presentation/views/widgets/custom_Out_line_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFeildSearch extends StatelessWidget {
  const CustomTextFeildSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .9,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
        enabledBorder: customOutLineInPutBorder(),
        focusedBorder: customOutLineInPutBorder(),
      ),
    );
  }

  
}
