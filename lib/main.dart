import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(SalonApp());
}

class SalonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  final String salonName = ' Indian Salon';
  final String salonDescription =' Welcome to the great indian salon experience luxury services with our professional team!';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salon App'),
      ),
      body:SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://images.unsplash.com/photo-1600948836101-f9ffda59d250?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2Fsb258ZW58MHx8MHx8fDA%3D', // Replace with actual image URL
              fit: BoxFit.cover,
              width: 600,
              height: 250,
            ),
            const SizedBox(height: 10),
            Text(
              salonName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              salonDescription,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildServiceCategory('Hair'),
                _buildServiceCategory('Nails'),
                _buildServiceCategory('Massage'),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Rating:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 40,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {

                print(rating);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('Book an Appointment'),
            ),


          ],
        ),
      ),
    );
  }

  Widget _buildServiceCategory(String categoryName) {
    return GestureDetector(
      onTap: () {

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