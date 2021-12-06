import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoot_it/files/pages/view_screen.dart';
import 'package:shoot_it/files/pages/first_screen.dart';


class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 20, right: 20),
            color: const Color(0xff1d4663),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(3),
                        width: 220,
                        height: 220,
                        child: TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                            child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                    fit: BoxFit.cover,
                                    alignment: FractionalOffset.topCenter,
                                    image: AssetImage("assets/images/1.jpg")
                                    )
                                  )
                                )
                            )
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(3),
                        width: 220,
                        height: 220,
                        child: TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                            child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            alignment: FractionalOffset.topCenter,
                                            image: AssetImage("assets/images/2.jpg")
                                        )
                                    )
                                )
                            )
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(3),
                        width: 220,
                        height: 220,
                        child: TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                            child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            alignment: FractionalOffset.topCenter,
                                            image: AssetImage("assets/images/3.jpg")
                                        )
                                    )
                                )
                            )
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(3),
                        width: 220,
                        height: 220,
                        child: TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                            child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            alignment: FractionalOffset.topCenter,
                                            image: AssetImage("assets/images/4.jpg")
                                        )
                                    )
                                )
                            )
                        )
                    ),
                ]),
                //const Spacer(),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(3),
                          width: 220,
                          height: 220,
                          child: TextButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                              child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              alignment: FractionalOffset.topCenter,
                                              image: AssetImage("assets/images/5.jpg")
                                          )
                                      )
                                  )
                              )
                          )
                      ),
                      Container(
                          padding: const EdgeInsets.all(3),
                          width: 220,
                          height: 220,
                          child: TextButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                              child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              alignment: FractionalOffset.topCenter,
                                              image: AssetImage("assets/images/6.jpg")
                                          )
                                      )
                                  )
                              )
                          )
                      ),
                      Container(
                          padding: const EdgeInsets.all(3),
                          width: 220,
                          height: 220,
                          child: TextButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                              child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              alignment: FractionalOffset.topCenter,
                                              image: AssetImage("assets/images/7.jpg")
                                          )
                                      )
                                  )
                              )
                          )
                      ),
                      Container(
                          padding: const EdgeInsets.all(3),
                          width: 220,
                          height: 220,
                          child: TextButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewScreen()));},
                              child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              alignment: FractionalOffset.topCenter,
                                              image: AssetImage("assets/images/8.jpg")
                                          )
                                      )
                                  )
                              )
                          )
                      ),
                    ])
            ])
        )
    );
  }
}