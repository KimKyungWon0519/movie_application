import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 5,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        clipBehavior: Clip.hardEdge,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ThumbNail(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: _MovieInfo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ThumbNail extends StatelessWidget {
  const _ThumbNail();

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://www.movieposters.com/cdn/shop/products/108b520c55e3c9760f77a06110d6a73b_e97cf224-d57f-44e3-8477-4f5479cd746b_480x.progressive.jpg?v=1573616089',
    );
  }
}

class _MovieInfo extends StatelessWidget {
  const _MovieInfo();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Title(),
        Expanded(
          child: _Description(),
        ),
        _OpenDate()
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      '영화 제목',
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return Text(
      '영화 내용' * 100,
      overflow: TextOverflow.fade,
    );
  }
}

class _OpenDate extends StatelessWidget {
  const _OpenDate();

  @override
  Widget build(BuildContext context) {
    return Text(
      '개봉일 : 2023-05-11',
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: Colors.grey[800]),
    );
  }
}
