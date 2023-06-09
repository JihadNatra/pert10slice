// ignore_for_file: prefer_if_null_operators, duplicate_ignore, prefer_null_aware_operators

class User {
  User({this.createdAt, this.name, this.avatar, this.id});

  DateTime? createdAt;
  String? name;
  String? avatar;
  String? id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        // ignore: prefer_if_null_operators
        name: json["name"] == null ? null : json["name"],
        avatar: json["avatar"] == null ? null : json["avatar"],
        id: json["id"] == null ? null : json["id"],
      );
  Map<String, dynamic> toJson() => {
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "name": name == null ? null : name,
        "avatar": avatar == null ? null : avatar,
        "id": id == null ? null : id,
      };
}
