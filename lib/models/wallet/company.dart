/// id : 1
/// branches : [{"id":1,"branch_name":"Khaled Ibn Al Walid, Damascuse , Syria"},{"id":2,"branch_name":"Ashrafiyat Sahnaya, Damascuse , Syria"},{"id":3,"branch_name":"Al Tal, Damascuse , Syria"}]
/// name : "Al-Fouad transfer"

class Company {
  Company({
      int? id, 
      List<Branches>? branches, 
      String? name,}){
    _id = id;
    _branches = branches;
    _name = name;
}

  Company.fromJson(dynamic json) {
    _id = json['id'];
    if (json['branches'] != null) {
      _branches = [];
      json['branches'].forEach((v) {
        _branches?.add(Branches.fromJson(v));
      });
    }
    _name = json['name'];
  }
  int? _id;
  List<Branches>? _branches;
  String? _name;

  int? get id => _id;
  List<Branches>? get branches => _branches;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_branches != null) {
      map['branches'] = _branches?.map((v) => v.toJson()).toList();
    }
    map['name'] = _name;
    return map;
  }

}

/// id : 1
/// branch_name : "Khaled Ibn Al Walid, Damascuse , Syria"

class Branches {
  Branches({
      int? id, 
      String? branchName,}){
    _id = id;
    _branchName = branchName;
}

  Branches.fromJson(dynamic json) {
    _id = json['id'];
    _branchName = json['branch_name'];
  }
  int? _id;
  String? _branchName;

  int? get id => _id;
  String? get branchName => _branchName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['branch_name'] = _branchName;
    return map;
  }

}