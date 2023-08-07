import 'package:flutter/material.dart';

class Threedots extends StatelessWidget {
  const Threedots({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 130,
        top: 20,
        bottom: 500,
      ),
      child: Container(
        color: Colors.white,
        width: 120,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'New group',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'New broadcast',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Linked devices',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Starred messages',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.start,
                )),
          ],
        ),
      ),
    );
  }
}
