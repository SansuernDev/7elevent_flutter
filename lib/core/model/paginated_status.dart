import 'package:freezed_annotation/freezed_annotation.dart';
part 'paginated_status.freezed.dart';

@freezed
abstract class PaginatedStatus with _$PaginatedStatus {
  const factory PaginatedStatus.done() = _Done;
  const factory PaginatedStatus.fetchingMore() = _FetchingMore;
  const factory PaginatedStatus.error(Object? e,[StackTrace? stack]) = _Error;
}