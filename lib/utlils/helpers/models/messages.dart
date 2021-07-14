import 'package:json_annotation/json_annotation.dart';

part 'messages.g.dart';

@JsonSerializable()
class Messages {
  @JsonKey(name: 'credential')
  String? credential;

  Messages({this.credential});

  factory Messages.fromJson(Map<String, dynamic> json) {
    return _$MessagesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessagesToJson(this);
}
