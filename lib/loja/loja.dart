import 'package:delivery/item/main.dart';
import 'package:delivery/loja/Categorias.dart';
import 'package:flutter/material.dart';

class Loja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            hintText: "Search Here", border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 23,
            child: Categorias(),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.4,
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        Container(
                          height: 300,
                          width: 180,
                          child: Item(),
                        ),
                        Container(
                          height: 300,
                          width: 180,
                          child: Item(),
                        ),
                        Container(
                          height: 300,
                          width: 180,
                          child: Item(),
                        ),
                        Container(
                          height: 300,
                          width: 180,
                          child: Item(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
