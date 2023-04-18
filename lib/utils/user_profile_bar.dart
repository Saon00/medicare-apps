import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfilebar extends StatelessWidget {
  final VoidCallback? ontap;
  const UserProfilebar({
    Key? key,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      tileColor: Colors.green.shade100,
      title: Text(
        'Hello',
        style: GoogleFonts.comfortaa(fontSize: 15),
      ),
      subtitle: Text("Nick Jonas, 23",
          style:
              GoogleFonts.comfortaa(fontSize: 20, fontWeight: FontWeight.bold)),
      leading: CircleAvatar(
        maxRadius: 20,
        child: Image.asset('assets/man.png'),
      ),
    );
  }
}
