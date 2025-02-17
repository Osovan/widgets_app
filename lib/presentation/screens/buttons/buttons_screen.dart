import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button SCreen"),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated ')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarm),
                label: Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: Text('Filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_time_rounded),
                label: Text(
                  'Filled Icon',
                )),
            OutlinedButton(onPressed: () {}, child: Text('Outline')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.accessibility_new),
                label: Text('Outline')),
            TextButton(onPressed: () {}, child: Text('Text')),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.account_circle_sharp),
                label: Text('Text')),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_tree_sharp),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),
                  iconColor: WidgetStatePropertyAll(Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
