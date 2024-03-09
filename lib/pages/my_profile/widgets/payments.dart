import 'package:flutter/material.dart';
import 'package:food_app/pages/my_profile/widgets/card_tile.dart';
import 'package:food_app/widgets/add_button.dart';

class Payments extends StatelessWidget {
  const Payments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Meus cartões ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 180.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/debit_card.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                // const AddButton()
              ],
            ),
            const Text(
              "Add novos cartões",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const CardTile(
              img: 'assets/images/google.png',
              type: 'Google Pay',
              icon: Icon(Icons.radio_button_checked,
                  color: Color.fromARGB(255, 27, 223, 1)),
            ),
            const CardTile(
              img: 'assets/images/mc.png',
              type: 'Cartao de crédito ',
              icon: Icon(Icons.radio_button_unchecked, color: Colors.grey),
            ),
            const CardTile(
              img: 'assets/images/apple.png',
              type: 'Apple Pay',
              icon: Icon(Icons.radio_button_unchecked, color: Colors.grey),
            ),
            const CardTile(
              img: 'assets/images/samsung.png',
              type: 'Samsung Pay',
              icon: Icon(Icons.radio_button_unchecked, color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 50),
            backgroundColor: const Color.fromARGB(255, 33, 190, 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Text(
            "Add Novo",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
