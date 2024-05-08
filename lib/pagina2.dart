import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  final id_fabricante = TextEditingController();
  final nom_fabricante = TextEditingController();
  final direccion = TextEditingController();
  final telefono = TextEditingController();
  final correo = TextEditingController();
  final fech_registro = TextEditingController();
  final pais = TextEditingController();
  final descripcion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_fabricante,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "ID Juego",
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
              controller: nom_fabricante,
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
              controller: direccion,
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
              controller: telefono,
              decoration: InputDecoration(
                hintText: "Genero",
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
              controller: correo,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Fecha Lanzamiento",
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
              controller: fech_registro,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.attach_money, color: Color(0xff0065fd)),
                hintText: "Precio",
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
              controller: pais,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Clasificacion",
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
              controller: descripcion,
              decoration: InputDecoration(
                hintText: "Desarrolladores",
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
                String uNombre = nom_fabricante.text.toString();
                String uID = id_fabricante.text.toString();
                String uDesc = direccion.text.toString();
                String uGenero = telefono.text.toString();
                String uFecha = correo.text.toString();
                String uPrecio = fech_registro.text.toString();
                String uClas = pais.text.toString();
                String uDes = descripcion.text.toString();
                print(
                    "ID: $uID, Nombre: $uNombre, Direccion: $uDesc, Telefono: $uGenero, Correo: $uFecha, Fecha de registro: $uPrecio, Pais: $uClas, Descripcion: $uDes");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
