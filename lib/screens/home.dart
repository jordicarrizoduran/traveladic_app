import 'package:flutter/material.dart';
import 'package:traveladic_app/styles/app_styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Column(),
            Column(children: [
              Text('Travelàdic'),
            ]),
            Column(children: [
              Hero(
                tag: 'avatarTag',
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://traveladic.com/wp-content/uploads/2022/06/cropped-LogoEarth-Big.png'),
                  radius: 20,
                ),
              )
            ]),
          ])),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(children: [
            Title(
              color: AppStyles.principal,
              child: const Text('El teu viatge', style: TextStyle(fontSize: 24),),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
                shape: (RoundedRectangleBorder(
                  side: const BorderSide(color: AppStyles.principal),
                  borderRadius: BorderRadius.circular(15),
                )),
                child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nit Eterna 1 (Noruega)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('14/01/24 - 20/01/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 40,
            ),
            Title(
              color: AppStyles.principal,
              child: const Text('Altres viatges', style: TextStyle(fontSize: 24),),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nit Eterna 2 (Noruega)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('21/01/24 - 27/01/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Volcans i Aurores (Islàndia)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('26/03/24 - 01/04/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Verd etern (Açores)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('27/01/24 - 31/07/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nit Eterna 2 (Noruega)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('21/01/24 - 27/01/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Volcans i Aurores (Islàndia)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('26/03/24 - 01/04/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Verd etern (Açores)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('27/01/24 - 31/07/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Verd etern (Açores)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('27/01/24 - 31/07/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nit Eterna 2 (Noruega)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('21/01/24 - 27/01/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Volcans i Aurores (Islàndia)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('26/03/24 - 01/04/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 10,
            ),
            const Card(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Verd etern (Açores)',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('27/01/24 - 31/07/24')
                            ]),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppStyles.principal,
                        ),
                      ],
                    ))),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Pàgina principal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_on), label: 'El teu viatge'),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), label: "Contacta'ns"),
        ],
      ),
    );
  }
}
