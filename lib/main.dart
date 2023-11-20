import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(SalonApp());
}

class SalonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOME PAGE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String salonName = 'Indian Salon';
  final String salonDescription =
      'Experience luxury services with our professional team!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salon App'),
      ),
      body:SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(
              'https://images.unsplash.com/photo-1600948836101-f9ffda59d250?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2Fsb258ZW58MHx8MHx8fDA%3D', // Replace with actual image URL
              fit: BoxFit.cover,
              width: 600,
              height: 250,
            ),
            SizedBox(height: 10),
            Text(
              salonName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              salonDescription,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildServiceCategory('Hair'),
                _buildServiceCategory('Nails'),
                _buildServiceCategory('Massage'),
              ],
            ),
            Text(
              'Rating:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 40,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {

                print(rating);
              },
            ),
            SizedBox(height: 16),



            ElevatedButton(
              onPressed: () {

              },
              child: Text('Book an Appointment'),
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }

  Widget _buildServiceCategory(String categoryName) {
    return GestureDetector(
      onTap: () {
        // Implement navigation to category-specific screen or services
      },
      child: Card(
        elevation: 3,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blueAccent,
          alignment: Alignment.center,
          child: Text(categoryName),
        ),
      ),
    );
  }
}