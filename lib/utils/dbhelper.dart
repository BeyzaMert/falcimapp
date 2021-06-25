import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:falcimapp/model/YukselenOzellik.dart';

class DbHelper {
  static final DbHelper _dbHelper = DbHelper._internal();

  String tblYukselen = "yukselen";
  String colId = "id";
  String colTitle = "title";
  String colDescription = "description";
  String colPriority = "priority";
  String colDate = "date";

  DbHelper._internal();

  /// Dart dili factory kelimesi ile Singleton yapı kullanmamıza izin verir. Singleton bir sınıftan sadece bir nesnenin oluşmasını sağlayan bir yapıdır.
  factory DbHelper() {
    return _dbHelper;
  }

  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  /// Veritabanı işlemleri asenkron işlemler olduğundan async kelimesi ile ilgili fonksiyonları nitelememiz gerekir
  Future<Database> initializeDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + "yukselenler.db";
    var dbYukselen = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbYukselen;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE $tblYukselen($colId INTEGER PRIMARY KEY, $colTitle TEXT," +
            "$colDescription TEXT, $colPriority INTEGER, $colDate TEXT" +
            ")");
  }

  Future<int> insertYukselen(Yukselen yukselen) async {
    Database db = await this.db;
    var result = await db.insert(tblYukselen, yukselen.toMap());
    return result;
  }

  Future<List> getYukselen() async {
    List<Yukselen> yukselenList = [];
    Database db = await this.db;
    var result =
    await db.rawQuery("SELECT * FROM $tblYukselen ORDER BY $colPriority ASC");
    result.forEach((element) {
      yukselenList.add(Yukselen.fromObject(element));
    });
    return yukselenList;
  }

  Future<int> getCount() async {
    Database db = await this.db;
    var result = Sqflite.firstIntValue(
        await db.rawQuery("SELECT COUNT(*) FROM $tblYukselen"));

    return result;
  }

  Future<int> updateYukselen(Yukselen yukselen) async {
    Database db = await this.db;
    var result = await db.update(tblYukselen, yukselen.toMap(),
        where: "$colId = ?", whereArgs: [yukselen.id]);
    return result;
  }

  Future<int> deleteYukselen(int id) async {
    Database db = await this.db;
    var result = await db.delete(tblYukselen, where: "$colId = ?", whereArgs: [id]);
    return result;
  }
}