import 'package:mobile/data/services/api/model/team/team_api_model.dart';
import 'package:mobile/domain/models/team/team.dart';

extension TeamApiModelMapper on TeamApiModel {
  Team toDomain() => Team(
    code: code,
    name: name,
    flagUrl: flagUrl,
    primaryColor: int.parse(primaryColor.replaceFirst('#', 'FF'), radix: 16),
  );
}
