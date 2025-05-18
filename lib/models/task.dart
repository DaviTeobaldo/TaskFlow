class Task {
  int? id;
  String title;
  String description;
  int? dueDate;
  bool isCompleted;
  int createdAt;

  Task({
    this.id,
    required this.title,
    this.description = '',
    this.dueDate,
    this.isCompleted = false,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'due_date': dueDate,
      'is_completed': isCompleted ? 1 : 0,
      'created_at': createdAt,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      dueDate: map['due_date'],
      isCompleted: map['is_completed'] == 1,
      createdAt: map['created_at'],
    );
  }
}