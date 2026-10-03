import 'package:mobile/data/services/api/model/album/recent_sticker_api_model.dart';
import 'package:mobile/domain/models/album/recent_sticker.dart';
import 'package:mobile/data/services/api/mappers/team_api_model_mapper.dart';

extension RecentStickerApiModelMapper on RecentStickerApiModel {
  RecentSticker toDomain() => RecentSticker(
    code: code,
    number: number,
    repeated: repeated,
    team: team?.toDomain(),
  );
}
