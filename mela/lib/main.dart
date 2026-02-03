import 'package:flutter/material.dart';

final List<Map<String, String>> movies = [
  {'title': '인셉션', 'genre': 'SF', 'image': 'https://via.placeholder.com/150'},
  {'title': '인터스텔라', 'genre': 'SF', 'image': 'https://via.placeholder.com/150'},
  {'title': '기생충', 'genre': '드라마', 'image': 'https://via.placeholder.com/150'},
];

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('영화 목록')),
        body: ListView.separated(
          itemCount: movies.length,

          // 구분선
          separatorBuilder: (context, index) =>
              Divider(indent: 20, endIndent: 20),

          // 아이템 빌더
          itemBuilder: (context, index) {
            final movie = movies[index];

            return ListTile(
              // 1. 포스터 이미지
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  movie['image']!,
                  width: 50,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (c, o, s) => Icon(Icons.movie),
                ),
              ),

              // 2. 제목 & 장르
              title: Text(
                movie['title']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(movie['genre']!),

              // 3. 순위 (index 활용)
              trailing: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}
