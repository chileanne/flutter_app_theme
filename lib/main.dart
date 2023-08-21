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
      ///light theme
      theme: ThemeData(

        ///app bar theme
        appBarTheme: const AppBarTheme(
          color: Colors.deepOrange,
          centerTitle: true,
          elevation: 1.0,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white
          )

        ),

        ///card theme
        cardTheme: const CardTheme(
          color: Colors.deepPurpleAccent,
          elevation: 2.0
        ),


        ///Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurpleAccent.shade700
          )
        ),


        ///Text themes
        textTheme:  TextTheme(
          displayLarge:  const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22.0,
            color: Colors.white
          ),


          displayMedium: TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w200,
            color: Colors.deepPurpleAccent.shade200
          ),


            displaySmall: TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w200,
                color: Colors.black
            )
        ) ,


        ///backgorund color
        scaffoldBackgroundColor: Colors.grey,




        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      ///dark theme
      darkTheme: ThemeData(

        ///app bar theme
        appBarTheme: const AppBarTheme(
            color: Colors.black54,
            centerTitle: true,
            elevation: 1.0,
            titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white
            )

        ),

        ///card theme
        cardTheme: const CardTheme(
            color: Colors.black54,
            elevation: 2.0
        ),


        ///Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black26
            )
        ),


        ///Text themes
        textTheme:  const TextTheme(
            displayLarge:  TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22.0,
                color: Colors.white
            ),


            displayMedium: TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w200,
                color: Colors.white
            ),

            displaySmall: TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w200,
                color: Colors.yellow
            )
        ) ,


        ///backgorund color
        scaffoldBackgroundColor: Colors.grey.shade300,




        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),


      home: const MyHomePage(title: 'Flutter Themes'),
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
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
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

            ///Card
         Card(
              child: SizedBox(
                width: 200,
                  height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("My Name is ANthony",
                    style: Theme.of(context).textTheme.displayLarge,)
                  ],
                ),
              )
            ),


            SizedBox(height:  20,),

            ///Elevated Button
            ElevatedButton(
                onPressed: (){},
                child: Text("Click")),

            SizedBox(height:  20,),

            Text("I Love to dance Like a BOy",
            style: Theme.of(context).textTheme.displayMedium,),

            SizedBox(height:  20,),

            Text("Afro Beat is the best",
                style:Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w600
                )),


            SizedBox(height:  20,),

            Text("Burna Boy is the best Muscian in the world",
              style:Theme.of(context).textTheme.displaySmall,),








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
