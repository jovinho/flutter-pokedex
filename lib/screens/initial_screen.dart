import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Stack(children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.red,
                    child: Center(
                        child: BorderedText(
                            strokeWidth: 10,
                            strokeColor: Colors.black,
                            child: Text(
                              'Pokédex',
                              style: TextStyle(
                                  fontSize: 60,
                                  fontFamily: 'PokemonSolid',
                                  color: Colors.yellow),
                            ))),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          'Go',
                          style: TextStyle(
                              fontFamily: 'PokemonSolid', fontSize: 40),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5 - 90,
              left: MediaQuery.of(context).size.width * 0.5 - 90,
              child: Container(
                alignment: Alignment.center,
                width: 180,
                height: 180,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 20),
                ),
                child: Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 7)),
                ),
              ),
            )
          ])),
    );
  }
}
