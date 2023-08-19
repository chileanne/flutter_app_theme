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
        colorScheme: ColorScheme.fromSwatch(
       // primarySwatch: Colors.blue
         // backgroundColor: Colors.red,
        ),

        scaffoldBackgroundColor: Colors.red,


      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.white
        ),


        displayLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: Colors.white
        ),



      ),

      ///app bar theme
      appBarTheme: const AppBarTheme(
        color: Colors.deepPurpleAccent,
        centerTitle: true,
        elevation: 2.0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black
        )

      ),


       ///card theme
       //  cardColor: Colors.yellow,
        cardTheme: const CardTheme(
          color: Colors.green,
          elevation: 4.0,
          surfaceTintColor: Colors.orange
        ),


        ///elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
              backgroundColor: Colors.orange,
            textStyle: const TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w600,
              //color: Colors.orange,

            )
          )
        )

      ),
      darkTheme:  ThemeData(
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
          colorScheme: ColorScheme.fromSwatch(
            // primarySwatch: Colors.blue
            // backgroundColor: Colors.red,
          ),

          scaffoldBackgroundColor: Colors.blue,


          textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.black
            ),


            displayLarge: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.orange
            ),



          ),

          ///app bar theme
          appBarTheme: const AppBarTheme(
              color: Colors.red,
              centerTitle: true,
              elevation: 2.0,
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              )

          ),


          ///card theme
          //  cardColor: Colors.yellow,
          cardTheme: const CardTheme(
              color: Colors.deepPurpleAccent,
              elevation: 4.0,
          ),


          ///elevated Button
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w600,
                    //color: Colors.orange,

                  )
              )
          )

      ),
      home: const MyHomePage(title: 'Flutter Theme'),
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
        //backgroundColor: Theme.of(context).appBarTheme,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///Card
            Card(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Column(
                children: [

                  Text("My name is ANthony")


                ],
                ),
              ),
            ),


            SizedBox(height: 20,),


            ///Elevated Button
            ElevatedButton(
                onPressed: (){

                },
                child: Text("Click")),

            SizedBox(height: 20,),

             Text("I Love Dancing in the town",
             style: Theme.of(context).textTheme.bodyLarge,),


            SizedBox(height: 20,),

            Text("I LPlaying ball with messi",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.blue
                )),

            SizedBox(height: 20,),

            Text("I Love Singing with Burna Boy",
                style: Theme.of(context).textTheme.bodyLarge

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
