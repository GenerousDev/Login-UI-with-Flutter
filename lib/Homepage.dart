import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final Omolaja = Hero(tag: 'Hero', child:  Padding(
      padding: EdgeInsets.all(16.0),
      child: CircleAvatar(
        radius: 72.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('images/finest1.jpg'),
      ),
    ),
    );
    final welcome = Padding(padding: EdgeInsets.all(8.0),
          child: Text (
              'Welcome Abubakar Omolaja',
               style: TextStyle(fontSize: 20.0,color: Colors.white),
            ),
    );

    final lorem = Padding(padding: EdgeInsets.all(8.0),
      child: Text (
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec mi eget turpis convallis gravida at ut ligula. Ut vitae tortor gravida,'
            ' varius arcu et, maximus quam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. '
            'Donec lobortis felis vitae nisi congue rutrum. Nulla convallis libero ac ex dictum, ut tempor tellus interdum. Quisque a odio velit.'
            ' Vivamus a sapien eu enim mattis sollicitudin. Phasellus tristique facilisis lectus id eleifend. Aliquam felis nulla, rhoncus '
            'pretium dapibus vitae, molestie vel eros.',
        style: TextStyle(fontSize: 20.0,color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration:   BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent
        ])
      ),
      child: Column(
        children: <Widget>[
          Omolaja,welcome,lorem
        ],
      ),
    );
    return Scaffold(
            body: body,
    );
  }
}
