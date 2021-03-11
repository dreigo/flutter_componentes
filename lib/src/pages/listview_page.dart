import 'package:flutter/material.dart';
import 'dart:async';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listNum = new List();
  int _ultimoItem = 0;
  bool _isloadig = false;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10();
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
        ),
        body: Stack(
          children: [
            _crearLista(),
            _crearLoading(),
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listNum.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listNum[index];

          return FadeInImage(
            image: NetworkImage('https://picsum.photos/400/300/?image=$imagen'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
      ),
    );
  }

  Future<Null> obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listNum.clear();
      _ultimoItem++;
      _agregar10();
    });

    return Future.delayed(duration);
  }

  _agregar10() {
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listNum.add(_ultimoItem);
    }

    setState(() {});
  }

  Future<Null> fetchData() async {
    _isloadig = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isloadig = false;
    _scrollController.animateTo(_scrollController.position.pixels + 200,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregar10();
  }

  Widget _crearLoading() {
    if (_isloadig) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
