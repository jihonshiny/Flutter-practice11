
// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         //컨테이너 3개를 세로로 배치해보세요
// //         body: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Wrap(
// //             // children: [Text('one'), Text("two"), Text("three")],
// //             spacing: 8.0,
// //             runSpacing: 4.0,
// //             children: [
// //               _buildTag('Flutter'),
// //               _buildTag('Android'),
// //               _buildTag('iOS'),
// //             ],

// //             // child: Container(
// //             //   child: Stack(
// //             //     alignment: Alignment.center,

// //             //     // mainAxisAlignment: MainAxisAlignment.start,
// //             //     // crossAxisAlignment: CrossAxisAlignment.center,
// //             //     children: [
// //             //       Image.asset(
// //             //         'assets/dog.jpg',
// //             //         alignment: Alignment.center,
// //             //         width: 400,
// //             //         height: 400,
// //             //       ),
// //             //       Container(
// //             //         color: Colors.black,
// //             //         padding: const EdgeInsets.all(8),
// //             //         child: const Text(
// //             //           "저는 스택이에요",
// //             //           style: TextStyle(color: Colors.white, fontSize: 20),
// //             //         ),
// //             //       ),
// //             //       // Text('제목'),
// //             // SizedBox(width: 100),
// //             // Text("바보"),
// //             // Container(
// //             //   width: 100,
// //             //   height: 100,
// //             //   color: const Color.fromARGB(255, 24, 23, 89),
// //             // ),
// //             // Container(
// //             //   width: 100,
// //             //   height: 100,
// //             //   color: const Color.fromARGB(255, 75, 68, 20),
// //             // ),
// //             // Container(
// //             //   width: 300,
// //             //   height: 100,
// //             //   color: const Color.fromARGB(255, 63, 46, 9),
// //             // ),
// //             // Expanded(flex: 1, child: Container(color: Colors.red)),
// //             // SizedBox(height: 100),
// //             // Expanded(
// //             //   flex: 1,
// //             //   child: Container(color: const Color.fromARGB(255, 52, 50, 202)),
// //             // ),
// //             // SizedBox(height: 100),
// //             // Expanded(
// //             //   flex: 1,
// //             //   child: Container(
// //             //     color: const Color.fromARGB(255, 48, 194, 202),
// //             //   ),
// //             // ),
// //             //       //왼쪽은 사진, 오른쪽엔 이름+ 소개글 사진 바로 옆에 배치 Expanded 위젯끼리 비율을 정하기기
// //             //       Expanded(
// //             //         flex: 1,
// //             //         child: Container(
// //             //           color: Colors.grey[300],
// //             //           child: Image.asset('assets/dog.jpg', fit: BoxFit.cover),
// //             //         ),
// //             //       ),
// //             //       Expanded(
// //             //         flex: 2,
// //             //         child: Column(
// //             //           crossAxisAlignment: CrossAxisAlignment.center,
// //             //           mainAxisAlignment: MainAxisAlignment.center,
// //             //           children: [
// //             //             Text("댕댕이", style: TextStyle(fontSize: 30)),
// //             //             SizedBox(height: 10),
// //             //             Padding(
// //             //               padding: EdgeInsets.all(16.0),
// //             //               child: Text(
// //             //                 "나한테 미안하다고 사과해, 나한테 미안하다고 사과했어 고마워워",
// //             //                 textAlign: TextAlign.center,
// //             //               ),
// //             //             ),
// //             //           ],
// //             //         ),
// //             //         // backgroundColor: Colors.black,
// //             //         // body: Container(
// //             //         //   width: 300,
// //             //         //   height: 200,
// //             //         //   decoration: BoxDecoration(
// //             //         //     borderRadius: BorderRadius.circular(20),
// //             //         //     border: Border.all(
// //             //         //       color: const Color.fromARGB(255, 54, 28, 37),
// //             //         //       width: 10,

// //             //         //     ),
// //             //         //     boxShadow: [
// //             //         //       const BoxShadow(
// //             //         //         color: Colors.white,
// //             //         //         blurRadius: 7,
// //             //         //         spreadRadius: 5,
// //             //         //         offset: Offset(0, 3),
// //             //         //       ),

// //             //         //     ],
// //             //       ),

// //             //       // child: Image.asset('assets/dog.jpg'),
// //             //     ],
// //             //   ),
// //             // ),
// //             // ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // Widget _buildTag(String tagName) {
// //   return Container(
// //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
// //     decoration: BoxDecoration(
// //       color: Colors.blue,
// //       borderRadius: BorderRadius.circular(20),
// //     ),
// //     child: Text(
// //       tagName,
// //       style: const TextStyle(color: Colors.white, fontSize: 16),
// //     ),
// //   );
// // }

// import 'package:flutter/material.dart';

// class KakaoChatItem extends StatelessWidget {
//   final String name;
//   final String message;
//   final String time;
//   final int unreadCount;
//   final String profileImageUrl;

//   const KakaoChatItem({
//     super.key,
//     required this.name,
//     required this.message,
//     required this.time,
//     this.unreadCount = 0,
//     this.profileImageUrl = 'https://picsum.photos/200',
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       child: Row(
//         children: [
//           _buildProfileImage(),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   message,
//                   style: const TextStyle(fontSize: 13, color: Colors.grey),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(width: 8),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 time,
//                 style: const TextStyle(fontSize: 11, color: Colors.grey),
//               ),
//               if (unreadCount > 0) ...[
//                 const SizedBox(height: 6),
//                 _buildNotificationBadge(unreadCount),
//               ],
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildProfileImage() {
//     return Container(
//       width: 60,
//       height: 60,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.grey[300],
//         image: DecorationImage(
//           image: NetworkImage(profileImageUrl),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }

//   Widget _buildNotificationBadge(int count) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//       decoration: BoxDecoration(
//         color: Colors.red,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Text(
//         count > 99 ? '99+' : count.toString(), // 99개 초과시 처리
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 10,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: ListView(
//           children: const [
//             KakaoChatItem(
//               name: "송재빈",
//               message: "염기랑 영원히~",
//               time: "오늘 밤밤",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "송재빈",
//               message: "염기랑 영원히~",
//               time: "오늘 밤밤",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "송재빈",
//               message: "염기랑 영원히~",
//               time: "오늘 밤밤",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "송재빈",
//               message: "염기랑 영원히~",
//               time: "오늘 밤밤",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "송재빈",
//               message: "염기랑 영원히~",
//               time: "오늘 밤밤",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "송재빈",
//               message: "염기랑 영원히~",
//               time: "오늘 밤밤",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "홍현기",
//               message: "내일 몇 시에 만날까?",
//               time: "오후 3:42",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "홍현기",
//               message: "내일 몇 시에 만날까?",
//               time: "오후 3:42",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "홍현기",
//               message: "내일 몇 시에 만날까?",
//               time: "오후 3:42",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "홍현기",
//               message: "내일 몇 시에 만날까?",
//               time: "오후 3:42",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "홍현기",
//               message: "내일 몇 시에 만날까?",
//               time: "오후 3:42",
//               unreadCount: 300,
//             ),
//             KakaoChatItem(
//               name: "홍현기",
//               message: "내일 몇 시에 만날까?",
//               time: "오후 3:42",
//               unreadCount: 300,
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }




// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: ListTile(
//             leading: Icon(Icons.account_circle, size: 40),
//             title: Text('홍길도오'),
//             subtitle: Text('상태메세지입니다.'),
//             trailing: Icon(Icons.arrow_forward_ios),
//             onTap: () {
//               print("터치됨!");
//             },
//           ),
//         ),
//       ),
//     ),
//   );
// }
