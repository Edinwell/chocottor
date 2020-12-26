import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  bool isBuy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('詳細'),
      ),
      body: Column(
        children: [
          ItemRow(
            itemName: "品名",
            elems: [TextField()],
          ),
          ItemRow(
            itemName: "期限",
            elems: [TextField()],
          ),
          ItemRow(
            itemName: "数量",
            elems: [TextField()],
          ),
          ItemRow(
            itemName: "単位",
            elems: [TextField()],
          ),
          ItemRow(itemName: "購入予定", elems: [
            Checkbox(
              value: isBuy,
              onChanged: (bool value) {
                isBuy = value;
              },
            ),
          ])
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "btn#cancel",
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          FloatingActionButton(
            heroTag: "btn#check",
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

class ItemRow extends StatefulWidget {
  final String itemName;
  final List<StatefulWidget> elems;
  const ItemRow({Key key, this.itemName, this.elems}) : super(key: key);

  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ItemRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: const Border(
          bottom: const BorderSide(
            color: Colors.black38,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Text(widget.itemName),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            child: Row(
              children: widget.elems,
            ),
          ),
        ],
      ),
    );
  }
}
