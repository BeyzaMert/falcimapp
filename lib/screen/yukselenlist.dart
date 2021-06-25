import 'package:falcimapp/screen/yukselendetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:falcimapp/model/YukselenOzellik.dart';
import 'package:falcimapp/utils/dbhelper.dart';

class YukselenList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return YukselenListState();
  }
}

class YukselenListState extends State {
  DbHelper helper = DbHelper();
  List<Yukselen> yukselenler;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (yukselenler == null) {
      yukselenler = [];
      getData();
    }
    return Scaffold(
      //   body: yukselenListItems(),
        appBar: AppBar(
          backgroundColor: Colors.green[500],
          title: Text("Yükselenler"),
        ),
        floatingActionButton: GestureDetector(
          child: Center(
            child: FloatingActionButton(

              backgroundColor: Colors.green[100],
              onPressed: () {
                navigateToDetail(Yukselen("", 3, ""));
              },
              tooltip: 'Add New Yukselen',
              child: Icon(Icons.add),
            ),
          ),
        ));
  }

  /* ListView yukselenListItems() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) =>
            Card(
                color: Colors.white,
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: getColor(
                        this.yukselenler[position].priority),
                    child: Text(
                      this.yukselenler[position].id.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(this.yukselenler[position].title),
                  subtitle: Text(this.yukselenler[position].description),
                  onTap: () {
                    navigateToDetail(this.yukselenler[position]);
                  },
                )));
  }
*/
  void navigateToDetail(Yukselen yukselen) async {
    bool result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => YukselenDetail(yukselen)));
    if (result == true) {
      getData();
    }
  }

  void getData() {
    final yukselenlerFuture = helper.getYukselen();
    yukselenlerFuture.then((result) =>
    {
      setState(() {
        yukselenler = result;
        count = yukselenler.length;
      })
    });
  }

/* Color getColor(int priority) {
    switch (priority) {
      case 1:
        return Colors.red;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.green;
      default:
        return Colors.green;
    }
  }
  */

}