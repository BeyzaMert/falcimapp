import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:falcimapp/model/YukselenOzellik.dart';
import 'package:falcimapp/utils/dbhelper.dart';
import 'package:intl/intl.dart';

final List<String> choices = const <String>[menuSave, menuDelete, menuBack];

const menuSave = "Yükseleni kaydet & Geri dön";
const menuDelete = "Yükseleni Sil";
const menuBack = "Listeye geri dön";

DbHelper helper = DbHelper();

class YukselenDetail extends StatefulWidget {
  final Yukselen yukselen;

  YukselenDetail(this.yukselen);

  @override
  State<StatefulWidget> createState() {
    return YukselenDetailState(yukselen);
  }
}

class YukselenDetailState extends State {
  Yukselen yukselen;

  YukselenDetailState(this.yukselen);


  final _formDistance = 5.0;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = yukselen.title;
    descController.text = yukselen.description;
    var textStyle = Theme.of(context).textTheme.caption;
    var title = yukselen.title == "" ? "Yeni Yükselen" : yukselen.title;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon:Icon(
                Icons.arrow_back,
                color: Colors.white,
              )
          ),
          backgroundColor: Colors.green[700],
          automaticallyImplyLeading: false,

          title: Text(title),
          actions: [
            PopupMenuButton<String>(
              onSelected: select,
              itemBuilder: (BuildContext context) {
                return choices.map((e) {
                  return PopupMenuItem<String>(
                    value: e,
                    child: Text(e),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: [

                Padding(
                  padding:
                  EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                  child: TextField(
                      controller: titleController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Doğum Tarihi",
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)))),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                  child: TextField(
                      controller: descController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Doğum Saati",
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)))),
                ),

                SizedBox(height: 20,),
                ElevatedButton(onPressed: save, style:ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white, ),  child: Text(menuSave, style: TextStyle(color: Colors.white),),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: delete, style:ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white, ),
                  child: Text(menuDelete,style: TextStyle(color: Colors.white), ),),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ));
  }

  void select(String value) async {
    switch (value) {
      case menuSave:
        save();
        break;
      case menuDelete:
        delete();
        break;
      case menuBack:
        Navigator.pop(context, true);
        break;
      default:
    }
  }

  void delete() async {
    Navigator.pop(context, true);
    if (yukselen.id == null) {
      return;
    }
    int result;
    result = await helper.deleteYukselen(yukselen.id);
    if (result != 0) {
      AlertDialog alertDialog = AlertDialog(
        title: Text("Delete yukselen"),
        content: Text("The yukselen has been deleted"),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    }
  }

  void save() {
    yukselen.title = titleController.text;
    yukselen.description = descController.text;
    yukselen.date = new DateFormat.yMd().format(DateTime.now());
    if (yukselen.id != null) {
      helper.updateYukselen(yukselen);
    } else {
      helper.insertYukselen(yukselen);
    }
    Navigator.pop(context, true);
    showAlert(yukselen.id != null);
  }

  void showAlert(bool isUpdate) {
    AlertDialog alertDialog;
    if (isUpdate) {
      alertDialog = AlertDialog(
        title: Text("Update yukselen"),
        content: Text("The yukselen has been updated"),
      );
    } else {
      alertDialog = AlertDialog(
        title: Text("Insert yukselen"),
        content: Text("The yukselen has been inserted"),
      );
    }
    showDialog(context: context, builder: (_) => alertDialog);
  }
}