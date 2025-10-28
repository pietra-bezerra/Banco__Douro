import 'package:flutter/material.dart';
import 'package:meu_app/ui/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // pintando o topo da tela 
      appBar: AppBar(
        backgroundColor: AppColor.lightGrey,
        title: const Text("Sistema de gestão de contas"),
        actions: [
          // ações botõezinhos do lado direito do topo
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, "login");
          },
          icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}