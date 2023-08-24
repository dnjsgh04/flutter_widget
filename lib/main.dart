import 'package:flutter/material.dart';
import 'package:flutter_widget/ScreenB1.dart';
import 'package:flutter_widget/ScreenC.dart';
import 'ScreenA.dart';

void main() {
  runApp(MyApp());
  /*
  // 코딩세프 순한맛 5~강
  //widget ? 독립적으로 실행되는 작은 프로그램
  // 바탕화면의 날씨나 뉴스 생활정보
  //그래픽이나 데이터 요소 처리하는 함수

  //플러터에서 위젯은 ui를 만들고 구성한ㄴ 모든 기본 단위 요소
  // 눈에 보이지 않는 요소들도 위젯 예) 중앙으로 배치, 센터로 배치 , 마진과 패딩들도 모두 위젯
  // 플러터는 위젯이라해도 과언이 아님
  //안드로이드 스튜디오와 xcode 처럼 드래그앤 드랍이 없음
  // 위젯의 타입
  // 1. stateless widget - - 상대가 없는 정적인 위젯, 실시간 데이터를 저장하지 않고 모양의 변화가 없음
  // 2. stateful widget - 밸류값으로 지속적으로 추적보존( 움지임이 없는 변화가 계속 있는 위젯), 사용자의 행동에 다라서 모양이 바뀜, 입력할 때 바뀜
  // 3. ingerited widget


  //위젯트리
  //위젯들을 트리구조로 정리
  //얼마든지 내에서 다른 위젯을 포함
  //위젯 컨테이너, 자식 부모구조로 이루어져있음

  //최상위 myapp()
  //materialApp()안에서 모두 사용
  // MyhomePage()
  // Scaffold위젯 을 바탕으로 모든 위젯들이 이 안에서 사용
  //   -appbar-text
  //   -center


  //6강
  //폴더의 구성 -- 카운터 앱이 기본으로 구성
  //pubspec.yaml 정의하는 내용들이 있음 앱을 만들때 프로젝트의 메타데이터 환경, 버전, 라이브러리 정의 등 을 하는 파일 - 중요한 내용을 등록
  // android, ios 는 패스
  // lib폴더에서 작업 할 예정

  제일먼저 할때 플러터 매터리얼 디자인 요소들 가져오기
  디바이스 일관된 디자인 가이드라인인데 구글이 만듬
  우선 import 부터 시작 import 'package:flutter/material.dart';
  void main() // 컴파일러가 main이란 함수를 통해서 가장 먼저 실행 하는 역할 main보다 더 상위 개념인 runApp(커스텀 위젯을 넣어주기)

  */
}

/*
7강 stless입력해서 자동으로 만들어주기
*
*
*/

 //class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // MaterialApp 써주기
//     return MaterialApp(
//       title: 'first app', // 타이틀 지정하기
//       theme: ThemeData(
//         //
//         primarySwatch: Colors.blue,
//         //앱에서 기본적으로 사용할 견본 색
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         // 다양한 속성을 불러와서 사용이 가능 예) 다크모드 일 시 등
//         useMaterial3: true,
//       ), // 클로징 레이블기능이 있음
//       home: MyHomePage(), // 커스텀 위젯을 만듦
//     );
//   }
// }


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/a' :(context) =>ScreenA(),
        '/b' :(context) =>ScreenB1(),
        '/c' :(context) =>ScreenC()

      },
      home: MyDrawer(),
    );
  }
}


//8강
// stateless로 만들지 stateful로 만들지 고민하기
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //무언갈 혼자서 할 수 있도록 발판을 주다 의 뜻을 가짐
      appBar: AppBar(
        title: Text('first app'),
      ),
      body: Center(
        child: Column(
          //자신을 모두 세로로 가능
          children: [
            Text('hello11'),
            Text('hello22'),
            Text('hello33'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text("hello")),
          ], //배열로 세로로 넣을 위젯들 넣어줌
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // 패치강좌 26강 다시 보기
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("like"),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: 'undo',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
            ),
          ));
        },
      ),
    );
  }
}

//9강
class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("card test"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0, // 앱바가 뜨는 것을 방지
        ),
        body: Center(
          // 컬럼을 사용 했기 때문에 앱 내에 센터로 놓고 싶다면 center위젯 사용
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // 세로 내 센터로 두고 싶다면 alignment 사용하기
            children: [
              Text("Hello"),
              Text("Hello"),
              Text("Hello"),
            ],
          ),
        ));
  }
}

//10강,11

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card1"),
        backgroundColor: Colors.amber[500],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Ryan",
              style: TextStyle(
                color: Colors.green[400],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.red[100], letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Ryan",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [Icon(Icons.check_circle_outline)],
            )
          ],
        ),
      ),
    );
  }
}

/* BuildContext 매우 복잡한 개념임 - 17강
*위젯 트리에서 현재 위젯의 위치를 알수 있는 정보
* 코딩할때 매번 봤음 위젯 안에 빌드 메서드
* 위젯 , 빌드컨텍스트
*
* 빌드컨텍스트는 stateless위젯이나 state 빌드 메서드에 의해서 리턴 된 위젯의 부모가 된다
* 커스텀 위젯을 만들때 scaffold를 리턴 어디에 위치하고있는지에 대한 정보를 해결
*
*
* */

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi"),
      ),
      body: Center(
        child: Text(
          "2번째 페이지",
          style: TextStyle(fontSize: 20, color: Colors.deepPurple),
        ),
      ),
    );
  }
}

// 컨테이너 더 이해하기
//container with no children try to be as big as possible
//마진과 패딩으로 위치 조종 오직 하나의 자식을 둠

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            // container - > safearea
            child: Container(
          child: Text("hello"),
          color: Colors.red,
          width: 100,
          //px
          height: 100,
          //margin: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          padding: EdgeInsets.all(40), //웹개발 백그라운드를 기반으로 하고 있음
        )));
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
            child: Center(
                // 센터로 감싼 컬럼이 있을 시 세로축 센터는 안됨
                child: Column(
                    //alt +enter : 감싸기 단축키
                   // mainAxisAlignment: MainAxisAlignment.end,
                    //mainAxisSize: MainAxisSize.min, // 컬럼이 children을 전체적으로 감싸게 되므로 세로에 대한 센터도 가능해짐
                    //verticalDirection: VerticalDirection.up, // 아래에서부터 정렬
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,// 정확히 나눠서
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween, // 위 아래 맞추어서
                  //crossAxisAlignment: CrossAxisAlignment.start,// container의 끝에 맞추어서 width값 하나 바꿔보기
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
                    children: [
              Container(
                width: 300,//stretch하면 가로의 크기가 필요 없어짐
                height: 100,
                color: Colors.white,
                child: Text("container 1"),
              ),
              //간격을 두고 싶을때
                SizedBox(
                  height: 30,
                ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text("container 2"),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text("container 3"),
              ),
                      // Container(// invisible container
                      //   width: double.infinity,
                      //   height: 20,
                      // )
            ]))));
  }
}

//순한맛 22강 navigator
//route - 스마트폰 상에서 보이는 하나의 페이지라고 생각하기
//navigator의 정의 push, pop 함수 stack자료구조로 페이지 구성
//stack은 밑에서부터 하나씩 쌓이고 push라는 데이터로 추가 pop으로 삭제

//materialPageroute context페이지 이동

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //context는 현재 페이지가 어디인지 확인, route는 material route 사용
            Navigator.push(context, MaterialPageRoute(
              //builder : (BuilderContext context){return MovePage();}
              //   builder: (context) => MovePage()));
            builder: (_) => MovePage()));
            //빌더는 무조건 있어야 하는 요소 라우트는 푸쉬 메세지를 통해서 context를 전달하여
            //빌더에서 사용에러 방지 컨텍스트 사용 하지 않을 시 생략 가능 (_)로 표시해서 구분 짓기
           // 빌더는 안전장치 다른 컨텍스트 일 수 있으므로
          //기본적으로 안드로이드, 아이폰에서 제공하는 이동 애니메이션 사용

          },
          child: Text("hello"),
        ),
      ),
    );
  }
}
class MovePage extends StatelessWidget {
  const MovePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Move"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("hello"),
        ),
      ),
    );
  }
}


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/r_s.png'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/r_c_square.png'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/r_c_square.png'),
                  )
                ],
                onDetailsPressed: (){
                  print('arraow is clicked');
                },
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                   // bottomLeft: Radius.circular(40),
                   // bottomRight: Radius.circular(40)
                  )
                ),
                accountName: Text('wonho'), accountEmail: Text("dnjsgh04@gmail.com")),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],),
              title: Text("Home"),
              onTap: (){
                print("home clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850],),
              title: Text("messeage"),

            )
          ],
        )
      ),
    );
  }
}
