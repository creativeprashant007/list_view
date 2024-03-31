import 'package:flutter/material.dart';
import 'package:list_view/model/movies_model.dart';
import 'package:list_view/utils/asset_strings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Movies> movies = [
    Movies(
        title: "Interstellar",
        desc: "Space exploration and human survival.",
        image: AssetString.interstellar),
    Movies(
        title: "The Grand Budapest Hotel",
        desc: "Quirky adventures in luxurious hotel.",
        image: AssetString.thegrandbudapesthotel),
    Movies(
        title: "Avatar",
        desc: "Journey to alien world Pandora.",
        image: AssetString.avatar),
    Movies(
        title: "The Departed",
        desc: "Undercover cops and mobsters clash.",
        image: AssetString.theDeparted),
    Movies(
        title: "The Prestige",
        desc: "Rival magicians' escalating feud.",
        image: AssetString.theprestige),
    Movies(
        title: "Inglourious Basterds",
        desc: "Revenge mission against Nazi regime.",
        image: AssetString.inglouriousBasterds),
    Movies(
        title: "The Social Network",
        desc: "Birth of Facebook and disputes.",
        image: AssetString.thesocialnetwork),
    Movies(
        title: "Gravity",
        desc: "Astronauts stranded in space.",
        image: AssetString.gravity)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView.separated(
          itemBuilder: (context, index) {
            final movie = movies[index];
            return Card(
              color: Colors.black.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(movie.image.toString(),
                        height: 70, width: 50, fit: BoxFit.cover),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${movie.title}",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text("${movie.desc}"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context1, indext1) {
            return Container(
              height: 10,
            );
          },
          itemCount: movies.length,
        ),
      ),
    );
  }
}
