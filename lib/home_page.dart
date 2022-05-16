import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  'Grocery Details',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.favorite),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 500,
            width: 400,
            child: Stack(alignment: Alignment.center, children: <Widget>[
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0.0, 5.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Text(
                      'Carrots',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
                    ),
                    Text(
                      'Rs. 500',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 17),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Buy Now'))
                  ],
                ),
              ),
              Positioned(
                top: 30,
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 180,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0.0, 5.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://media.istockphoto.com/photos/fresh-carrots-isolated-on-white-background-picture-id545454816?k=20&m=545454816&s=612x612&w=0&h=zTbL2GTPiWKU7kNyC1mqsQfbBvQIQNKtRgm_uLzUKkk='),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
