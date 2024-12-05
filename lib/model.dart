/*
{
        "id": 120,
        "name": "Zahid here",
        "comments": "No Comments",
        "deleted": false,
        "created_at": "2024-08-28T16:40:08.005023Z",
        "updated_at": "2024-11-07T17:33:23.169689Z",
        "creator": null
    },
*/

import 'package:flutter/foundation.dart';

class DataModel {
  final int id;
  final String name;
  final String comments;
  final bool deleted;
  final DateTime createAt;
  final DateTime updatedAt;
  final int creator;

  DataModel({
    required this.name,
    required this.comments,
    required this.id,
    required this.createAt,
    required this.creator,
    required this.deleted,
    required this.updatedAt,
  });
  factory DataModel.fromjson(Map<String, dynamic> map) {
    return DataModel(
      name: map["name"] ?? '',
      comments: map["comments"] ?? '',
      id: map["id"] ?? 0,
      createAt: map["createAt"] ?? DateTime.now(),
      creator: map["creator"] ?? 0,
      deleted: map["deleted"] ?? false,
      updatedAt: map["updateAt"] ?? DateTime.now(),
    );
  }
}
