// Dart imports:
import 'dart:convert';

Property propertyFromJson(String str) => Property.fromJson(json.decode(str));

String propertyToJson(Property data) => json.encode(data.toJson());

class Property {
  Property({
    required this.info,
    required this.item,
  });

  Info info;
  List<Item> item;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
    info: Info.fromJson(json["info"]),
    item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "info": info.toJson(),
    "item": List<dynamic>.from(item.map((x) => x.toJson())),
  };
}

class Info {
  Info({
    required this.postmanId,
    required this.name,
    required this.schema,
  });

  String postmanId;
  String name;
  String schema;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    postmanId: json["_postman_id"],
    name: json["name"],
    schema: json["schema"],
  );

  Map<String, dynamic> toJson() => {
    "_postman_id": postmanId,
    "name": name,
    "schema": schema,
  };
}

class Item {
  Item({
    required this.name,
    required this.request,
    required this.response,
  });

  String name;
  Request request;
  List<dynamic> response;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    name: json["name"],
    request: Request.fromJson(json["request"]),
    response: List<dynamic>.from(json["response"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "request": request.toJson(),
    "response": List<dynamic>.from(response.map((x) => x)),
  };
}

class Request {
  Request({
    required this.method,
    required this.header,
    required this.url,
  });

  String method;
  List<dynamic> header;
  Url url;

  factory Request.fromJson(Map<String, dynamic> json) => Request(
    method: json["method"],
    header: List<dynamic>.from(json["header"].map((x) => x)),
    url: Url.fromJson(json["url"]),
  );

  Map<String, dynamic> toJson() => {
    "method": method,
    "header": List<dynamic>.from(header.map((x) => x)),
    "url": url.toJson(),
  };
}

class Url {
  Url({
    required this.raw,
    required this.protocol,
    required this.host,
    required this.path,
    required this.query,
  });

  String raw;
  String protocol;
  List<String> host;
  List<String> path;
  List<Query> query;

  factory Url.fromJson(Map<String, dynamic> json) => Url(
    raw: json["raw"],
    protocol: json["protocol"],
    host: List<String>.from(json["host"].map((x) => x)),
    path: List<String>.from(json["path"].map((x) => x)),
    query: List<Query>.from(json["query"].map((x) => Query.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "raw": raw,
    "protocol": protocol,
    "host": List<dynamic>.from(host.map((x) => x)),
    "path": List<dynamic>.from(path.map((x) => x)),
    "query": List<dynamic>.from(query.map((x) => x.toJson())),
  };
}

class Query {
  Query({
    required this.key,
    required this.value,
  });

  String key;
  String value;

  factory Query.fromJson(Map<String, dynamic> json) => Query(
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
  };
}
