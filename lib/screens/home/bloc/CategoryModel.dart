/// categories : [{"id":9,"imagePath":"https://play-lh.googleusercontent.com/PriDzpFJUw--6ONcR54fhqM95vq7PH1oy2DmkiR9_4CSEyYhPShQEDI5VF1Jz01-ZA","name":"General Knowledge"},{"id":11,"imagePath":"https://lumiere-a.akamaihd.net/v1/images/image_e460281e.jpeg?region=0,0,540,810&width=480","name":"Entertainment: Film"},{"id":12,"imagePath":"https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWN8ZW58MHx8MHx8&w=1000&q=80","name":"Entertainment: Music"},{"id":14,"imagePath":"https://static01.nyt.com/images/2019/07/29/upshot/25up-television-print/merlin_147222513_1c67c80a-410e-4173-a501-13eff6ea9f65-jumbo.jpg?quality=75&auto=webp","name":"Entertainment: Television"},{"id":18,"imagePath":"https://cdn.pixabay.com/photo/2016/04/04/14/12/monitor-1307227__340.jpg","name":"Science: Computers"},{"id":21,"imagePath":"https://img.freepik.com/free-vector/sport-equipment-concept_1284-13034.jpg?w=2000","name":"Sports"},{"id":23,"imagePath":"https://media.istockphoto.com/id/1092170968/vector/open-book-with-history-doodles-and-lettering.jpg?s=612x612&w=0&k=20&c=SvXn0O25eHC8ARjwlcn83kahxjMGl2ti_DDFGozBKqg=","name":"History"},{"id":27,"imagePath":"https://thumbs.dreamstime.com/b/large-group-african-safari-animals-wildlife-conservation-concept-174172993.jpg","name":"Animals"},{"id":24,"imagePath":"https://thumbs.dreamstime.com/b/politics-government-referendum-democracy-vote-concept-76390514.jpg","name":"Politics"},{"id":19,"imagePath":"https://www.shutterstock.com/image-vector/colorful-mathematics-word-concept-technical-260nw-1483052450.jpg","name":"Science: Mathematics"}]
/// status : true

class CategoryModel {
  CategoryModel({
      List<Category>? categories,
      bool? status,}){
    _categories = categories;
    _status = status;
}

  CategoryModel.fromJson(dynamic json) {
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Category.fromJson(v));
      });
    }
    _status = json['status'];
  }
  List<Category>? _categories;
  bool? _status;
CategoryModel copyWith({  List<Category>? categories,
  bool? status,
}) => CategoryModel(  categories: categories ?? _categories,
  status: status ?? _status,
);
  List<Category>? get categories => _categories;
  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    return map;
  }

}

/// id : 9
/// imagePath : "https://play-lh.googleusercontent.com/PriDzpFJUw--6ONcR54fhqM95vq7PH1oy2DmkiR9_4CSEyYhPShQEDI5VF1Jz01-ZA"
/// name : "General Knowledge"

class Category {
  Categories({
      num? id, 
      String? imagePath, 
      String? name,}){
    _id = id;
    _imagePath = imagePath;
    _name = name;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _imagePath = json['imagePath'];
    _name = json['name'];
  }
  num? _id;
  String? _imagePath;
  String? _name;
  Category copyWith({  num? id,
  String? imagePath,
  String? name,
}) => Categories(  id: id ?? _id,
  imagePath: imagePath ?? _imagePath,
  name: name ?? _name,
);
  num? get id => _id;
  String? get imagePath => _imagePath;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['imagePath'] = _imagePath;
    map['name'] = _name;
    return map;
  }

}