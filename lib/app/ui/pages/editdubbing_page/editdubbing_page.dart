import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/editdubbing_controller.dart';

class EditDubbingPage extends GetView<EditDubbingController> {
  const EditDubbingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edition'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://placehold.co/327x184?description=Two%20fishermen%20in%20a%20wooden%20boat%20on%20a%20lake'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Notre village est situé au cœur du lac',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow_rounded, size: 40),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notre village est situé au cœur du lac',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('00:05', style: TextStyle(fontSize: 12)),
                          Spacer(),
                          Text('00:15', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      LinearProgressIndicator(value: 0.33),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: const Text(
                'Nokoué, c\'est Ganvié, un endroit où les maisons sur pilotis se dressent fièrement au-dessus des eaux',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _IconButtonWithLabel(
                    icon: Icons.language,
                    label: 'Langues',
                    onPressed: () {},
                  ),
                  _IconButtonWithLabel(
                    icon: Icons.record_voice_over,
                    label: 'Doublage',
                    onPressed: () {},
                  ),
                  _IconButtonWithLabel(
                    icon: Icons.volume_up,
                    label: 'Volume',
                    onPressed: () {},
                  ),
                  _IconButtonWithLabel(
                    icon: Icons.style,
                    label: 'Style',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconButtonWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _IconButtonWithLabel({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
          iconSize: 30,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
