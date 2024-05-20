import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: 'Fongbé',
              items: <String>['Fongbé', 'Another Language 1', 'Another Language 2']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            Icon(Icons.swap_horiz),
            DropdownButton<String>(
              value: 'Français',
              items: <String>['Français', 'Another Language 1', 'Another Language 2']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            SizedBox(width: 20),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.orange,
            ),
          ],
        ),
        actions: [SizedBox(width: 16)],
      ),
      body: ChatBody(),
      bottomNavigationBar: BottomChatBar(),
    );
  }
}

class ChatBody extends StatelessWidget {
  final List<ChatMessage> messages = [
    ChatMessage(isLeft: true, time: "00:07", audioPath: "https://placehold.co/300x50?description=Audio%20waveform%20image"),
    ChatMessage(isLeft: true, time: "00:10", audioPath: "https://placehold.co/300x50?description=Audio%20waveform%20image"),
    ChatMessage(isLeft: false, time: "00:22", audioPath: "https://placehold.co/300x50?description=Audio%20waveform%20image"),
    ChatMessage(isLeft: false, time: "00:25", audioPath: "https://placehold.co/300x50?description=Audio%20waveform%20image"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return AudioMessageBubble(
            isLeft: messages[index].isLeft,
            audioPath: messages[index].audioPath,
            time: messages[index].time,
          );
        },
      ),
    );
  }
}

class ChatMessage {
  final bool isLeft;
  final String time;
  final String audioPath;

  ChatMessage({
    required this.isLeft,
    required this.time,
    required this.audioPath,
  });
}

class AudioMessageBubble extends StatelessWidget {
  final bool isLeft;
  final String audioPath;
  final String time;

  AudioMessageBubble({
    required this.isLeft,
    required this.audioPath,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.play_arrow, color: Colors.green),
            Image.network(audioPath, width: 200),
            SizedBox(width: 8),
            Text(time),
          ],
        ),
      ),
    );
  }
}

class BottomChatBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text("Type a message..."),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic, color: Colors.green),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}