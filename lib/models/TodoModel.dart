class TodoModel {
  String? title;
  int? id;

  TodoModel({required this.title, required this.id});

  TodoModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
  }

  updateJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}
