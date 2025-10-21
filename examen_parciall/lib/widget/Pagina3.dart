import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return pa2();
  }
}
class pa2 extends State <Pagina3>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: const Color.fromARGB(255, 119, 4, 139),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
              Expanded(
              flex: 5,
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                       decoration: const InputDecoration(
                      labelText: 'Correo',
                      border: OutlineInputBorder(),
                    ),
                    ),
                    TextFormField(
                       decoration: const InputDecoration(
                      labelText: 'Sexo (M o F)',
                      border: OutlineInputBorder(),
                    ),
                    ),
                  ],
                ),
                ),
              ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text('Aceptar'),
                      ),
                    ),
                  ), 
          ],
      ),
    ),
    );
  }
}