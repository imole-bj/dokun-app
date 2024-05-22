import 'package:flutter/material.dart';

class ProjectListView extends StatelessWidget {
  const ProjectListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            child: ListTile(
              leading: Image.network(
                  'https://placehold.co/80x80?description=A%20project%20thumbnail%20image'),
              title: const Text('Projet sous-titrage 056',
                  style: TextStyle(color: Colors.black)),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sous-titrage', style: TextStyle(color: Colors.grey)),
                  Text('14/05/2024 10:54',
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
              trailing: const Icon(Icons.more_vert, color: Colors.grey),
            ),
          ),
        );
      }),
    );
  }
}
