import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

LazyDatabase openNativeDatabase(String databaseName) {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final file = File(databaseName);
    return NativeDatabase.createInBackground(file);
  });
}

LazyDatabase openMemoryDatabase() {
  return LazyDatabase(() async {
    return NativeDatabase.memory(logStatements: false);
  });
}


// final database = db.LmsDb(
//   database: dotEnv.getOrElse(
//     'POSTGRES_DB',
//     () => throw Exception('POSTGRES_DB not defined'),
//   ),
//   host: dotEnv.getOrElse(
//     'POSTGRES_HOST',
//     () => throw Exception('POSTGRES_HOST not defined'),
//   ),
//   port: int.parse(dotEnv.getOrElse(
//     'POSTGRES_PORT',
//     () => throw Exception('POSTGRES_PORT not defined'),
//   )),
//   useSSL: false,
//   user: dotEnv.getOrElse(
//     'POSTGRES_USER',
//     () => throw Exception('POSTGRES_USER not defined'),
//   ),
//   password: dotEnv.getOrElse(
//     'POSTGRES_PASSWORD',
//     () => throw Exception('POSTGRES_PASSWORD not defined'),
//   ),
// );
