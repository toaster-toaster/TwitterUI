/// このコード以外のリソースを使いたいとき import 'リソースのパス'　と書きます。
/// material.dart の中には UI を作るための部品が入っていると思ってください。
import 'package:flutter/material.dart';

/// flutterではまずmain.dart　の main() が実行されます。
/// これは関数と呼ばれるものですが、関数については次のチャプターで詳しく解説します。
void main() {
  /// runApp(最初に表示させたいUI) と書くことでそのUIが画面に表示されます。
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('所々ジョージ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 20, 174, 185),
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PostTile(),
              PostTile(),
              PostTile(),
              PostTile(),
              PostTile(),
              PostTile(),
              PostTile(),
              PostTile(),
              PostTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class PostTile extends StatelessWidget {
  const PostTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://jp.images-monotaro.com/Monotaro3/pi/highreso/mono62960319-230720-02.jpg'),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('所々ジョージ'),
                  SizedBox(width: 8),
                  Text('1939/01/14'),
                ],
              ),
              SizedBox(height: 4),
              Text('午後ティーうまい'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.comment),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

*/