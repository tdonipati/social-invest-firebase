import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_invest/DataModels/fire_auth.dart';
import 'package:social_invest/UI/Widgets/ProfileAvatar.dart';

class HomePage extends StatefulWidget {
  final User user;

  const HomePage({required this.user});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      key: _key,
      backgroundColor: Color(0xFFFFF5ED),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Color(0xFFFFF5ED),
            title: Row(
              children: [
                Text('social invest.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screen.height * 0.0325,
                      fontFamily: 'Poppins-Normal',
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            centerTitle: false,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: Card(
              color: Color(0xFFFADDDD),
              elevation: 0,
              margin: EdgeInsets.all(screen.width * 0.0275),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //ProfileAvatar(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                            //color: Color(0xFF00D0A3),
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins-Normal',
                            fontSize: screen.height * 0.0525,
                          ),
                        ),
                        Text(
                          _currentUser.displayName!,
                          style: TextStyle(
                            //color: Color(0xFF00D0A3),
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins-Normal',
                            fontSize: screen.height * 0.095,
                            height: 0.9,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screen.width * 0.02,
                  vertical: screen.height * 0.0125),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: screen.width * 0.02,
                        vertical: screen.height * 0.0125),
                    child: Text(
                      "Suggested Donations",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-Normal',
                        fontWeight: FontWeight.normal,
                        fontSize: screen.height * 0.025,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screen.height * 0.425,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 1,
                          crossAxisSpacing: screen.height * 0.01,
                          mainAxisSpacing: screen.width * 0.025),
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color(0xFFbde0fe),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Name\nDescription',
                              style: TextStyle(
                                fontFamily: 'Poppins-Medium',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xFFFFF5ED),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: screen.height * 0.0125),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => {_key.currentState!.openDrawer()},
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: screen.height * 0.0325,
                ),
                backgroundColor: Color(0xFFFFF5ED),
                elevation: 0,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Row(
                  children: [
                    Text(
                      'File Request',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins-Normal',
                        fontWeight: FontWeight.bold,
                        fontSize: screen.height * 0.02,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: screen.height * 0.0325,
                    ),
                  ],
                ),
                backgroundColor: Color(0xFFA8FAC9),
                //elevation: 1,
              ),
              FloatingActionButton(
                onPressed: () => {},
                child: Icon(Icons.menu,
                    color: Colors.black, size: screen.height * 0.0325),
                backgroundColor: Color(0xFFFFF5ED),
                elevation: 0,
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new DrawerHeader(child: new CircleAvatar()),
              color: Colors.tealAccent,
            ),
            new Container(
              color: Colors.blueAccent,
              child: new Column(
                children: new List.generate(4, (int index) {
                  return new ListTile(
                    leading: new Icon(Icons.info),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
