import 'package:examen_parciall/widget/Pagina2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pagina1 extends StatefulWidget{
  const Pagina1({super.key});

  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}
class Disenio extends State<Pagina1>{
  final n = TextEditingController();
  final ap = TextEditingController();
  final am = TextEditingController();
  void Aceptar() {
    String nm = n.text;
    String ap2 = ap.text;
    String am2 = am.text;   
    final String nombrecompleto = n.text + " " +  ap.text + " "+ am.text;
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Pagina2(nombre2: nombrecompleto, ),
        ),
      );
          if (nm.isNotEmpty && ap2.isNotEmpty && am2.isNotEmpty) {
            
         }else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Datos Vacios. Porfavor llenalos')),
        );
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen Parcial 2'
        ),
        backgroundColor: const Color.fromARGB(255, 220, 101, 241),
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
                      controller: n,
                       decoration: const InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z]+$'))
                        ],
                    ),
                    TextFormField(
                      controller: ap,
                       decoration: const InputDecoration(
                      labelText: 'Apellido Paterno',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z]+$'))
                        ],
                    ),
                    TextFormField(
                      controller: am,
                       decoration: const InputDecoration(
                      labelText: 'Apellido Materno',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z]+$'))
                        ],
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
                      onPressed: Aceptar, 
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