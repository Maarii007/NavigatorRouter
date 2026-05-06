import 'package:auto_route/auto_route.dart';
import 'package:example_application/models/filme_item.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetalhesFilmeScreen extends StatelessWidget {
  final FilmeItem filme;

  const DetalhesFilmeScreen({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Filme'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.popRoute(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 320,
                height: 180,
                child: Image.network(filme.imageUrl, fit: BoxFit.cover),
              ),
              const SizedBox(height: 16),
              Text(
                filme.titulo,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}