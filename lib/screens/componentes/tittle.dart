// Suggested code may be subject to a license. Learn more: ~LicenseLog:2903988206.
import 'package:flutter/material.dart';

class TittleAndrea extends StatelessWidget {
  const TittleAndrea({super.key});

   @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'To do List',
           style: TextStyle(color: Colors.black,
           fontSize: 20,
           fontWeight: FontWeight.bold),
        ),
        
    );
  }

}
