import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'List View and Text Form',
              style: TextStyle(fontFamily: 'Pacifico'),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 33,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://imgs.search.brave.com/Qto6JVhf4h_DOZLS-TetxcpCFnBNYaQMZaaR871C4VE/rs:fit:738:554:1/g:ce/aHR0cHM6Ly9hcHBh/bWF0aXguY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE2LzA1/L0Fub255bW91cy1G/ZWF0UGljLmpwZw'),
                    ),
                    title: const Text('Junaid'),
                    subtitle: Row(
                      children: const [
                        Text('Student at '),
                        Text(
                          'UCP',
                          style: TextStyle(fontFamily: 'Pacifico'),
                        )
                      ],
                    ),
                    trailing: const Text('Add+'),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'type',
                  labelText: 'Your Comment?',
                  hintStyle: TextStyle(fontFamily: 'pacifico'),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
                onChanged: ((value) {
                  print(value);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
