import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Шаляхин К.С. ЦПИбв-41',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Шаляхин К.С. ЦПИбв-41'),
    );
  }
}

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
      body: const MyWidget(),
    );
  }
}

class _CardData {
  final String text;
  final String descriptionText;
  final IconData icon;
  final String? imageUrl;

  _CardData(
    this.text, {
    required this.descriptionText,
    this.icon =Icons.ac_unit_outlined,
    this.imageUrl,
  });
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      _CardData(
          'Paladin',
          descriptionText: 'Class icon',
          icon: Icons.accessible_forward,
          imageUrl:
          'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
          'Warrior',
          descriptionText: 'Class icon',
          icon: Icons.hail,
          imageUrl:
            'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
          'Shaman',
          descriptionText: 'Class icon',
          icon: Icons.warning_amber,
          imageUrl:
           'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
      _CardData(
        'Paladin',
        descriptionText: 'Class icon',
        icon: Icons.accessible_forward,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/6/60/Swagdog_Custom_T-shirt_Paladin_Class_Icon.jpg/revision/latest?cb=20100917162338',
      ),
      _CardData(
        'Warrior',
        descriptionText: 'Class icon',
        icon: Icons.hail,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/3/37/Swagdog_Custom_T-shirt_Warrior_Class_Icon.jpg/revision/latest?cb=20100917162501',
      ),
      _CardData(
        'Shaman',
        descriptionText: 'Class icon',
        icon: Icons.warning_amber,
        imageUrl:
        'https://static.wikia.nocookie.net/wowpedia/images/9/92/Swagdog_Custom_T-shirt_Shaman_Class_Icon.jpg/revision/latest?cb=20100917162133',
      ),
    ];

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data.map((e) => _Card.fromData(e)).toList(),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String text;
  final String descriptionText;
  final IconData icon;
  final String? imageUrl;

  const _Card(
      this.text, {
      this.icon = Icons.ac_unit_outlined,
      required this.descriptionText,
      this.imageUrl,
  });

  factory _Card.fromData(_CardData data) => _Card(
    data.text,
    descriptionText: data.descriptionText,
    icon: data.icon,
    imageUrl: data.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              spreadRadius: 4,
              offset: const Offset(0, 5),
              blurRadius: 8,
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: 150,
            child: Image.network(
              imageUrl ?? '',
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Placeholder(),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    descriptionText,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(icon),
          ),
        ],
      ),
    );
  }
}