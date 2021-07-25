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
        height: 600,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.orange),
        child: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('LayoutImagem'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutImagem()),
                  );
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
              child: Text('LayoutCard'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutCard()),
                );
              },
              ),
            ]
          )
        ),
      )
    );
  }
}

class LayoutCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutCard"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.orange),
        child: Center (
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                card1,
                card2,
                card3,
                card4,
              ]
            )
          )
        )
      ),
    );
  }
}

class LayoutImagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutImagem"),
      ),
      body: Container(
        height: 600,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.orange),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Pudim", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            new Image.asset(
                'graphics/pudimMain.jpg',
                width: 600.0,
                height: 240.0,
            ),
            SizedBox(height: 10),
            new Text("Pudim é bom, então decidi fazer um app só sobre pudim", style: TextStyle( color: Colors.white, fontSize: 14)),
            SizedBox(height: 10),
            ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Voltar'),
            ),
          ],
        )
      )
    );
  }
}

Widget card1 = 
Card(
  clipBehavior: Clip.antiAlias,
  child: Container (
    width: 500,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_drop_down_circle),
          title: const Text('Pudim de leite condensado'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: 
          new Image.asset(
              'graphics/pudimLeiteCondensado.jpg',
              width: 600.0,
              height: 240.0,
          ),
        ),
      ]
    )
  ),
);

Widget card2 = 
Card(
  clipBehavior: Clip.antiAlias,
  child: Container (
    width: 500,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_drop_down_circle),
          title: const Text('Pudim de chocolade'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: 
          new Image.asset(
              'graphics/pudimChocolate.jpg',
              width: 600.0,
              height: 240.0,
          ),
        ),
      ]
    )
  ),
);

Widget card3 = 
Card(
  clipBehavior: Clip.antiAlias,
  child: Container (
    width: 500,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_drop_down_circle),
          title: const Text('Pudim de laranja'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: 
          new Image.asset(
              'graphics/pudimLaranja.jpg',
              width: 600.0,
              height: 240.0,
          ),
        ),
      ]
    )
  ),
);

Widget card4 = 
Card(
  clipBehavior: Clip.antiAlias,
  child: Container (
    width: 500,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_drop_down_circle),
          title: const Text('Pudim de pão'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: 
          new Image.asset(
              'graphics/pudimPao.jpg',
              width: 600.0,
              height: 240.0,
          ),
        ),
      ]
    )
  ),
);