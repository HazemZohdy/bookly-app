import 'package:booklyapp/Features/home/presentation/mangar/featured_book_cubit/featured_book_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/my_routes.dart';
import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/core/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
