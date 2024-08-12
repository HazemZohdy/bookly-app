import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          height: MediaQuery.of(context).size.height * .25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://media.istockphoto.com/id/481577126/photo/real-boxer.jpg?s=612x612&w=0&k=20&c=5Px_fSbxQasE-O2TA4tUtBwdO1P-ym_urmHGWWPPWlg='),
            ),
          ),
        ),
      ),
    );
  }
}
