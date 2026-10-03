import 'package:mobile/data/services/api/mappers/album_position_api_model_mapper.dart';
import 'package:mobile/data/services/api/mappers/team_album_group_api_model_mapper.dart';
import 'package:mobile/data/services/api/model/album/album_api_model.dart';
import 'package:mobile/domain/models/album/album.dart';

extension AlbumApiModelMapper on AlbumApiModel {
  Album toDomain() => Album(
    teams: teams.map((t) => t.toDomain()).toList(),
    loose: loose.map((l) => l.toDomain()).toList(),
  );
}
