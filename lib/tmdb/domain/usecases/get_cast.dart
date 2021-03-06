import 'package:dartz/dartz.dart';

import '../../core/error/failure/server_failure.dart';
import '../../core/usecases/usecases.dart';
import '../entities/cast_entity.dart';
import '../repositories/movie_repository.dart';

class GetCast implements UseCase<List<CastEntity>, CastParams> {
  final MovieRepository repo;
  GetCast({required this.repo});
  @override
  Future<Either<ServerFailure, List<CastEntity>>> call(
      CastParams params) async {
    return await repo.getCast(params.id);
  }
}

class CastParams {
  final int id;
  CastParams({
    required this.id,
  });
}
