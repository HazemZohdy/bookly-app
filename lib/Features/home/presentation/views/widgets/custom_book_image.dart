import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => const Icon(
            Icons.local_activity,
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
