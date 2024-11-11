// ignore_for_file: unused_import, duplicate_import
import 'package:flutter/cupertino.dart';
import 'package:orivios_company_demo/setupp/user.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbManager {
  late Database _datebase;

  Future openDB() async {
    _datebase = await openDatabase(join(await getDatabasesPath(), "donners.db"),
        version: 1, onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE donners(id INTEGER PRIMARY KEY AUTOINCREMENT,username TEXT,email TEXT,phone TEXT,password TEXT)");
    });
  }

  Future<int> insertStudent(Ussers user) async {
    await openDB();

    return await _datebase.insert('donners', user.toMap());
  }

  Future<List<Ussers>> getStudentList() async {
    print("called::::::::::::");
    await openDB();
    final List<Map<String, dynamic>> maps = await _datebase.query('donners');

    return List.generate(maps.length, (index) {
      return Ussers(
          username: maps[index]['username'],
          email: maps[index]['email'],
          phone: maps[index]['phone'],
          password: maps[index]['password'],
          conformpassword: maps[index]['conformpassword']);
    });
  }

  Future<int> updateStudent(Ussers ussers) async {
    await openDB();
    return await _datebase
        .update('donners', ussers.toMap(), where: 'id=?', whereArgs: []);
  }

  Future<void> deleteStudent(int? id) async {
    await openDB();
    await _datebase.delete("donners", where: "id = ? ", whereArgs: [id]);
  }

  void getUserList() {}

  // insertUser(Ussers ussers) {}
}

// class display {
//   int? id;
//   late String username, email, phone,conformpassword, password;
//   display(
//       { required this.password,
//       required this.conformpassword,
//       required this.username,
//       required this.email,
//       required this.phone});
//   Map<String, dynamic> toMap() {
//     return {
//       "username": username,
//       "email": email,
//       "phone": phone,
//     };
//   }
// }
