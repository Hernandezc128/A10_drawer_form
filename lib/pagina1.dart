import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  final id_cat = TextEditingController();
  final nom_cat = TextEditingController();
  final descripcion = TextEditingController();
  final fech_crea = TextEditingController();
  final num_juegos = TextEditingController();
  final prom_cost = TextEditingController();
  final img_categoria = TextEditingController();
  final plat_dispo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_cat,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "ID categoria",
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
              controller: nom_cat,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.title, color: Color(0xff0065fd)),
                hintText: "Nombrede la categoria",
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
                hintText: "Descripcion",
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
              controller: fech_crea,
              decoration: InputDecoration(
                hintText: "fecha de creacion",
                prefixIcon: Icon(Icons.category, color: Color(0xff0065fd)),
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
              controller: num_juegos,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Numero de Juegos",
                prefixIcon: Icon(Icons.date_range, color: Color(0xff0065fd)),
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
              controller: prom_cost,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.attach_money, color: Color(0xff0065fd)),
                hintText: "Costo Promedio",
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
              controller: img_categoria,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Imagen de la categoria",
                prefixIcon: Icon(Icons.star, color: Color(0xff0065fd)),
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
              controller: plat_dispo,
              decoration: InputDecoration(
                hintText: "Plataformas disponibles",
                prefixIcon:
                    Icon(Icons.developer_mode, color: Color(0xff0065fd)),
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
                String uNombre = nom_cat.text.toString();
                String uID = id_cat.text.toString();
                String uDesc = descripcion.text.toString();
                String uGenero = fech_crea.text.toString();
                String uFecha = num_juegos.text.toString();
                String uPrecio = prom_cost.text.toString();
                String uClas = img_categoria.text.toString();
                String uDes = plat_dispo.text.toString();
                print(
                    "ID: $uID, Nombre: $uNombre, Descripcion: $uDesc, Genero: $uGenero, Fecha: $uFecha, Precio: $uPrecio, Clasificacion: $uClas, Desarrolladores: $uDes");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
