import 'package:booklyapp/Features/home/presentation/mangar/similar_book_cubit/similar_book_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/core/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.book.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        state.book[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBookCubitFaliure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
