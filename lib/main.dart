import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(  
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ),
      ),    
      title: 'Main Menu',
      home: MainRoute(),
    )
  );
}

class MainRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.orange),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                child: new Image.asset(
                  'graphics/pudimMain.jpg',
                  width: 600.0,
                  height: 240.0,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(
                  children: [
                    Text("Receitas de Pudim", style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold )),
                    SizedBox(height: 10),
                    ElevatedButton(
                      child: Text('Ver Receitas'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListaPudins()),
                        );
                      },
                    ),
                  ]
                ) 
              ),
            ]
          )
        ),
      )
    );
  }
}

class ListaPudins extends StatelessWidget {

  static final List pudins = [
    Pudim("Leite condensado",
      'graphics/pudimLeiteCondensado.jpg',
      [
        "1 lata de leite condensado",
        "1 lata de leite (medida da lata de leite condensado)",
        "3 ovos inteiros",
        "1 xícara (chá) de açúcar",
        "1/2 xícara de água",
      ],
      """   Pudim:

Primeiro, bata bem os ovos no liquidificador.
Acrescente o leite condensado e o leite, e bata novamente.

    Calda:

Derreta o açúcar na panela até ficar moreno, acrescente a água e deixe engrossar.
Coloque em uma forma redonda e despeje a massa do pudim por cima.
Asse em forno médio por 45 minutos, com a assadeira redonda dentro de uma maior com água.
Espete um garfo para ver se está bem assado.
Deixe esfriar e desenforme."""),
    Pudim("Chocolate",
      'graphics/pudimChocolate.jpg',
      [
        "1 copo de leite",
        "4 ovos",
        "1 lata de leite condensado",
        "8 colheres de chocolate em pó",
        "Chocolate granulado para cobertura",
        "3 colheres de açucar",
        "2 colheres de chocolate",
      ],
      """   Bata todos os ingrediente no liquidificador até ficar homogêneo.
Faça uma calda com o açúcar e o chocolate e caramelize uma forma de pudim.
Despeje o conteúdo do liquidificador na forma e cozinhe em banho - maria por quarenta minutos.
Depois de frio, retire da forma e polvilhe chocolate granulado."""),
    Pudim("Laranja",
      'graphics/pudimLaranja.jpg',
      [
        "1 xícara (chá) de açúcar",
        "meia xícara (chá) de água quente",
        "1 leite condensado(lata ou caixinha) 395 g",
        "1 medida (da lata) de suco de laranja",
        "4 ovos",
        "1 colher (chá) de raspas da casca de laranja",
      ],
      """   Calda:

Em uma panela de fundo largo derreta o açúcar até ficar dourado.
Junte a água quente e mexa com uma colher.
Deixe ferver até dissolver os torrões de açúcar e a calda engrossar.
Forre com a calda uma fôrma com furo central (19 cm de diâmetro) e reserve.

    Pudim:

Em um liquidificador, bata todos os ingredientes do pudim e despeje na forma reservada.
Leve ao forno médio (180°C), em banho-maria com água quente, por cerca de 1 hora e 30 minutos.
Depois de frio, leve para gelar por cerca de 6 horas.
Desenforme e sirva a seguir."""),
    Pudim("Pão",
      'graphics/pudimPao.jpg',
      [
        "4 ovos",
        "1 lata de leite condensado",
        "3 pães (francês)",
        "1 colher de margarina",
        "2 medidas de leite (medir na lata de leite condensado)",
        "1/2 xícara de açúcar",
        "1 xícara de açúcar para a calda",
      ],
      """   Misture todos os ingredientes no liquidificador e bata bem. Reserve.
Em uma forma própria para pudim derreta o açúcar para fazer a calda, espere endurecer um pouco e coloque o líquido que está no liquidificador.
Leve ao fogo por uns 35 minutos ou até você enfiar um garfo e ele sair limpo."""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pudins"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.orange),
        child: Center (
          child: Container(
            width: 500,
            decoration: BoxDecoration(color: Color(0xffA83316)),
            child: new ListView.builder(
              itemCount: pudins.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: new Text(pudins[index].nome, style: TextStyle( color: Colors.white, fontSize: 16)),
                  trailing: new Icon(Icons.arrow_right_rounded, color: Colors.red, size: 40),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PudimRoute(pudim: pudins[index])),
                    );
                  }
                );
              },
            ),
          )
        )
      )
    );
  }
}

class PudimRoute extends StatelessWidget {

  final Pudim pudim;

  const PudimRoute({Key? key, required this.pudim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pudim de " + pudim.nome),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Color(0xffA83316),
          alignment: Alignment.center,
          child: Container(
            width: 500,
            color: Colors.orange,
            child: Column(
              children: [
                Image.asset(
                  pudim.img,
                  width:500,
                  height: 150,
                ),
                SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: 500,
                      child: Center(
                        child: Container(
                          width: 450,
                          child: Column(
                            children: [
                              Text("Ingredientes:", style: TextStyle(fontWeight: FontWeight.bold)),
                              Container(
                                child: new ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: pudim.receita.length,
                                  itemBuilder: (context, index) {
                                    return Text( "${ index + 1 }) ${ pudim.receita[index] }", style: TextStyle(height: 3) );
                                  },
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Modo de Preparo:", style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text(pudim.preparo),
                              SizedBox(height: 40),
                            ]
                          )
                        )
                      )
                    )
                  )
                )
              ]
            )
          ),
        )
      )
    );
  }
}


class Pudim {
  String nome = "";
  String img = "";
  List receita = [];
  String preparo = "";

  Pudim(this.nome, this.img, this.receita, this.preparo);
}