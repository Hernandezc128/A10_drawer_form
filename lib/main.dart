import 'package:flutter/material.dart';
import 'package:hernandez0371/pagina1.dart';
import 'package:hernandez0371/pagina2.dart';
import 'package:hernandez0371/pagina3.dart';
import 'package:hernandez0371/pagina4.dart';
import 'package:hernandez0371/pagina5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Categoria';
      case 1:
        return 'Fabricante';
      case 2:
        return 'Productos';
      case 3:
        return 'Usuarios';
      case 4:
        return 'Venta';
      default:
        return 'PlayStation Login';
    }
  }

  Widget _getPageBody(int index) {
    switch (index) {
      case 0:
        return Pagina1();
      case 1:
        return Pagina2();
      case 2:
        return Pagina3();
      case 3:
        return Pagina4();
      case 4:
        return Pagina5();
      default:
        return Center(
          child: Text('Página no encontrada'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTitle(_selectedIndex),
          style: TextStyle(
              color: Colors.white), // Cambia el color del texto a blanco
        ),
        backgroundColor:
            Color(0xff006eff), // Cambia este color según tu preferencia
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Categoria'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Fabricante'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Productos'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Usuarios'),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Venta'),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _getPageBody(_selectedIndex),
    );
  }
}
