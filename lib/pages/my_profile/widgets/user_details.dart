import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                ),
              ),
              const Text(
                "Meu Perfil",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 90.00,
                  height: 90.00,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/user.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              const SizedBox(
                width: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Yago Maksuell",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "y.maksuell@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                          fontSize: 14),
                    ),
                  ),
                  Text(
                    "User ID: I28A180P",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const TabBar(
            indicatorPadding: EdgeInsets.all(5),
            indicatorColor: Color.fromARGB(255, 0, 89, 255),
            labelColor: Colors.black,
            labelStyle: TextStyle(
                fontFamily: "Averta",
                fontWeight: FontWeight.w600,
                fontSize: 16),
            tabs: [
              Tab(text: "Conta"),
              Tab(text: "Pagamento"),
              Tab(text: "Histórico"),
            ],
            labelPadding: EdgeInsets.symmetric(horizontal: 5),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
