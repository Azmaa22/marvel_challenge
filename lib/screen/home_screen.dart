import 'package:flutter/material.dart';
import 'package:marvel_app/constants/color_manager.dart';
import 'package:marvel_app/constants/style_manager.dart';
import 'package:marvel_app/model/actor_model.dart';
import 'package:marvel_app/screen/widgets/continue_btn.dart';
import 'package:marvel_app/screen/widgets/discription_card.dart';
import 'package:marvel_app/screen/widgets/image_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        Container(
          width: size.width,
          height: size.height * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/moon_knight_poster.webp'),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: size.height * 0.1,
                left: size.width * 0.8,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/share.png',
                      width: 50.0,
                      height: 50.0,
                      color: ColorManager.primary,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Image.asset(
                      'assets/icons/favorite.png',
                      width: 50.0,
                      height: 50.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.height * 0.3,
                left: size.width * 0.15,
                child: Row(
                  children: const [
                    Text(
                      'New | ',
                      style: StyleManager.subHeader,
                    ),
                    Text(
                      'Sessaon | ',
                      style: StyleManager.subHeader,
                    ),
                    Text(
                      '2022 | ',
                      style: StyleManager.subHeader,
                    ),
                    Text(
                      'Diseny  ',
                      style: StyleManager.subHeader,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.height * 0.34,
                left: size.width * 0.25,
                child: const Text(
                  'Moon Knight',
                  style: StyleManager.mainHeader,
                ),
              ),
              Positioned(
                top: size.height * 0.35,
                child: SizedBox(
                  width: size.width,
                  height: size.height * 0.2,
                  child: Row(
                    children: const [
                      Expanded(
                        child: DescriptionCard(
                          title: 'Fantasy',
                        ),
                      ),
                      Expanded(
                        child: DescriptionCard(
                          title: 'Super Hero',
                        ),
                      ),
                      Expanded(
                        child: DescriptionCard(
                          title: 'Action',
                        ),
                      ),
                      Expanded(
                        child: DescriptionCard(
                          title: 'Adventure',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.5,
                left: size.width * 0.04,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'S1:E3 The Frindly Type',
                      style: StyleManager.titleBtn,
                    ),
                    Container(
                      width: size.width * 0.9,
                      height: 10.0,
                      margin: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            ColorManager.secondary,
                            ColorManager.primary,
                          ],
                        ),
                      ),
                    ),
                    const ContinueBtn(
                      title: 'Continue Watching',
                    ),
                    SizedBox(
                      width: size.width,
                      //height: size.height * 0.1,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/amdb_logo.jpeg',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      '7.7/10',
                                      style: StyleManager.rating,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          color: Colors.yellow[600],
                                        ),
                                        const Text(
                                          '57K',
                                          style: StyleManager.rating,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/china_logo.jpeg',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'Watch Now',
                                      style: StyleManager.rating,
                                    ),
                                    Text(
                                      'Subscription',
                                      style: StyleManager.rating,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: StyleManager.paragraph,
          ),
        ),
        Row(
          children: [
            const Text(
              'Cast',
              style: StyleManager.subHeader,
            ),
            const Spacer(),
            Row(
              children: const [
                Text(
                  'See All',
                  style: StyleManager.subHeader,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var actor in ActorModel.actors)
                  ImageContainer(
                    image: actor.image,
                  ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
