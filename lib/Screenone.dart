import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: Image.asset(
          'assets/png/Logo 2@2x.png',
          height: 54,
          width: 80,
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/png/Vectorv.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/png/Group.png',
              width: 24,
              height: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/png/Vector.png',
              width: 22,
              height: 22,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.3,
                    width: width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/png/banner2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildSection(
                    title: 'Our Brands',
                    child: SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset(
                            'assets/png/639x837_1 1.png',
                            height: 150,
                            width: 114,
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/png/TWIN-CAPSULE 1.png',
                            height: 150,
                            width: 114,
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/png/2-blocchi_image_1 1.png',
                            height: 150,
                            width: 114,
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/png/639x837_1 1.png',
                            height: 150,
                            width: 114,
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildSection(
                    title: 'Our Products',
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height * 0.3,
                              width: width,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/png/Logo2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: -5,
                              left: 20,
                              child: Image.asset(
                                'assets/png/Group 463.png',
                                height: height * 0.30,
                                width: width * 0.90,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Furla 1927 L Tote',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'OMR 75.000',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildSection(
                    title: 'Suggested For You',
                    child: SizedBox(
                      height: 300, // Adjusted height
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildSuggestedItem(
                            'assets/png/Snapinsta 41.png',
                            'Pennyblack Brown Black',
                            'OMR 75.000',
                          ),
                          const SizedBox(width: 10),
                          _buildSuggestedItem('assets/png/Snapinsta 43.png', 'Max & Co Sporty', 'OMR 75.000'),
                          const SizedBox(width: 10),
                          _buildSuggestedItem('assets/png/Snapinsta 41.png', 'Max & Co Sporty', 'OMR 75.000'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'View All',
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: child,
        ),
      ],
    );
  }

  Widget _buildSuggestedItem(String imagePath, String text, String price) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              imagePath,
              height: 230,
              width: 161,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 12,
              right: 18,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/png/love.png',
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          price,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
