// main.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LBJ Election',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image en arrière-plan
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/africain.jpeg'), // Chemin correct de l'image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient sur l'image
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.green.withOpacity(0.5),
                  Colors.yellow.withOpacity(0.5),
                  Colors.red.withOpacity(0.5),
                ],
              ),
            ),
          ),
          // Barres de couleur en bas de l'image
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.6),
              SizedBox(
                height: 10,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Informations de l'utilisateur
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: const AssetImage(
                        'assets/images/africain.jpeg'), // Chemin correct de l'image
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Container(
                        color: Colors.green,
                        width: 64,
                        height: 64,
                        child: const Center(
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 64,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.how_to_vote,
                        color: Colors.green,
                        size: 32,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'LBJ Election',
                      ),
                      SizedBox(height: 8),
                      Text('La démocratie transparente'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Titre et description
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Le vote est un devoir en ligne',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Chaque citoyen a le droit de prendre part à la vie politique en général.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.how_to_vote,
                    color: Colors.green,
                    size: 120,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Bouton pour continuer
              ElevatedButton(
                onPressed: () {
                  // Correction de la navigation vers myPage
                  Navigator.push(context, MaterialPageRoute(builder: (context) => myPage()), );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Couleur du bouton
                  minimumSize: Size(double.infinity, 0), // Bouton occupe toute la largeur
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text('Continuer avec son NPI'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}


// Création d'une nouvelle page myPage pour la navigation

class myPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
     backgroundColor: Colors.white,
    ),
    
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Premier conteneur avec un message
          Container( 
            
          child: Text(
              'Politics',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                
              ),
            ),
          ),
          SizedBox(height: 8,),
          Text('Nouveau Code electoral : une casse tete',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          ),
          // Deuxième conteneur avec une image et du texte
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('https://images.app.goo.gl/EiZ6rsQbHiTRe9dW7'), // 
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Malesuada viverra amet odio viverra arcu fermentum. Sed et eget varius at hendrerit mauris. Quam sed ullamcorper lobortis in sit scelerisque integer egestas. Curabitur id integer quis ligula hendrerit. Volutpat non id consequat fermentum in pretium ornare duis. Lectus nulla quam varius cursus. Morbi malesuada enim mauris ut quis vel. Sit accumsan cursus nunc nunc et imperdiet. Cras dui augue scelerisque egestas non vehicula vitae. Nunc et ullamcorper dui eu montes eu. Sit at sed sit sit. Vel tincidunt etiam sed enim sit elit duis. Interdum id gravida suspendisse nisi laoreet. Vitae diam massa nisl consectetur pharetra molestie. Vitae ultrices ornare ipsum gravida. Egestas libero pellentesque lobortis eleifend et ut pretium eu. Auque elit eqestas a mattis orci.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
