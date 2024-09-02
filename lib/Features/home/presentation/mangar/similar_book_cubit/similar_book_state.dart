part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookCubitInitial extends SimilarBookState {}

final class SimilarBookCubitLoading extends SimilarBookState {}

final class SimilarBookCubitFaliure extends SimilarBookState {
  final String errorMessage;

  const SimilarBookCubitFaliure(this.errorMessage);
}

final class SimilarBookCubitSuccess extends SimilarBookState {
  final List<BookModel> book;

  const SimilarBookCubitSuccess(this.book);
}
