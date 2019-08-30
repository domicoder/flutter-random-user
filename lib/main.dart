import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Profile Generator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Center(
              // constraints: BoxConstraints(
              //   minHeight: viewportConstraints.maxHeight,
              // ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 90.0, right: 16.0, left: 16.0),
                    child: Text(
                      "You can generate fake profile.\nClick to Generate.",
                      
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35.0, right: 16.0, left: 16.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      child: new Text(
                        "Generate",
                        style: TextStyle(color: Colors.white),
                        ),
                      onPressed: (){
                        _showDialog();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nombre"
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }

  void _showDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: new Text("Titulo"),
          content: new Text("Contenido"),
          actions: <Widget>[
            new FlatButton(
              child: new Text(
                "Cerrar",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

}