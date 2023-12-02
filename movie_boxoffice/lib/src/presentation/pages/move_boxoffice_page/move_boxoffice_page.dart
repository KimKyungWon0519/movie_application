import 'package:flutter/material.dart';
import 'package:movie_boxoffice/src/presentation/pages/move_boxoffice_page/local_widgets/movie_card.dart';

class MovieBoxofficePage extends StatelessWidget {
  const MovieBoxofficePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('영화'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '데일리 박스오피스',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const MovieCard();
                },
                itemCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
