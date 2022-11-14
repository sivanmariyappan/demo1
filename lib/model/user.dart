class User {
  int? id;
  String? name;
  String? email;
  String? contact;
  String? password;
  userMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['name'] = email!;
    mapping['contact'] = contact!;
    mapping['description'] = password!;
    return mapping;
  }
}
