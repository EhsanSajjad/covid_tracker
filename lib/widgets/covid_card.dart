
import 'package:flutter/material.dart';

class CovidCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Image.asset(
          'pictures/covid1.jpg',         
                 
        ),
        decoration: BoxDecoration(          
          color: Colors.black87,
          borderRadius: BorderRadius.circular(10)
        ),
        height: 420,
        // child: Center(child: Text('Latest News', style: TextStyle(
        //   color: Theme.of(context).primaryColor,
        //   fontWeight: FontWeight.bold,
        //   fontSize: 30
        // ),)),
        // child: Image.asset(

        //   'pictures/covid1.jpg', 
        //   width: 100, 
        //   height: 400,
        
          

        // ),
      ),
    );
  }
}
