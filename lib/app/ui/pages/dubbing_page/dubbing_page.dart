import 'package:flutter/material.dart';
//import 'package:gap/gap.dart';
import 'package:get/get.dart';
//import 'package:dokun/app/ui/utils/functions.dart';
import '../../../controllers/dubbing_controller.dart';
import 'package:dokun/app/routes/route.dart';
import '../../widgets/tabbar.dart';
import '../../widgets/projectlist.dart';

class DubbingPage extends GetView<DubbingController> {
  const DubbingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://placehold.co/40x40?description=A%20profile%20image%20of%20a%20user',
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bienvenue',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Mes projets',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              //controller: searchController,
              decoration: InputDecoration(
                hintText: 'Recherche',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(Routes.editDubbing);
              },
              icon: const Icon(Icons.add, color: Colors.white),
              label: const Text('Nouveau projet',
                  style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const TabBarWidget(),
            const Expanded(child: ProjectListView()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box, size: 40), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ''),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late TextEditingController searchController;

//   @override
//   void initState() {
//     super.initState();
//     searchController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }

// }

