import 'package:flutter/material.dart';

class Pagina5 extends StatelessWidget {
  final id_venta = TextEditingController();
  final folio = TextEditingController();
  final id_usuario = TextEditingController();
  final direccion = TextEditingController();
  final nombre_com = TextEditingController();
  final ciudad = TextEditingController();
  final pais = TextEditingController();
  final id_producto = TextEditingController();
  final estado = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_venta,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "ID Venta",
                prefixIcon:
                    Icon(Icons.confirmation_number, color: Color(0xff0065fd)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.text,
              controller: folio,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.receipt, color: Color(0xff0065fd)),
                hintText: "Folio",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: id_usuario,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "ID Usuario",
                prefixIcon:
                    Icon(Icons.account_circle, color: Color(0xff0065fd)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.text,
              controller: direccion,
              decoration: InputDecoration(
                hintText: "Dirección",
                prefixIcon: Icon(Icons.home, color: Color(0xff0065fd)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: nombre_com,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Nombre Completo",
                prefixIcon: Icon(Icons.person, color: Color(0xff0065fd)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.text,
              controller: ciudad,
              decoration: InputDecoration(
                hintText: "Ciudad",
                prefixIcon: Icon(Icons.location_city, color: Color(0xff0065fd)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: pais,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "País",
                prefixIcon: Icon(Icons.flag, color: Color(0xff0065fd)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.phone,
              controller: id_producto,
              decoration: InputDecoration(
                hintText: "ID Producto",
                prefixIcon: Icon(Icons.gamepad, color: Color(0xff0065fd)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: estado,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Estado",
                prefixIcon:
                    Icon(Icons.assignment_turned_in, color: Color(0xff0065fd)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String uIDVenta = id_venta.text.toString();
                String uFolio = folio.text.toString();
                String uIDUsuario = id_usuario.text.toString();
                String uDireccion = direccion.text.toString();
                String uNombreCom = nombre_com.text.toString();
                String uCiudad = ciudad.text.toString();
                String uPais = pais.text.toString();
                String uIDProducto = id_producto.text.toString();
                String uEstado = estado.text.toString();
                print(
                    "ID Venta: $uIDVenta, Folio: $uFolio, ID Usuario: $uIDUsuario, Dirección: $uDireccion, Nombre Completo: $uNombreCom, Ciudad: $uCiudad, País: $uPais, ID Producto: $uIDProducto, Estado: $uEstado");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
