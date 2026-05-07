# 👧🏻 Nome:

Maria Clara Florente Dalapria.

---


# 🎬 Movie App — Lista de Filmes

App Flutter de catálogo de filmes desenvolvido como projeto de aula, demonstrando navegação declarativa com **AutoRoute**.

---

## 📱 Telas

O app possui duas telas. A **Tela Principal** exibe um grid de temas por gênero e uma lista de filmes em destaque. A **Tela de Detalhes** exibe a imagem e o título do filme selecionado.

---

## 🧭 Navegação com AutoRoute

A navegação foi implementada em três etapas como desafios de aula.

**Desafio 1 — Declarar as rotas:** todas as telas do app são registradas em um único lugar, o `AppRouter`, usando a anotação `@AutoRouterConfig`. Cada tela recebe um `AutoRoute`, e a tela inicial é marcada com `initial: true`.

**Desafio 2 — Integrar no MaterialApp:** em vez do `MaterialApp` tradicional, usamos o `MaterialApp.router`, que recebe o `AppRouter` pelo parâmetro `routerConfig`. Isso entrega o controle total da navegação ao AutoRoute.

**Desafio 3 — Navegar entre telas:** a navegação é feita com `context.pushRoute` e `context.popRoute`, substituindo o `Navigator.push` e `Navigator.pop` tradicionais. O resultado visual é idêntico, mas o código fica mais limpo, tipado e centralizado.

