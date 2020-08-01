import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/widgets/auth_card.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(102, 0, 96, 0.5),
                  Color.fromRGBO(255, 0, 241, 0.9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 45),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 50,
                      ),
                      transform: Matrix4.rotationZ(-6 * pi / 180)
                        ..translate(-10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(3, 6),
                          ),
                        ],
                      ),
                      child: Text(
                        'Minha Loja',
                        style: TextStyle(
                          color:
                              Theme.of(context).accentTextTheme.headline6.color,
                          fontSize: 45,
                          fontFamily: 'Anton',
                        ),
                      ),
                    ),
                    AuthCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
