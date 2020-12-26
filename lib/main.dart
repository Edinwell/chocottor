import 'package:flutter/material.dart';
import 'detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MainPage(),
        '/detail': (BuildContext context) => new Detail()
      },
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage() : super();
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _tab = <Tab>[
    Tab(text: '冷蔵庫'),
    Tab(text: '冷凍庫'),
    Tab(text: '食品棚'),
    Tab(text: '掃除'),
    Tab(text: '洗濯'),
  ];
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('生活用品マネージャー'),
          bottom: TabBar(
            tabs: _tab,
          ),
        ),
        body: TabBarView(children: <Widget>[
          TabPage(title: '冷蔵庫'),
          TabPage2(title: '冷凍庫'),
          TabPage(title: '食品棚'),
          TabPage(title: '掃除'),
          TabPage(title: '洗濯'),
        ]),
        floatingActionButton: FloatingActionButton(
          heroTag: "Detail",
          onPressed: () {
            Navigator.pushNamed(context, '/detail');
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final IconData icon;
  final String title;
  const TabPage({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Container(
      child: Row(
        children: [
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text("Button"),
                onPressed: () {},
                splashColor: Colors.blue,
              ),
              RaisedButton(
                child: Text("Button"),
                onPressed: () {},
                splashColor: Colors.blue,
              ),
              RaisedButton(
                child: Text("Button"),
                onPressed: () {},
                splashColor: Colors.blue,
              ),
              Text(title, style: textStyle),
            ],
          ),
        ],
      ),
    );
  }
}

class TabPage2 extends StatelessWidget {
  final IconData icon;
  final String title;
  const TabPage2({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Container(
      child: Row(
        children: [
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text("Button2"),
                onPressed: () {},
                splashColor: Colors.blue,
              ),
              RaisedButton(
                child: Text("Button2"),
                onPressed: () {},
                splashColor: Colors.blue,
              ),
              RaisedButton(
                child: Text("Button2"),
                onPressed: () {},
                splashColor: Colors.blue,
              ),
              Text(title, style: textStyle),
            ],
          ),
        ],
      ),
    );
  }
}
