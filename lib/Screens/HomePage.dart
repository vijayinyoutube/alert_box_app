import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showMyDialog(context),
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          child: SingleChildScrollView(
            child: dialogContent(context),
          ));
    },
  );
}

dialogContent(BuildContext context) => Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 2,
          padding: EdgeInsets.only(
            top: 55,
          ),
          margin: EdgeInsets.only(top: 55),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Congratulations!",
                style: TextStyle(
                  fontSize: 25.00,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "on creating a custom dialog widget",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.00,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.00),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Close",
                      style: TextStyle(
                        fontSize: 20.00,
                        fontWeight: FontWeight.w300,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 50,
          right: 50,
          child: CircleAvatar(
            radius: 49.55,
            backgroundColor: Colors.white,
            foregroundColor: Colors.transparent,
            child: CircleAvatar(
              radius: 47.00,
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.transparent,
              child: Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
