import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('詳細'),
        ),
        body: Column(
          children: [
            ItemRow(itemName:"品名"),
            Divider(
              height: 40,
              thickness: 3,
              color: Colors.black26,
              indent: 16,
              endIndent: 16,
            ),
            ItemRow(itemName: "期限",),
          ],
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          FloatingActionButton(
            child: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ItemRow extends StatefulWidget{
  final String itemName;
  const ItemRow ({ Key key, this.itemName }): super(key: key);

  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ItemRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            child: Text(widget.itemName),
            width: MediaQuery.of(context).size.width * 0.25
          ),
          Container(
            child: TextField(
            ),
            width: MediaQuery.of(context).size.width * 0.60
          )
        ],
      ),
    );
  }
}