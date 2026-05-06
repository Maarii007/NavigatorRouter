import 'dart:convert';
import 'package:example_application/models/filme_item.dart';
import 'package:flutter/services.dart';

late List<FilmeItem> filmesGlobais;

Future<void> carregarFilmes() async {
  final String jsonString = await rootBundle.loadString('assets/data/filmes.json');
  final List<dynamic> dados = jsonDecode(jsonString) as List<dynamic>;
  filmesGlobais = dados.cast<Map<String, dynamic>>().map(FilmeItem.fromJson).toList(growable: false);
}