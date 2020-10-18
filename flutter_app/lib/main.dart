import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //  leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: (){
          //     print('icon button click');
          //   },
          // ),
           title: Text('App bar demo'),
            // actions: [
            //   IconButton(icon: Icon(Icons.search), onPressed:(){}),
            //   IconButton(icon: Icon(Icons.more_vert), onPressed:(){}),
            // ],

          flexibleSpace: SafeArea(
            child: Icon(
                Icons.camera,
                color: Colors.white,
                size: 40.0,


        ),
          ),
          bottom: PreferredSize(
            child: Container(
              color: Colors.green,
              height: 75,
              child: Text('bottom bar' , style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
              ),
            ),
              alignment: Alignment.center,

              width: double.infinity,

              

            ),
            preferredSize: Size.fromHeight(75),
          ),
        ),

        body: Center(
          child: Text('body' , style: TextStyle( fontSize: 50, color: Colors.red ),
          ),
        ),

      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: (){
          print('hi nice..');
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName:Text('Aadhil'), accountEmail:Text('aathilmohamed98@gmail.com') , currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('Hi'),

            ),
              otherAccountsPictures: [
                CircleAvatar(backgroundColor: Colors.white,
                  child: Text('bye'),

                ),


              ],
            ),
            ListTile(
              title: Text('inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotion'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),




          ],
        ),
      ),

         persistentFooterButtons: [
           RaisedButton(onPressed: (){print('Click');
           } ,
           elevation: 10,
             color: Colors.red,
             child: Icon(Icons.add),



           ),
           RaisedButton(onPressed: (){print('Click');
           } ,
             elevation: 10,
             color: Colors.yellow,
             child: Icon(Icons.clear),



           ),
          
      ],



      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home),

          ),
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: Icon(Icons.search),

          ),
          BottomNavigationBarItem(
            title: Text('Add'),
            icon: Icon(Icons.add),

          ),


        ],
      ),

      endDrawer:  Drawer(
        elevation: 20,
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName:Text('Aadhil'), accountEmail:Text('aathilmohamed98@gmail.com') , currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('Hi'),

            ),
              otherAccountsPictures: [
                CircleAvatar(backgroundColor: Colors.white,
                  child: Text('bye'),

                ),


              ],
            ),
            ListTile(
              title: Text('inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotion'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),




          ],
        ),
      ),
      backgroundColor: Colors.black,
    );



  }
}



