import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRapo) : super(SimilarBookCubitInitial());

  final HomeRepo homeRapo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookCubitLoading());
    var result = await homeRapo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBookCubitFaliure(failure.erorrMessage));
    }, (books) {
      emit(SimilarBookCubitSuccess(books));
    });
  }
}
