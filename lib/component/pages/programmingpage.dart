import 'package:flutter/material.dart';

class ProgrammingCoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Course'),
        backgroundColor: Color(0xFF4A1C6F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Programmer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Find by location, name',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildCourseItem(
                    title: 'Encrypting Cyver',
                    location: 'Jl. Soekarno Hatta 2',
                    schedule: 'Selasa - Rabu',
                    price: 'Rp 300.000 - 800.000',
                    rating: 4.5,
                    imagePath: 'assets/image/newcourse.png',
                  ),
                  _buildCourseItem(
                    title: 'MySkill Bandung',
                    location: 'Jl. Sukabirus No. 26',
                    schedule: 'Senin - Jumat',
                    price: 'Rp 100.000 - 400.000',
                    rating: 4.5,
                    imagePath: 'assets/image/Login.png',
                  ),
                  _buildCourseItem(
                    title: 'Networking Solution',
                    location: 'Jl. Sukabirus No. 26',
                    schedule: 'Rabu - Sabtu',
                    price: 'Rp 450.000 - 700.000',
                    rating: 4.5,
                    imagePath: 'assets/image/newcourse.png',
                  ),
                  _buildCourseItem(
                    title: 'Xfort Itsname',
                    location: 'Jl. Sukabirus No. 26',
                    schedule: 'Senin - Sabtu',
                    price: 'Rp 400.000 - 900.000',
                    rating: 4.5,
                    imagePath: 'assets/image/Login.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseItem({
    required String title,
    required String location,
    required String schedule,
    required String price,
    required double rating,
    required String imagePath,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(location),
                  Text(schedule),
                  Text(price),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(rating.toString()),
                    ],
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
