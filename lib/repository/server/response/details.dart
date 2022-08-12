import 'package:json_annotation/json_annotation.dart';
part 'details.g.dart';

@JsonSerializable()
class DetailsResponse {
  @JsonKey(name: "data")
  Data data;
  @JsonKey(name: "support")
  Support support;
  DetailsResponse(this.data, this.support);

  factory DetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsResponseToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  late int id;
  @JsonKey(name: "email")
  late String email;
  @JsonKey(name: "first_name")
  late String firstName;
  @JsonKey(name: "last_name")
  late String lastName;
  @JsonKey(name: "avatar")
  late String avatar;
  Data(this.id, this.email, this.firstName, this.lastName, this.avatar);
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Support {
  @JsonKey(name: "url")
  late String url;
  @JsonKey(name: "text")
  late String text;
  Support(this.url, this.text);
  factory Support.fromJson(Map<String, dynamic> json) =>
      _$SupportFromJson(json);

  Map<String, dynamic> toJson() => _$SupportToJson(this);
}
