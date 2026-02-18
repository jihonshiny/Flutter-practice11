# Flutter Practice 11 - 전체 코드 총정리

## 프로젝트 개요

이 프로젝트는 Flutter 레이아웃 및 위젯 학습을 목적으로 한 실습 프로젝트이다. 크게 세 가지 파트로 나뉜다.

- `lib/main.dart` : 여러 레이아웃 및 위젯 실습 코드들이 주석 처리된 형태로 누적되어 있음
- `lib/maa.dart` : 실제 실행 가능한 최종 앱 코드
- `mela/lib/main.dart` : 영화 목록을 보여주는 별도 미니 앱

---

## lib/main.dart - 주석 처리된 실습 히스토리

이 파일은 여러 실습 단계의 코드가 주석으로 누적되어 있다. 각 단계별로 무엇을 연습했는지 분석하면 다음과 같다.

---

### 실습 1. Container + Column/Row 레이아웃

```dart
body: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(width: 100, height: 100, color: Color.fromARGB(255, 24, 23, 89)),
    Container(width: 100, height: 100, color: Color.fromARGB(255, 75, 68, 20)),
    Container(width: 300, height: 100, color: Color.fromARGB(255, 63, 46, 9)),
  ],
)
```

컨테이너 3개를 세로로 배치하는 연습이다. `Column`의 `mainAxisAlignment`로 자식 위젯들의 세로 정렬 기준을 설정하고, `crossAxisAlignment`로 가로 정렬 기준을 설정한다.

**핵심 개념**

- `MainAxisAlignment.start` : 세로(Column 기준) 방향으로 위쪽 정렬
- `CrossAxisAlignment.center` : 가로 방향으로 가운데 정렬
- `Color.fromARGB(alpha, red, green, blue)` : ARGB 값으로 직접 색상 지정

---

### 실습 2. Expanded + 비율 분할

```dart
Row(
  children: [
    Expanded(flex: 1, child: Container(color: Colors.red)),
    SizedBox(height: 100),
    Expanded(flex: 1, child: Container(color: Color.fromARGB(255, 52, 50, 202))),
    SizedBox(height: 100),
    Expanded(flex: 1, child: Container(color: Color.fromARGB(255, 48, 194, 202))),
  ],
)
```

`Expanded` 위젯으로 남은 공간을 비율에 따라 나누는 연습이다.

**핵심 개념**

- `Expanded` : 부모 위젯의 남은 공간을 채운다. `flex` 값이 같으면 동일한 비율로 분할
- `flex: 1` vs `flex: 2` : flex 값의 비율대로 공간이 배분된다. 예를 들어 1:2:1이면 전체의 25%, 50%, 25%를 차지
- `SizedBox` : 위젯 사이에 고정 간격을 줄 때 사용

---

### 실습 3. Stack + Image.asset + 텍스트 겹치기

```dart
Stack(
  alignment: Alignment.center,
  children: [
    Image.asset(
      'assets/dog.jpg',
      alignment: Alignment.center,
      width: 400,
      height: 400,
    ),
    Container(
      color: Colors.black,
      padding: const EdgeInsets.all(8),
      child: const Text(
        "저는 스택이에요",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  ],
)
```

`Stack` 위젯으로 이미지 위에 텍스트를 겹쳐 배치하는 연습이다.

**핵심 개념**

- `Stack` : 자식 위젯들을 겹쳐 배치한다. 나중에 선언된 위젯이 앞쪽(위)에 표시된다
- `alignment: Alignment.center` : Stack 내 정렬되지 않은 자식들의 기본 정렬 위치
- `Image.asset()` : 앱 내부 assets 폴더에서 이미지를 불러온다
- `BoxFit.cover` : 이미지를 컨테이너 크기에 맞게 잘라서 채움

---

### 실습 4. Row + Expanded로 프로필 카드 만들기

```dart
Row(
  children: [
    Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey[300],
        child: Image.asset('assets/dog.jpg', fit: BoxFit.cover),
      ),
    ),
    Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("댕댕이", style: TextStyle(fontSize: 30)),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "나한테 미안하다고 사과해, 나한테 미안하다고 사과했어 고마워",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  ],
)
```

왼쪽에 이미지, 오른쪽에 이름과 소개글을 배치하는 프로필 카드 레이아웃 실습이다.

**핵심 개념**

- `flex: 1`과 `flex: 2`의 조합으로 1:2 비율 레이아웃 구성
- `Padding` : 자식 위젯 주위에 여백을 추가한다
- `TextAlign.center` : 텍스트 내용을 가운데 정렬
- `CrossAxisAlignment.center` : Column 내 자식들을 가로 기준으로 가운데 정렬

---

### 실습 5. Container + BoxDecoration

```dart
Container(
  width: 300,
  height: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: const Color.fromARGB(255, 54, 28, 37),
      width: 10,
    ),
    boxShadow: [
      const BoxShadow(
        color: Colors.white,
        blurRadius: 7,
        spreadRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
)
```

`BoxDecoration`으로 컨테이너를 꾸미는 연습이다.

**핵심 개념**

- `BoxDecoration` : Container에 적용할 수 있는 시각적 장식 클래스. `color`는 BoxDecoration 사용 시 Container의 `color` 속성 대신 여기서 지정해야 한다
- `borderRadius: BorderRadius.circular(20)` : 모서리를 둥글게 처리
- `Border.all(color, width)` : 테두리 설정
- `BoxShadow` : 그림자 효과. `blurRadius`(흐림 정도), `spreadRadius`(퍼짐 정도), `offset`(그림자 위치 오프셋)

---

### 실습 6. Wrap 위젯으로 태그 UI 만들기

```dart
Wrap(
  spacing: 8.0,
  runSpacing: 4.0,
  children: [
    _buildTag('Flutter'),
    _buildTag('Android'),
    _buildTag('iOS'),
  ],
)

Widget _buildTag(String tagName) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      tagName,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}
```

`Wrap` 위젯으로 태그 목록 UI를 만드는 연습이다.

**핵심 개념**

- `Wrap` : 자식 위젯들을 가로로 나열하다가 공간이 부족하면 다음 줄로 자동 줄바꿈한다. `Row`와 달리 overflow가 발생하지 않는다
- `spacing` : 가로 방향 자식 위젯 사이의 간격
- `runSpacing` : 줄이 바뀔 때 줄 사이의 간격
- `EdgeInsets.symmetric(horizontal, vertical)` : 수평/수직 방향의 padding을 각각 지정
- `_buildTag()` : 재사용 가능한 위젯을 별도 함수로 추출하는 패턴

---

### 실습 7. KakaoChatItem - StatelessWidget으로 컴포넌트 분리

카카오톡 채팅 목록 아이템 UI를 StatelessWidget으로 구현한 실습이다.

```dart
class KakaoChatItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final String profileImageUrl;

  const KakaoChatItem({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    this.unreadCount = 0,
    this.profileImageUrl = 'https://picsum.photos/200',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          _buildProfileImage(),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(time, style: const TextStyle(fontSize: 11, color: Colors.grey)),
              if (unreadCount > 0) ...[
                const SizedBox(height: 6),
                _buildNotificationBadge(unreadCount),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
        image: DecorationImage(
          image: NetworkImage(profileImageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildNotificationBadge(int count) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        count > 99 ? '99+' : count.toString(),
        style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}
```

**핵심 개념**

- `StatelessWidget` : 상태가 없는 불변 위젯. 데이터를 생성자에서 받아 화면에 표시하기만 할 때 사용
- `required` vs 기본값 파라미터 : `required this.name`은 필수 파라미터, `this.unreadCount = 0`은 생략 가능한 옵셔널 파라미터
- `super.key` : 위젯 트리에서 식별자 역할을 하는 key를 상위 클래스에 전달하는 최신 Dart 문법
- `TextOverflow.ellipsis` : 텍스트가 지정된 줄 수를 넘을 경우 말줄임표(...)로 처리
- `maxLines: 1` : 텍스트를 최대 1줄로 제한
- `DecorationImage` : BoxDecoration 안에서 이미지를 배경으로 설정
- `NetworkImage()` : URL로 네트워크 이미지를 불러옴
- `if (unreadCount > 0) ...[...]` : 컬렉션 내 조건부 렌더링. `...`는 spread operator로 리스트를 펼쳐 삽입

안읽은 메시지 수(unreadCount)가 99 초과이면 `'99+'`로 표시하고, 그 이하이면 숫자 그대로 표시하는 뱃지 처리도 구현되어 있다.

**사용 예시**

```dart
ListView(
  children: const [
    KakaoChatItem(
      name: "송재빈",
      message: "염기랑 영원히~",
      time: "오늘 밤밤",
      unreadCount: 300,
    ),
    KakaoChatItem(
      name: "홍현기",
      message: "내일 몇 시에 만날까?",
      time: "오후 3:42",
      unreadCount: 300,
    ),
  ],
)
```

---

### 실습 8. ListTile 기본 사용

```dart
ListTile(
  leading: Icon(Icons.account_circle, size: 40),
  title: Text('홍길도오'),
  subtitle: Text('상태메세지입니다.'),
  trailing: Icon(Icons.arrow_forward_ios),
  onTap: () {
    print("터치됨!");
  },
)
```

`ListTile`은 표준 목록 아이템 레이아웃을 제공하는 위젯이다.

**핵심 개념**

- `leading` : 왼쪽에 배치되는 위젯 (주로 아이콘이나 이미지)
- `title` : 중앙 상단의 주 텍스트
- `subtitle` : title 아래의 보조 텍스트, 자동으로 작고 회색으로 스타일링됨
- `trailing` : 오른쪽에 배치되는 위젯 (주로 아이콘)
- `onTap` : 아이템을 탭했을 때 실행될 콜백 함수

---

## lib/maa.dart - 실행 가능한 앱

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Flutter App"),
          backgroundColor: Colors.blue,
        ),
        body: const Text(
          "이제 예쁘게 나올걸?",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 61, 190, 126),
          ),
        ),
      ),
    );
  }
}
```

main.dart의 주석 처리된 코드들을 실험하며 최종적으로 작동하는 간단한 앱으로 정리한 파일이다.

**핵심 개념**

- `runApp()` : Flutter 앱의 진입점. 최상위 위젯을 화면에 표시한다
- `MaterialApp` : Material Design을 적용하는 앱의 루트 위젯. 라우팅, 테마, 지역화 등을 담당한다
- `Scaffold` : 기본 앱 화면 구조를 제공하는 위젯. `appBar`, `body`, `floatingActionButton`, `bottomNavigationBar` 등의 슬롯을 가진다
- `AppBar` : 상단 앱 바. `title`, `backgroundColor`, `actions`, `leading` 등을 설정할 수 있다
- `TextStyle` : 텍스트의 스타일을 지정. `fontWeight: FontWeight.w400`은 일반 굵기(normal)에 해당한다

---

## mela/lib/main.dart - 영화 목록 앱

이 파일은 별도의 서브 프로젝트(`mela/`)에 있는 영화 목록을 보여주는 앱이다.

```dart
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
          separatorBuilder: (context, index) =>
              Divider(indent: 20, endIndent: 20),
          itemBuilder: (context, index) {
            final movie = movies[index];
            return ListTile(
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
              title: Text(
                movie['title']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(movie['genre']!),
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
```

**데이터 구조**

`List<Map<String, String>>` 타입으로 영화 데이터를 정의했다. 각 항목은 `title`, `genre`, `image` 키를 가진 Map이다.

**핵심 개념**

- `ListView.separated()` : 아이템 사이에 구분선(separator)을 자동으로 삽입할 수 있는 ListView. 일반 `ListView.builder()`와 달리 `separatorBuilder` 파라미터를 추가로 받는다
- `itemCount` : 목록의 총 아이템 수
- `itemBuilder` : 각 인덱스에 해당하는 아이템 위젯을 반환하는 콜백
- `separatorBuilder` : 아이템 사이에 삽입될 구분선 위젯을 반환하는 콜백
- `Divider` : 가로 구분선 위젯. `indent`는 왼쪽 여백, `endIndent`는 오른쪽 여백
- `ClipRRect` : 자식 위젯을 둥근 모서리로 잘라내는 위젯. `borderRadius`로 모서리 반경 지정
- `Image.network()` : URL에서 이미지를 불러옴
- `errorBuilder` : 이미지 로딩 실패 시 대체로 표시할 위젯을 반환하는 콜백. 여기서는 `Icons.movie` 아이콘을 대체로 사용
- `movie['image']!` : null safety에서 `!` 연산자는 값이 null이 아님을 단언(assert)한다. Map의 값은 기본적으로 nullable이므로 필요
- `'${index + 1}'` : 문자열 보간(interpolation). index는 0부터 시작하므로 +1을 해서 1위부터 표시
- `debugShowCheckedModeBanner: false` : 화면 우상단의 "DEBUG" 배너를 숨김

---

## 전체 학습 포인트 요약

### 레이아웃 위젯

| 위젯 | 역할 |
|------|------|
| `Column` | 자식들을 세로로 배치 |
| `Row` | 자식들을 가로로 배치 |
| `Stack` | 자식들을 겹쳐 배치 |
| `Wrap` | 자식들을 가로로 나열하다 넘치면 다음 줄로 이동 |
| `Expanded` | 남은 공간을 채움, flex로 비율 설정 |
| `Padding` | 자식 위젯에 여백 추가 |
| `SizedBox` | 고정 크기 공간 또는 간격 |
| `ClipRRect` | 자식을 둥근 사각형으로 클리핑 |

### 표시 위젯

| 위젯 | 역할 |
|------|------|
| `Text` | 텍스트 표시 |
| `Container` | 크기, 색상, 장식 등을 지정할 수 있는 범용 위젯 |
| `Image.asset` | 앱 내부 이미지 표시 |
| `Image.network` | 네트워크 이미지 표시 |
| `Icon` | Material Design 아이콘 표시 |
| `ListTile` | 표준 목록 아이템 레이아웃 |
| `Divider` | 가로 구분선 |

### 목록 위젯

| 위젯 | 역할 |
|------|------|
| `ListView` | 스크롤 가능한 목록 |
| `ListView.builder` | 지연 생성 방식의 목록 |
| `ListView.separated` | 구분선 있는 목록 |

### 스타일링

| 클래스 | 역할 |
|--------|------|
| `BoxDecoration` | Container에 테두리, 그림자, 이미지 등 장식 |
| `TextStyle` | 텍스트의 크기, 굵기, 색상 등 스타일 |
| `BorderRadius` | 모서리 반경 설정 |
| `BoxShadow` | 그림자 효과 |
| `DecorationImage` | BoxDecoration 내 이미지 배경 |
| `EdgeInsets` | 여백 설정 (all, symmetric, only 등) |

### Dart 문법 포인트

- `required` 키워드 : 생성자의 필수 named 파라미터 지정
- `super.key` : 상위 클래스에 key를 직접 전달하는 단축 문법 (Dart 2.17+)
- `if (condition) ...[widget]` : 위젯 목록 내 조건부 렌더링
- `...` spread operator : 리스트를 펼쳐서 다른 리스트에 삽입
- `map['key']!` : null assertion operator, Map 값이 null이 아님을 단언
- `'${expression}'` : 문자열 보간
- `count > 99 ? '99+' : count.toString()` : 삼항 연산자로 99 초과 뱃지 처리
