class Course {
  late String courseCode;
  late String courseName;
  late int credits;
  late String department;
  late List<Instructor> instructors;
  late Schedule schedule;
  late Enrollment enrollment;
  late List<Textbook> textbooks;

  Course.fromJson(Map<String, dynamic> json) {
    courseCode = json["courseCode"];
    courseName = json["courseName"];
    credits = json["credits"];
    department = json["department"];
    instructors = List<Instructor>.from(
        json["instructors"].map((e) => Instructor.fromJson(e)));
    schedule = Schedule.fromJson(json["schedule"]);
    enrollment = Enrollment.fromJson(json["enrollment"]);
    textbooks = List<Textbook>.from(json["textbooks"].map((e)=>Textbook.fromJson(e)));
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "courseCode": courseCode,
      "courseName": courseName,
      "credits": credits,
      "department": department,
      "instructors": instructors,
      "schedule": schedule,
      "enrollment": enrollment,
    };
    return map;
  }

  @override
  String toString() {
    return 'Course{courseCode: $courseCode, courseName: $courseName, credits: $credits, department: $department, instructors: $instructors, schedule: $schedule, enrollment: $enrollment}';
  }
}

class Instructor {
  late String name;
  late String office;
  late String email;

  Instructor.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    office = json["office"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {"name": name, "office": office, "email": email};
    return map;
  }

  @override
  String toString() {
    return 'Instructor{name: $name, office: $office, email: $email}';
  }
}

class Schedule {
  late List<String> days;
  late String time;

  Schedule.fromJson(Map<String, dynamic> json) {
    days = List<String>.from(json["days"].map((e) => e.toString()));
    time = json["time"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "days": days,
      "time": time,
    };
    return map;
  }

  @override
  String toString() {
    return 'Schedule{days: $days, time: $time}';
  }
}

class Enrollment {
  late int currentStudents;
  late int capacity;

  Enrollment.fromJson(Map<String, dynamic> json) {
    currentStudents = json["currentStudents"];
    capacity = json["capacity"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "currentStudents": currentStudents,
      "capacity": capacity,
    };
    return map;
  }

  @override
  String toString() {
    return 'Enrollment{currentStudents: $currentStudents, capacity: $capacity}';
  }
}

class Textbook {
  late String title;
  late String author;
  late String isbn;

  Textbook.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    author = json["author"];
    isbn = json["isbn"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {"title": title, "author": author, "isbn": isbn};
    return map;
  }

  @override
  String toString() {
    return 'Textbook{title: $title, author: $author, isbn: $isbn}';
  }
}