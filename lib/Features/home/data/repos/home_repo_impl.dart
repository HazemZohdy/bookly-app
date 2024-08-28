import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRapoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRapoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject%3AProgramming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
