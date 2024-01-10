import 'package:flutter/material.dart';
import 'package:traveladic_app/models/trips_model.dart';
import 'package:traveladic_app/screens/individual_trip.dart';
import 'package:traveladic_app/styles/app_styles.dart';

import '../services/trips_service.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<Trips>> trips = TripsService().fetchData();

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
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(children: [
          /* FloatingActionButton(
              onPressed: () async {
                List<Trips> trips = await TripsService().fetchData();
                for (var trip in trips) {
                  debugPrint('Viatge: ${trip.viatge}');
                }            },
            child: const Icon(Icons.refresh),
          ), */
          Title(
            color: AppStyles.principal,
            child: const Text('Viatges', style: TextStyle(fontSize: 24),),
          ),
          const SizedBox(
            height: 10,
          ),
          FutureBuilder(
              future: trips,
              builder: (context, snapshot){
                if(snapshot.hasData) {
                   var trips = snapshot.data!;
                  // return Expanded(
                  //   child: ListView.builder(
                  //       itemCount: trips.length,
                  //       itemBuilder: (context, index) {
                  //         var trip = trips[index];
                  //           return InkWell(
                  //             onTap: (){
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(builder: (context) => IndividualTrip(trips: trip,))
                  //               );
                  //             },
                  //             child: Card(
                  //               shape: RoundedRectangleBorder(
                  //                 side: const BorderSide(color: AppStyles.principal),
                  //                 borderRadius: BorderRadius.circular(15),
                  //               ),
                  //               child: Padding(
                  //                 padding: const EdgeInsets.all(10),
                  //                 child: Row(
                  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                   children: [
                  //                     Column(
                  //                       crossAxisAlignment: CrossAxisAlignment.start,
                  //                       children: [
                  //                         Text(
                  //                           trip.viatge,
                  //                           style: const TextStyle(fontSize: 20),
                  //                         ),
                  //                         Text(trip.dates),
                  //                       ],
                  //                     ),
                  //                     const SizedBox(
                  //                       width: 20,
                  //                     ),
                  //                     InkWell(
                  //                       onTap: (){
                  //                         // codi per favorite
                  //                       },
                  //                       child: const Icon(
                  //                         Icons.favorite_border_outlined,
                  //                         color: AppStyles.principal,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //
                  //
                  //               ),
                  //             ),
                  //           );
                  //         }
                  //       ),
                  // );
                  return Expanded(
                    child: ListView(
                      children: [
                        for(var trip in trips)
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => IndividualTrip(trips: trip,))
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: AppStyles.principal),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          trip.viatge,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        Text(trip.dates),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        // codi per favorite

                                      },
                                      child: const Icon(
                                        Icons.favorite_border_outlined,
                                        color: AppStyles.principal,
                                      ),
                                    ),
                                  ],
                                ),


                              ),
                            ),
                          )
                      ],
                    ),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text('Error')
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },)
          /* Card(
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
                              'Fèroe',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('01/08/24 - 08/08/24')
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
      */
        ]),
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
