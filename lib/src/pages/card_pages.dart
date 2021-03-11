import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.00),
        children: [
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardtipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardtipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.purple,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Text(String data, {Key key, TextStyle style, StrutStyle strutStyle, TextAlign textAlign, TextDirection textDirection, Locale locale, bool softWrap, TextOverflow overflow, double textScaleFactor, int maxLines, String semanticsLabel, TextWidthBasis textWidthBasis, TextHeightBehavior textHeightBehavior})'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardtipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.00,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/aa0890a1-f629-4c26-b44a-1860fa0d0eab/dc65b1q-9a4975e3-6e0c-471b-95fc-c5777ad98abe.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYWEwODkwYTEtZjYyOS00YzI2LWI0NGEtMTg2MGZhMGQwZWFiXC9kYzY1YjFxLTlhNDk3NWUzLTZlMGMtNDcxYi05NWZjLWM1Nzc3YWQ5OGFiZS5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.sum42tGe32AcbOGtcaWcHzYzRjjDo7vO3bkhqJgBi_c'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No tengo idea de que poner'))
        ],
      ),
    );
  }
}
