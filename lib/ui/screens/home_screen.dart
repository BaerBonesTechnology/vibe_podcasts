import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vibe_podcasts/constants/strings.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final searchTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(appName),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Text(homeScreenTopPrompt, style: Theme.of(context).textTheme.displayLarge),
            TextField(
              controller: searchTextController,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text('Recommendations 1'),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text('genres'),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text('continued list'),
            )
          ]
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * .075,
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}
