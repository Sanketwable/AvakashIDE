
// This example demos the TextField/SelectableText widget and keyboard
// integration with the go-flutter text backend

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDE Project',
      theme: ThemeData(
        // If the host is missing some fonts, it can cause the
        // text to not be rendered or worse the app might crash.
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  FocusNode myFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        flexibleSpace: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              // constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity,),
              child: IconButton(
                icon: Icon(Icons.text_fields_outlined),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              // constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity,),
              child: TextButton(
                clipBehavior: Clip.hardEdge,
                autofocus: true,
                style: ButtonStyle(
                  enableFeedback: true,
                ),
                child: Text(
                  "File",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              // constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity,),
              child: TextButton(
                clipBehavior: Clip.hardEdge,
                child: Text(
                  "Edit",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              // constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity,),
              child: TextButton(
                clipBehavior: Clip.hardEdge,
                child: Text(
                  "Selection",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              // constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity,),
              child: TextButton(
                clipBehavior: Clip.hardEdge,
                child: Text(
                  "View",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              // constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity,),
              child: TextButton(
                clipBehavior: Clip.hardEdge,
                child: Text(
                  "Help",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              // constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity,),
              child: TextButton(
                clipBehavior: Clip.hardEdge,
                child: Text(
                  "Run",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        elevation: 10,
        //haan bhai kr liya change
        // title: Text('File  Edit  Selection  View  Go  Run  Terminal  Help'),
      ),
      body: Column(
        children: [
          SizedBox(height: 15, width: 15,),
          Container(
            // color: Colors.black87,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SelectableText.rich(
                    // this text can be copied with "Ctrl-C"
                    TextSpan(
                      text: '', // default text style
                      children: <TextSpan>[
                        TextSpan(
                            text: ' ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: '',
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 10)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new Column(children: <Widget>[
                    Container(
                      // color: Colors.grey,
                      padding: EdgeInsets.only(
                          left: 200, right: 20, top: 20, bottom: 20),
                      child: TextField(
                        //enabled: false,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red,
                        ),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.blue[50]),
                          filled: true,
                          fillColor: Colors.grey[850],
                          hintText: 'Code Here',
                          border: OutlineInputBorder(),
                        ),
                        minLines: 20, //Normal textInputField will be displayed
                        keyboardType: TextInputType.multiline,
                        maxLines: 50,
                        focusNode: myFocus,
                        onSubmitted: (value) {
                          setState(() {
                            print("TextField 2:" + value);
                          });
                        },
                      ),
                    ),
                    Container (
                      padding: EdgeInsets.fromLTRB(200, 20, 20, 20),
                      child : TextField(
                      decoration: InputDecoration( 
                      hintStyle: TextStyle(color: Colors.blue[50]),
                      filled: true,
                      fillColor: Colors.grey[600], 
                      border: OutlineInputBorder(),  
                      labelText: 'OUTPUT',  
                      hintText: 'Your output is :',  
                    ),  
                     minLines: 10,
                     maxLines: 20,
                          ),
                      ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[900],
      
    );

  }
}
