import 'package:mobile/core/result.dart';
import 'package:mobile/domain/models/team/team.dart';

abstract interface class TeamRepository {
  Future<Result<List<Team>>> getTeams();
}
