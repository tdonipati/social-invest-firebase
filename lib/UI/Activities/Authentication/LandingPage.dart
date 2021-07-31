import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('assets/images/splash-background.png'),
          //         fit: BoxFit.cover)),
          color: Color(0xFFFFE3CC),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: screen.height * 0.1),
                  child: Text(
                    'social invest.',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins-Normal',
                      fontWeight: FontWeight.bold,
                      fontSize: screen.height * 0.0575,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: screen.height * 0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: screen.width * 0.325),
                          child: Text(
                            'login',
                            style: TextStyle(
                              fontFamily: 'Poppins-Normal',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: screen.height * 0.0275,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          side: BorderSide(width: 5.0, color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                          ),
                          minimumSize: Size(88, 36),
                          elevation: 0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: screen.width * 0.3),
                          child: Text(
                            'sign up',
                            style: TextStyle(
                              fontFamily: 'Poppins-Normal',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: screen.height * 0.0275,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFA8FAC9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                          ),
                          minimumSize: Size(88, 36),
                          elevation: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
