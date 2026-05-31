import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_room.freezed.dart';
part 'profile_room.g.dart';

@freezed
abstract class ProfileRoom with _$ProfileRoom {
  const ProfileRoom._();
  const factory ProfileRoom({
    @Default('') String id,
    @Default('') String name,
  }) = _ProfileRoom;

   factory ProfileRoom.fromJson(Map<String, dynamic> json) => _$ProfileRoomFromJson(json);
}
