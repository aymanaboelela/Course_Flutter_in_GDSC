import 'package:course_flutter/home.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int number = 2;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String image = "assets/images/img_1.png";
// VCS
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.9),
          itemCount: number,
          itemBuilder: (context, index) {
            String name = Faker().person.name();
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                      image: image.toString(),
                      name: name,
                    ),
                  ),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Image.asset(image),
                    Text(
                      name,
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
            print(number);
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void sum(int num1, int num2) {
  print(num1 + num2);
}

// SingleChildScrollView(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Card(
// clipBehavior: Clip.antiAliasWithSaveLayer,
// elevation: 5,
// margin: const EdgeInsets.all(5),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20)),
// child: Container(
// alignment: Alignment.center,
// child: Image.asset(
// "assets/images/img_1.png",
// ),
// ),
// ),
// const SizedBox(
// height: 20,
// ),
// Image.network(
// "https://messengernews.fb.com/wp-content/uploads/2018/10/Messenger-4-People-Tab-iOS.png",
// ),
// ],
// ),
// ),
