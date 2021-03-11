import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/details/components/item_image.dart';
import 'package:food_delivery/screens/details/components/order_button.dart';
import 'package:food_delivery/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/pavbhaji.jpeg",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "RamuKaka kitchen"),
          TitlePriceRating(
            name: "Pav Bhaji",
            numOfReviews: 69,
            rating: 4,
            price: 100,
            onRatingChanged: (value) {},
          ),
          Text(
            "Pav bhaji has many variations in ingredients and garnishes, but is essentially a spiced mixture of mashed vegetables in a thick gravy, usually cooked on a flat griddle (tava) and served hot with a soft white bread roll. Variations on pav bhaji include: Cheese pav bhaji, with cheese on top of the bhaji.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
