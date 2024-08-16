import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaPTxhgy6h3WaSckAtVxoi6rD8k8ojeC6fBA&s'),
          ),
        ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';

// class CustomListViewItem extends StatelessWidget {
//   const CustomListViewItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 2.2 / 3.2,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           image: const DecorationImage(
//             fit: BoxFit.fill,
//             image: NetworkImage(
//                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjW6vb9jwCUEnqdLlH6MH4KEAeCw6sLBpxpA&s'),
//           ),
//         ),
//       ),
//     );
//   }
// }
