import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("List of fruits"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "🍎 Apple\n",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🍇 Grapes\n",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🍒 Cherry\n",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🍓 Strawberry\n",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🥭 Mango\n",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🍍 pineapple\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🍋 lemon\n",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🍉 watermelon\n",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "🥥 Coconut\n",
                  style: TextStyle(
                    color: Colors.brow-n,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}