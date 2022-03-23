/// count : 0
/// name : "category updated"
/// image : "Wg0JgriCF4WoSj9HXzm8QhR2V9XBiynmNpy6bYo7.png"

class CategoryModel {
  CategoryModel({
      int? count, 
      String? name, 
      String? image,}){
    _count = count;
    _name = name;
    _image = image;
}

  CategoryModel.fromJson(dynamic json) {
    _count = json['count'];
    _name = json['name'];
    _image = json['image'];
  }
  int? _count;
  String? _name;
  String? _image;
CategoryModel copyWith({  int? count,
  String? name,
  String? image,
}) => CategoryModel(  count: count ?? _count,
  name: name ?? _name,
  image: image ?? _image,
);
  int? get count => _count;
  String? get name => _name;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['name'] = _name;
    map['image'] = _image;
    return map;
  }

}