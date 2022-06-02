import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomCard(
            title: 'Fullmetal Alchemist: Brotherhood',
            imageUrl:
            //'https://static.wikia.nocookie.net/naruto/images/d/dd/Naruto_Uzumaki%21%21.png/revision/latest?cb=20161013233552',
            'images/naruto.png',
            totalEpisode: 64,
            description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, \n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, \n but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \n and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          ),
          CustomCard(
            title: 'Naruto: Shippudden',
            imageUrl:
            //'https://static.wikia.nocookie.net/naruto/images/d/dd/Naruto_Uzumaki%21%21.png/revision/latest?cb=20161013233552',
            'images/naruto.png',
            totalEpisode: 500,
            description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, \n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, \n but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \n and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final int totalEpisode;
  final String description;

  const CustomCard({
    Key? key,
    required this.title,
    this.imageUrl,
    required this.totalEpisode,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      //margin: const EdgeInsets.only(bottom: 20),
      margin: EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          //Image.network(
            //imageUrl!,
            //width: 50,
            //height: 50,
            //'https://static.wikia.nocookie.net/naruto/images/d/dd/Naruto_Uzumaki%21%21.png/revision/latest?cb=20161013233552',
          //),
          //Image.asset(
            //imageUrl!,
            //width: 200,
            //height: 200,
          //),
           Container(
             width: 64,
             height: 64,
             margin: const EdgeInsets.only(right: 16),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(16),
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage(
                   imageUrl!,
                 ),
               ),
            ),
           ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '$totalEpisode episodes',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                description,
              ),
            ],
          ),
        ],
      ),
    );
  }
}