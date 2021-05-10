import 'package:flutter/material.dart';
import 'package:transiciones_app_flutter/src/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Primiera pagina')),
      ),
      body: Center(
        child: Text('Pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_time),
        onPressed: () {
          Navigator.push(context, _crearRuta());
        },
      ),
    );
  }

   Route _crearRuta() {
       return PageRouteBuilder(
         pageBuilder: (context, animation, secondaryAnimation) => Pagina2Page(),
         //transitionDuration: Duration(seconds: 2),
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           final curveAnimation =
               CurvedAnimation(parent: animation, curve: Curves.easeInOut);

           return SlideTransition(
             position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
                 .animate(curveAnimation),
             child: child
           );

           // return ScaleTransition(
           //   child: child,
           //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
           // );

           // return RotationTransition(
           //   child: child,
           //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
           // );

           // return FadeTransition(
           //   child: child,
           //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
           // );
         },
       );
     }
}
