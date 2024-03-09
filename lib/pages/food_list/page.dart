import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app/model/food_model.dart';
import 'package:food_app/pages/food_details/page.dart';
import 'package:food_app/pages/food_list/widgets/filter.dart';
import 'package:food_app/pages/food_list/widgets/food_card.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  List<FoodModel> foods = [
    FoodModel(
      name: "Carne ao Molho",
      description: "Cupim ao molho madeira",
      cal: "165",
      price: "39,00",
      image: "assets/images/carne_molho.png",
    ),
    FoodModel(
      name: "Salada Mista",
      description: "Arroz, Milho e muito mais",
      cal: "75",
      price: "50,00",
      image: "assets/images/mix_salada.png",
    ),
    FoodModel(
      name: "Comidaa Japonesa",
      description: "Barca com 60 itens",
      cal: "185",
      price: "140.00",
      image: "assets/images/barca.png",
    ),
    FoodModel(
      name: "Salado+Frutos do Mar",
      description: "Camarao + Saladas",
      cal: "135",
      price: "160.00",
      image: "assets/images/mar_salada.png",
    ),
    FoodModel(
      name: "HOT ROLL",
      description: "30 unidades de hot roll Salmao",
      cal: "135",
      price: "80.00",
      image: "assets/images/hot_roll.png",
    ),
    FoodModel(
      name: "Super Salada",
      description: "Alta Variedade de Salada",
      cal: "135",
      price: "160.00",
      image: "assets/images/hiper_salada.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Comida FIT",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Filter(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: [
                    const Center(
                      child: Text(
                        "Mais de 5 Resultados",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    for (var i = 0; i < foods.length; i++)
                      InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodDetailPage(
                                          foodData: foods[i],
                                        )),
                              ),
                          child: FoodCard(foodData: foods[i]))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
