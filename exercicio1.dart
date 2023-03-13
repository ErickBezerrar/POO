void main() {
  Produto detergente = Produto(nome: "detergente", preco: 90);
  print(detergente);
  Produto pao = Produto(nome: "Pão", preco: 40);
  print(pao);
  Produto chocolate = Produto(nome: "Chocolate", preco: 4.50);
  print(chocolate);
  print("\n Produtos do cliente: $detergente,$pao,$chocolate");
}

class Produto {
  
  final String nome;
  final double preco;
  
  Produto({required this.nome, required this.preco});
  
  String toString() {
    return '$nome - R\$ $preco';
  }
  
}


class Item{
  
  Produto produto;
  double quantidade;
  
  Item({required this.produto, required this.quantidade});
  
  double total() => quantidade * produto.preco;
}

class Venda{
  
  String data;
  List<Item> itens;
  
  Venda({required this.itens, required this.data});
  
  double total2() => itens.fold(0,(sum,E) => sum + E.total());
    
}