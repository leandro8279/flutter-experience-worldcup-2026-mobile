import 'package:mobile/core/result.dart';
import 'package:mobile/domain/models/auth_session.dart';

abstract interface class AuthSessionRepository {
  Future<Result<void>> save(AuthSession session);
  Future<Result<void>> delete();
  Future<Result<AuthSession?>> fetch();
}
