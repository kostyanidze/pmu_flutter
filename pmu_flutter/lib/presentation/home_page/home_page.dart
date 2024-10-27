import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/domain/models/card.dart';
import 'package:test_app/presentation/details_page/details_page.dart';

part 'card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color _color = Colors.orangeAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text(widget.title),
      ),
      body: const body(),
    );
  }
}

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      CardData(
        'Paladin',
        descriptionText: 'Tank/heal/dps class',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      CardData(
        'Warrior',
        descriptionText: 'Tank/dps class',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      CardData(
        'Shaman',
        descriptionText: 'Heal/dps class',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
    ];

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data.map((data) {
            return _Card.fromData(
              data,
              onLike: (String title, bool isLiked) =>
                  _showSnackBar(context, title, isLiked),
              onTap: () => _navToDetails(context, data),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _navToDetails(BuildContext context, CardData data) {
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => DetailsPage(data)),
    );
  }
  void _showSnackBar(BuildContext context, String title, bool isLiked) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'Racoon $title ${isLiked ? 'liked!' : 'disliked :('}',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        backgroundColor: Colors.orangeAccent,
        duration: const Duration(seconds: 1),
      ));
    });
  }
}