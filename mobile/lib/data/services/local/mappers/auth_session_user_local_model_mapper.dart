import 'package:mobile/data/services/local/model/auth_session_user_local_model.dart';
import 'package:mobile/domain/models/auth_session.dart';

extension AuthSessionUserLocalModelMapper on AuthSessionUserLocalModel {
  AuthSessionUser toDomain() => AuthSessionUser(name: name, email: email);
}
