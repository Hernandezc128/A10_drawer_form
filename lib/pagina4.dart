import 'package:flutter/material.dart';

class Pagina4 extends StatelessWidget {
  final nombre_com = TextEditingController();
  final nombre_usuario = TextEditingController();
  final telefono = TextEditingController();
  final gmail = TextEditingController();
  final fecha_N = TextEditingController();
  final direccion = TextEditingController();
  final genero = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.text,
              controller: nombre_usuario,
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.account_circle, color: Color(0xff0065fd)),
                hintText: "Nombre de Usuario",
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
              controller: telefono,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Teléfono",
                prefixIcon: Icon(Icons.phone, color: Color(0xff0065fd)),
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
              keyboardType: TextInputType.emailAddress,
              controller: gmail,
              decoration: InputDecoration(
                hintText: "Correo Electrónico",
                prefixIcon: Icon(Icons.email, color: Color(0xff0065fd)),
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
              controller: fecha_N,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: "Fecha de Nacimiento",
                prefixIcon:
                    Icon(Icons.calendar_today, color: Color(0xff0065fd)),
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
            SizedBox(height: 12),
            TextField(
              controller: genero,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Género",
                prefixIcon: Icon(Icons.people, color: Color(0xff0065fd)),
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
            ElevatedButton(
              onPressed: () {
                String uNombreCom = nombre_com.text.toString();
                String uNombreUsuario = nombre_usuario.text.toString();
                String uTelefono = telefono.text.toString();
                String uGmail = gmail.text.toString();
                String uFechaN = fecha_N.text.toString();
                String uDireccion = direccion.text.toString();
                String uGenero = genero.text.toString();
                print(
                    "Nombre Completo: $uNombreCom, Nombre de Usuario: $uNombreUsuario, Teléfono: $uTelefono, Correo Electrónico: $uGmail, Fecha de Nacimiento: $uFechaN, Dirección: $uDireccion, Género: $uGenero");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
