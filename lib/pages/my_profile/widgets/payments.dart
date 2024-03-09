import 'package:flutter/material.dart';
import 'package:food_app/pages/my_profile/widgets/card_tile.dart';
import 'package:food_app/widgets/add_button.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  String selectedPayment = '';

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
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
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
            CardTile(
              img: 'assets/images/google.png',
              type: 'Google Pay',
              isSelected: selectedPayment == 'Google Pay',
              onTap: () {
                setState(() {
                  selectedPayment =
                      selectedPayment == 'Google Pay' ? '' : 'Google Pay';
                });
              },
            ),
            CardTile(
              img: 'assets/images/mc.png',
              type: 'Cartao de crédito ',
              isSelected: selectedPayment == 'Cartao de crédito',
              onTap: () {
                setState(() {
                  selectedPayment = selectedPayment == 'Cartao de crédito'
                      ? ''
                      : 'Cartao de crédito';
                });
              },
            ),
            CardTile(
              img: 'assets/images/apple.png',
              type: 'Apple Pay',
              isSelected: selectedPayment == 'Apple Pay',
              onTap: () {
                setState(() {
                  selectedPayment =
                      selectedPayment == 'Apple Pay' ? '' : 'Apple Pay';
                });
              },
            ),
            CardTile(
              img: 'assets/images/samsung.png',
              type: 'Samsung Pay',
              isSelected: selectedPayment == 'Samsung Pay',
              onTap: () {
                setState(() {
                  selectedPayment =
                      selectedPayment == 'Samsung Pay' ? '' : 'Samsung Pay';
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {
            // TODO: Criar logica apra add novo cartao
          },
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
