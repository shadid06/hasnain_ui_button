import 'package:flutter/material.dart';
import 'package:hasnain_ui_button/hasnain_ui_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hasnain ui button',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hasnain ui button'),
        ),
        body: Center(
            child: Column(
          children: [
            Button(
              variant: ButtonVariant.outline,
              text: 'Click me',
              onPressed: () {
                print('Button pressed');
              },
            ),
            const SizedBox(height: 10),
            Button(
                text: 'solid', onPressed: () {}, variant: ButtonVariant.solid),
            const SizedBox(height: 10),
            Button(
              text: 'solid2',
              backgroundColor: Colors.redAccent,
              onPressed: () {},
              variant: ButtonVariant.solid,
              textStyle: const TextStyle(color: Colors.green),
            ),
            const SizedBox(height: 10),
            Button(
              width: 140,
              text: 'custom outline',
              onPressed: () {},
              variant: ButtonVariant.outline,
              borderSide: const BorderSide(color: Colors.red, width: 2),
            ),
            const SizedBox(height: 10),
            Button(
              text: 'destructive',
              onPressed: () {},
              variant: ButtonVariant.destructive,
            ),
            const SizedBox(height: 10),
            Button(
              text: 'radius',
              onPressed: () {},
              variant: ButtonVariant.solid,
              backgroundColor: Colors.teal,
              borderRadius: BorderRadius.circular(40),
            ),
            const SizedBox(height: 10),
            Button(
              text: 'testStyle',
              onPressed: () {},
              variant: ButtonVariant.solid,
              backgroundColor: Colors.teal,
              borderRadius: BorderRadius.circular(40),
              textStyle: const TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(height: 10),
            Button(
              text: 'height-width',
              onPressed: () {},
              backgroundColor: Colors.green,
              height: 40,
              width: 100,
            ),
            const SizedBox(height: 10),
            Button(
              text: 'disabled',
              onPressed: () {
                print('Button pressed');
              },
              backgroundColor: Colors.red,
              height: 40,
              width: 100,
              isDisabled: true,
            ),
          ],
        )),
      ),
    );
  }
}
