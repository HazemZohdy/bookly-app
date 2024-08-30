import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRapo) : super(NewsetBookInitial());

  final HomeRepo homeRapo;
  Future<void> fetchNewsetBook() async {
    emit(NewsetBookInitial());
    var result = await homeRapo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsetBookFailure(failure.erorrMessage));
    }, (books) {
      emit(NewsetBookSuccuss(books));
    });
  }
}
