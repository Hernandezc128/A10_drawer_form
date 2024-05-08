import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  final id_producto = TextEditingController();
  final nom_producto = TextEditingController();
  final descripcion = TextEditingController();
  final precio = TextEditingController();
  final stock = TextEditingController();
  final fabricante = TextEditingController();
  final num_serie = TextEditingController();
  final producto_vendido = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_producto,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "ID Producto",
                prefixIcon: Icon(Icons.gamepad, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: nom_producto,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.title, color: Color(0xff0065fd)),
                hintText: "Nombre",
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
            SizedBox(height: 12),
            TextField(
              controller: descripcion,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Descripción",
                prefixIcon: Icon(Icons.description, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: precio,
              decoration: InputDecoration(
                hintText: "Precio",
                prefixIcon: Icon(Icons.attach_money, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            TextField(
              controller: stock,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Stock",
                prefixIcon: Icon(Icons.category, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: fabricante,
              decoration: InputDecoration(
                hintText: "Fabricante",
                prefixIcon: Icon(Icons.star, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            TextField(
              controller: num_serie,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Número de Serie",
                prefixIcon:
                    Icon(Icons.developer_mode, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: producto_vendido,
              decoration: InputDecoration(
                hintText: "Producto Vendido",
                prefixIcon: Icon(Icons.date_range, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                String uID = id_producto.text.toString();
                String uNombre = nom_producto.text.toString();
                String uDesc = descripcion.text.toString();
                String uPrecio = precio.text.toString();
                String uStock = stock.text.toString();
                String uFabricante = fabricante.text.toString();
                String uNumSerie = num_serie.text.toString();
                String uProductoVendido = producto_vendido.text.toString();
                print(
                    "ID Producto: $uID, Nombre: $uNombre, Descripción: $uDesc, Precio: $uPrecio, Stock: $uStock, Fabricante: $uFabricante, Número de Serie: $uNumSerie, Producto Vendido: $uProductoVendido");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
