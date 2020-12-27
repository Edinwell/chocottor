import 'package:flutter/material.dart';
import 'package:chocottor/widgets/calender_picker.dart';

class DetailWidget extends StatefulWidget {
  DetailWidget() : super();
  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  String itemName = "";
  int count = 0;
  DateTime expirationDate = DateTime.now();
  int price = 0;
  bool isBuy = false;
  String notes = "";

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
            elem: TextField(),
          ),
          ItemRow(
            itemName: "数量",
            elem: TextFormField(keyboardType: TextInputType.number),
          ),
          ItemRow(
            itemName: "値段",
            elem: TextFormField(keyboardType: TextInputType.number),
          ),
          ItemRow(
            itemName: "賞味期限",
            elem: ExpirationDate(),
          ),
          // ItemRow(
          //   itemName: "購入予定",
          //   elem: Checkbox(
          //     value: isBuy,
          //     onChanged: (bool value) {
          //       isBuy = value;
          //     },
          //   ),
          // ),
          ItemRow(
            itemName: "備考",
            elem: TextField(),
          ),
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
  final StatefulWidget elem;
  const ItemRow({Key key, this.itemName, this.elem}) : super(key: key);

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
            width: MediaQuery.of(context).size.width * 0.60,
            child: widget.elem,
          ),
        ],
      ),
    );
  }
}
