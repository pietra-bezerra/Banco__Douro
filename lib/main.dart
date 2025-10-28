import 'package:flutter/material.dart'; //importando a bibilhoteca dart linguagem do flutter
import 'package:meu_app/ui/home_screen.dart';
import 'package:meu_app/ui/login_screen.dart'; // tela login



// sem o void nao roda
void main() {
  runApp(BancoDouro());
}

// widget sem estado, ou seja: ele não muda depois de desenhado na tela
//Exemplo: a logo de um app, ele não muda sozinho é sempre igual.
class BancoDouro extends StatelessWidget {
  const BancoDouro({super.key});

  @override
  Widget build(BuildContext context) {
    // contêiner raiz de um app, gerencio tema, navegação e rotas etc...
    // se eu coloco const no MaterialApp: eu torno ele constante, mas o conteúdo dentro dele não e 100% constante.
    return MaterialApp(
      routes: {
        "login": (context) => const LoginScreen(),
        "home": (context) => HomeScreen(),
      },
      initialRoute: "login",
    );
  }
}
