import 'package:examen_parciall/widget/Pagina3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pagina2 extends StatefulWidget{
  final String nombre2;
  

  const Pagina2({super.key, required this.nombre2,});
  @override
  State<StatefulWidget> createState() {
    return pa2();
  }
}

class pa2 extends State <Pagina2>{
  
  void Aceptar (){
    setState(() {
      Navigator.pushReplacement( //Envia a otra pagina sin flechita de retorno
        context,  
        MaterialPageRoute(  
            builder:(context) => Pagina3(),  
        )
      );  
    }); 
  }
  final e = TextEditingController();
  final t = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.nombre2}"),
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
                      controller: e,
                       decoration: const InputDecoration(
                      labelText: 'Edad',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                    ),
                    TextFormField(
                      controller: t,
                       decoration: const InputDecoration(
                      labelText: 'Telefono',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
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