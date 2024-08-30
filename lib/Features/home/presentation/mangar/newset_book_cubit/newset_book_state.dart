part of 'newset_book_cubit.dart';

sealed class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

final class NewsetBookInitial extends NewsetBookState {}

final class NewsetBookLoading extends NewsetBookState {}

final class NewsetBookSuccuss extends NewsetBookState {
  final List<BookModel> books;

  const NewsetBookSuccuss(this.books);
}

final class NewsetBookFailure extends NewsetBookState {
  final String errorMessage;

  const NewsetBookFailure(this.errorMessage);
}
