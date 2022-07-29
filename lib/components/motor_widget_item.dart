import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grock/grock.dart';
import 'package:motorotam_v2/model/motor_model.dart';
import 'package:motorotam_v2/view/detaySayfa/detay_sayfa.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MotorCardWidget extends StatelessWidget {
  MotorModel model;
   MotorCardWidget({
    Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>  Detay(model: model,)));
      },
      child: SizedBox(
       width: screenWidth,
        child: Card(
          borderOnForeground: true,
        margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color.fromRGBO(29, 31, 32, 1),
              width: 6.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: const Color.fromRGBO(29, 31, 32, 1),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                child: Image.asset(

                    model.resim
                ),
              ),
             // SizedBox(height: 8,),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                minVerticalPadding: 15,
                title: Text(
                  model.model,
                  style: TextStyle(
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 16.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 12.0,
                          ),
                          Condition.largerThan(
                            name: TABLET,
                            value: 20.0,
                          )
                        ],
                      ).value,
                      color: Colors.white),
                ),

                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.yil,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 14.0,
                          valueWhen: const [
                            Condition.smallerThan(
                              name: MOBILE,
                              value: 12.0,
                            ),
                            Condition.largerThan(
                              name: TABLET,
                              value: 18.0,
                            )
                          ],
                        ).value,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: RatingBar.builder(
                            initialRating: model.yildiz,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: ResponsiveValue(
                              context,
                              defaultValue: 14.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: 16.0,
                                ),
                                Condition.largerThan(
                                  name: TABLET,
                                  value: 18.0,
                                )
                              ],
                            ).defaultValue,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              if (kDebugMode) {
                                print(rating);
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(
                            model.fiyat,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: ResponsiveValue(
                                context,
                                defaultValue: 14.0,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: 10.0,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 18.0,
                                  )
                                ],
                              ).value,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
