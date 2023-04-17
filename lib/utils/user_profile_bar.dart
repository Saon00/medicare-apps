import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfilebar extends StatelessWidget {
  const UserProfilebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.green.shade100,
      title: Text(
        'Hello',
        style: GoogleFonts.comfortaa(fontSize: 15),
      ),
      subtitle: Text("Name, 23",
          style:
              GoogleFonts.comfortaa(fontSize: 20, fontWeight: FontWeight.bold)),
      leading: CircleAvatar(
        maxRadius: 20,
        child: Image.asset('assets/man.png'),
      ),
    );
  }
}
