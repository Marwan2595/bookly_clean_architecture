import 'package:bookly_clean_architecture/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_clean_architecture/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_architecture/core/utils/api_handler.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiHandler apiHandler;
  HomeRemoteDataSourceImpl({required this.apiHandler});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var dataBody =
        await apiHandler.get("volumes?Filtering=free-ebooks&q=programming");
    List<BookEntity> books = createBooksList(dataBody);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

  List<BookEntity> createBooksList(Map<String, dynamic> dataBody) {
    List<BookEntity> books = [];
    for (var item in dataBody['items']) {
      books.add(BookModel.fromJson(item).toEntity());
    }
    return books;
  }
}
