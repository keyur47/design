import 'package:flutter/material.dart';

import '../Animation/FadeAnimation.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0XffEFEFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child:  Container(

                      decoration:  BoxDecoration(
                        // color: Colors.yellow,
                          image: DecorationImage(
                            // colorFilter:  ColorFilter.mode(Color(0xFF000749), BlendMode.difference),
                            image: const AssetImage('assets/image/new_background_1.png'),
                              fit: BoxFit.fill,
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: width+20,
                    child:  Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/new_background_3.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Login", style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 30),),
                  const SizedBox(height: 30,),
                   Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(196, 135, 198, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 15,top: 2,bottom: 2),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Colors.grey
                              ))
                          ),
                          child:  TextFormField(
                            decoration: const InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 5),
                                border: InputBorder.none,
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15,top: 2,bottom: 2),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                   Center(child: Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),)),
                  SizedBox(height: 30,),
                Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(49, 39, 79, 1),
                    ),
                    child: Center(
                      child: Text("Login", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 30,),
                 Center(child: Text("Create Account", style: TextStyle(color: Color.fromRGBO(49, 39, 79, .6)),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}