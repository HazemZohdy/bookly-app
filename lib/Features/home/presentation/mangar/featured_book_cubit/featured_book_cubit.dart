import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRapo) : super(FeaturedBookInitial());

  final HomeRepo homeRapo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRapo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookFailure(failure.erorrMessage));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
