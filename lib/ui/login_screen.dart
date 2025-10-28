import 'package:flutter/material.dart';
import 'package:meu_app/ui/styles/colors.dart';

// Molde para criar objetos
class LoginScreen extends StatelessWidget {
  // É o nome do WIDGET | é uma etiqueta de identificação
  // super.key é como um RG - serv para identificar ela caso existam outras parecidas como uma chave unica
  const LoginScreen({super.key});
  // 'Vou reescrever um método que ja existe na classe pai (StatelessWidget)'

  @override
  // Build é o arquivo \ Widget é o tipo de dado que o flluter desenha 
  // TUDO É WIDGET | context é o 'mapa' do app, que indica onde essa tela está. 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Image.asset("assets/images/banner.png"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/images/stars.png")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // sempre o eixo principal é vertical, sempre  MainAxisAlignment diz como você quer distribuir
              // os widgets nesse eixo, CENTRO DA VERTICAL
              mainAxisAlignment: MainAxisAlignment.center,
              // Eixo horizontal/ transversal
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[
                const SizedBox(height: 128),
                Image.asset("assets/images/logo.png",
                width: 160,
                height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32),
                     const Text('Sitema de Gestão de Contas',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 32,
                     ),
                     ),
                    TextFormField(
                      // Basicamente um placeholder
                      decoration: const InputDecoration(
                        label: Text("E-mail"),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      // Para deixar a senha com os * 
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text("Senha"),
                      ),
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed:(){
                        Navigator.pushReplacementNamed(context, "home");
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColor.orange)
                      ),
                      child: const Text('Entrar',
                      style: TextStyle(color: Colors.black),
                      ),
                      ),
                  ],
                )
              ] 
            ),
          ),
        ],
      ),
    );
  }
}