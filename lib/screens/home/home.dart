import 'package:avaliacao_n1/style.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_n1/models/product.dart';
import 'package:avaliacao_n1/provider/products.dart';

class Home extends StatefulWidget{

  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ofertas do dia",
        ),
        leading: Image.asset("assets/logo.jpg"),
        bottom: PreferredSize(child: Image.asset("assets/linha.jpg"), preferredSize: Size(0, 0))
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context,
        int index) {
          Product product = products.elementAt(index);

          return ListTile(
            trailing: IconButton(
              icon: (product.isFavorite)
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_outline),
              onPressed: (){
              setState(() {
                product.isFavorite = ! product.isFavorite;
              });
              },
              color: pinkTheme,
            ),
            title: Row(
              children: [
                Image.asset(
                  product.photo,
                  height: 49.8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.6,
                    ),
                    Text(
                      product.item,
                      style: TextStyle(
                        fontSize: 14.2
                      ),
                    ),
                    SizedBox(
                      height: 3.6,
                    ),
                    Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 12.2
                      ),
                    ),
                    SizedBox(
                      height: 6.6,
                    ),
                    Text(
                      product.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.2,
                        color: blueTheme2,
                      ),
                    ),
                    SizedBox(
                      height: 3.6,
                    ),
                    Text(
                      product.parcel,
                      style: TextStyle(
                        fontSize: 11.2,
                        color: blueTheme1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context,
        int index) {
          return Divider(color: Colors.transparent);
        },
        itemCount: products.length,
      ),
    );
  }
}