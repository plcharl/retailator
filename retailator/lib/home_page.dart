import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String sInitialServer = 'Amnennar';

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called==
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        titleSpacing: 10.0,
      ),
      body: SafeArea(
        top: false,         // pour permettre les notifs venant du haut de l'écran ?
        child: Container(
          decoration: BoxDecoration(color: Colors.orange.withAlpha(40)),
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                children: [
                  ButtonBar(
                    children: [
                      DropdownButton(
                        value: sInitialServer,
                        //dropdownColor: Colors.white54,
                        hint: Text('Select server'),
                        onChanged: (String newValue){
                          setState(() {
                            sInitialServer = newValue;
                          });
                        },
                        items: <String>['Amnennar','server2','server3']
                            .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value)
                            );
                        }
                      ).toList(),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
      )
    );
  }
}
