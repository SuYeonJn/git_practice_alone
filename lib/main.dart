//git --version
//git status, git  status --short
//git init => git repo 처음 만들기, 추적 시작
//git add , git add -A, git add -ALL
//git commit -m "commit message"
//git commit -a -m "staging(Add)+commit 한번에"
//git log (q로 나가기)
//git ~~ -help (도움말) ex) git commit -help
//git help --all 모든 command line 보기

//branch란? main branch를 건들이지 않고 곁가지로 추가하되, merge를 통해 main branch를 수정할 수 있다.

//git branch 브랜치명 => branch 만들기
//git branch => 모든 local branch 확인하기, * -> 현재 브랜치 표시
//git branch -a => 모든 local & remote 브랜치 보기
//git branch -r => 모든 remote 브랜치 보기
//git checkout 브랜치명 => 브랜치 바꾸기
//git checkout -b 브랜치명 => 브랜치 만들고 바꾸기 한번에

//merge 하기
//1. master branch로 이동
//2. "git merge 브랜치명"
//3. "git branch -d 삭제할 브랜치명"

//conflict 란? 같은 파일의 같은 줄에 다른 내용이 있을 때
// - merge 취소하기 : git merge --abort
// - conflict 해결하고 다시 merge

//git remote vs local
//git local repo => git 로컬 저장소, 내 컴퓨터에 저장
//git remote repo => github같은 원격 저장소

//github 연결 (local repo 없을 때)
//1. git init
//2. git commit -m "first commit"
//3. git branch -M main
//4. git remote add origin url
//5. git push -u(--set-upstream) origin main

//github 연결 (local repo 있을 때)
//1. git remote add origin url
//2. git branch -M main
//2. git push -u origin main
//git branch -M main (기본 브랜치 이름을 main으로 바꾸기)

//pull
//pull = fetch + merge
// fetch => 변경 사항들을 다 가져옴
// git fetch origin, git merge origin/master
// git pull origin => 모든 변경 사항을 로컬 저장소로 가져와서 merge 하기

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '변경되었습니다.',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
