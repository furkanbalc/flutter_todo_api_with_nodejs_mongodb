class TodoModel {
  String? id;
  String? title;
  String? desc;
  String? date;
  String? hour;
  bool isCompleted;

  TodoModel({
    this.id,
    this.title,
    this.desc,
    this.date,
    this.hour,
    this.isCompleted = false,
  });

  TodoModel copyWith({
    String? id,
    String? title,
    String? desc,
    String? date,
    String? hour,
    bool? isCompleted,
  }) {
    return TodoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      date: date ?? this.date,
      hour: hour ?? this.hour,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'desc': desc,
      'date': date,
      'hour': hour,
      'isCompleted': isCompleted,
    };
  }

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['_id'] ?? '',
      title: json['title'] ?? '',
      desc: json['desc'] ?? '',
      date: json['date'] ?? '',
      hour: json['hour'] ?? '',
      isCompleted: json['isCompleted'] ?? false,
    );
  }
}
