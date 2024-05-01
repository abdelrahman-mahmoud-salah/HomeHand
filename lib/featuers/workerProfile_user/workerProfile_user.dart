import 'package:flutter/material.dart';

class WorkerProfile extends StatelessWidget {
  final String coin = "LE";
  final String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. "
      "Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, size: 30, color: Color(0xff014F86)),
        ),
        actions:  [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications_none_outlined, size: 30, color: Color(0xff014F86)),
          ),
        ],
        backgroundColor: const Color(0xffD9D9D9),
      ),
      backgroundColor: const Color(0xffD9D9D9),
      body: Stack(
        children: [
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 5,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatItem('100+', 'Review'),
                      _buildStatItem('500+', 'Ongoing'),
                      _buildStatItem('700+', 'Client'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Description",
                        style: TextStyle(color: Color(0xff0B92F0), fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: const TextStyle(color: Color(0xffD9D9D9), fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 9,
            left: MediaQuery.of(context).size.width / 3,
            child: Column(
              children: [
                _buildProfileImage(),
                const SizedBox(height: 20),
                const Text(
                  'Mitchal Marsh',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff046CB5), fontSize: 20),
                ),
                const Text(
                  '5 years experience',
                  style: TextStyle(color: Color(0xff52B8FF), fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      color: index < 4 ? Colors.yellow : Colors.grey,
                      size: 17,
                    ),
                  ),
                ),
                Text(
                  '$coin 30.00/h',
                  style: const TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(340, 75),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xff0B92F0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                  ),
                  child: const Text(
                    "Book Now",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Color(0xff0B92F0), fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(color: Color(0xff52B8FF), fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildProfileImage() {
    return Stack(
      children: [
        Container(
          width: 150,
          height: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.blue,
              width: 3,
            ),
          ),
          child: Container(
            width: 125,
            height: 125,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/147/147129.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
