import 'package:mobile/data/services/api/model/album/album_summary_api_model.dart';
import 'package:mobile/domain/models/album/album_summary.dart';

extension AlbumSumaryApiModelMapper on AlbumSummaryApiModel {
  AlbumSummary toDomain() =>
      AlbumSummary(total: total, missing: missing, repeated: repeated);
}
