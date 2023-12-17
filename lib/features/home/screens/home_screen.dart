import 'package:flutter/material.dart';
import 'package:montechnicien/constants/color.dart';
import 'package:montechnicien/constants/padding.dart';
import 'package:montechnicien/features/auth/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
// Formulaire de reche
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String? dropdownValue;
    bool isHover = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        scrolledUnderElevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
          child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Positioned.fill(
              child: Container(
            color: textFieldBackground.withOpacity(0.2),
          )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: size.height * .13,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(appPadding),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: miniSpacer,
                      ),

                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Plateforme numérique de suivi géolocalisé",
                            style: TextStyle(
                                fontSize: 30,
                                color: primary,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "des techniciens au Cameroun",
                            style: TextStyle(
                                fontSize: 30,
                                color: primary,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: spacer,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: spacer,
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: textGrey.withOpacity(0.2)),
                                child: const Text("Formulaire de recherche"),
                              ),
                            ],
                          ),
                          Container(
                            width: size.width * .8,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 250,
                                      // decoration: BoxDecoration(
                                      //     // border: Border.all(color: textGrey),
                                      //     borderRadius: BorderRadius.all(
                                      //         Radius.circular(10))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DropdownButtonFormField<String>(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          elevation: 0,
                                          hint: const Text('Région'),
                                          value: dropdownValue,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          items: <String>[
                                            'Admaoua',
                                            'Centre',
                                            'Est',
                                            'Extrême-Nord'
                                                'Littoral'
                                                'Nord',
                                            'Nord-Ouest',
                                            'Ouest',
                                            'Sud',
                                            'Sud-Ouest',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180,
                                      // decoration: BoxDecoration(
                                      //     // border: Border.all(color: textGrey),
                                      //     borderRadius: BorderRadius.all(
                                      //         Radius.circular(10))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DropdownButtonFormField<String>(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          elevation: 0,
                                          hint: const Text('Département'),
                                          value: dropdownValue,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          items: <String>[
                                            'Apple',
                                            'Mango',
                                            'Banana',
                                            'Peach'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180,
                                      // decoration: BoxDecoration(
                                      //     // border: Border.all(color: textGrey),
                                      //     borderRadius: BorderRadius.all(
                                      //         Radius.circular(10))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DropdownButtonFormField<String>(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          elevation: 0,
                                          hint: const Text('Commune'),
                                          value: dropdownValue,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          items: <String>[
                                            'Apple',
                                            'Mango',
                                            'Banana',
                                            'Peach'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180,
                                      // decoration: BoxDecoration(
                                      //     // border: Border.all(color: textGrey),
                                      //     borderRadius: BorderRadius.all(
                                      //         Radius.circular(10))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DropdownButtonFormField<String>(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          elevation: 0,
                                          hint: const Text('Quartier/Ville'),
                                          value: dropdownValue,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          items: <String>[
                                            'Apple',
                                            'Mango',
                                            'Banana',
                                            'Peach'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        decoration: const BoxDecoration(
                                            color: secondary,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: const Center(
                                            child: Icon(
                                          Icons.search,
                                          color: textWhite,
                                        ))),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                      // if (isBookLoaded) ...[
                      //   // Caches
                      //   groupedBooksBox.isNotEmpty
                      //       ? ListView.builder(
                      //           shrinkWrap: true,
                      //           physics: const NeverScrollableScrollPhysics(),
                      //           itemCount: groupedBooksBox.length,
                      //           itemBuilder: (context, i) {
                      //             String categoryName =
                      //                 groupedBooksBox.keys.toList()[i];
                      //             List<Book> categoryBooks =
                      //                 groupedBooksBox[categoryName]!;
                      //             return Column(
                      //               mainAxisAlignment: MainAxisAlignment.start,
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               children: [
                      //                 CustomSemiboldTitle(
                      //                   title: categoryName.toUpperCase(),
                      //                   color: themeProvider
                      //                       ? textWhite
                      //                       : textBlack,
                      //                 ),
                      //                 const SizedBox(
                      //                   height: miniSpacer,
                      //                 ),
                      //                 CustomCarouselBook(
                      //                   books: categoryBooks,
                      //                 ),
                      //                 const SizedBox(
                      //                   height: smallSpacer,
                      //                 ),
                      //               ],
                      //             );
                      //           })
                      //       // No connection with a refresh option
                      //       : NoConnectionScreen(
                      //           onSuccess: () {
                      //             getAllBooks();
                      //           },
                      //         )
                      // ] else ...[
                      //   FutureBuilder(
                      //       future: books,
                      //       builder:
                      //           (context, AsyncSnapshot<List<Book>> snapshot) {
                      //         // if(snapshot.connectionState ==
                      //         //     ConnectionState.none){
                      //         //       return
                      //         //     }
                      //         if (snapshot.connectionState ==
                      //             ConnectionState.done) {
                      //           // Trier les livres par catégorie
                      //           Map<String, List<Book>> groupedBooks =
                      //               groupBooksByCategory(snapshot.data!);

                      //           //

                      //           return groupedBooks.isNotEmpty
                      //               ? ListView.builder(
                      //                   shrinkWrap: true,
                      //                   physics:
                      //                       const NeverScrollableScrollPhysics(),
                      //                   itemCount: groupedBooks.length,
                      //                   itemBuilder: (context, i) {
                      //                     String categoryName =
                      //                         groupedBooks.keys.toList()[i];
                      //                     List<Book> categoryBooks =
                      //                         groupedBooks[categoryName]!;
                      //                     return Column(
                      //                       mainAxisAlignment:
                      //                           MainAxisAlignment.start,
                      //                       crossAxisAlignment:
                      //                           CrossAxisAlignment.start,
                      //                       children: [
                      //                         CustomSemiboldTitle(
                      //                           title:
                      //                               categoryName.toUpperCase(),
                      //                           color: themeProvider
                      //                               ? textWhite
                      //                               : textBlack,
                      //                         ),
                      //                         const SizedBox(
                      //                           height: miniSpacer,
                      //                         ),
                      //                         CustomCarouselBook(
                      //                           books: categoryBooks,
                      //                         ),
                      //                         const SizedBox(
                      //                           height: smallSpacer,
                      //                         ),
                      //                       ],
                      //                     );
                      //                   })
                      //               // No connection with a refresh option
                      //               : NoConnectionScreen(
                      //                   onSuccess: () {
                      //                     getAllBooks();
                      //                   },
                      //                 );
                      //         } else {
                      //           return ListView.builder(
                      //               shrinkWrap: true,
                      //               physics:
                      //                   const NeverScrollableScrollPhysics(),
                      //               itemCount: 4,
                      //               itemBuilder: (context, i) {
                      //                 return CustomCarouselBookLoading();
                      //               });
                      //         }
                      //       }),
                      // ]
                    ]),
              ),
            ),
          ),

          // TOP
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: size.height * .10,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          const BoxShadow(
                              color: textGrey,
                              blurRadius: 0.9,
                              spreadRadius: 0.9)
                        ],
                        border: Border(
                            bottom: BorderSide(
                          color: textGrey.withOpacity(0.3),
                        )),
                        color: background,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(miniSpacer),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text("MON TECHNICIEN"),
                              SizedBox(
                                width: smallSpacer,
                              ),
                              Text(
                                "Accueil",
                                style: TextStyle(fontSize: 16, color: textGrey),
                              ),
                              SizedBox(
                                width: smallSpacer,
                              ),
                              Text(
                                "A propos",
                                style: TextStyle(fontSize: 18, color: textGrey),
                              ),
                              SizedBox(
                                width: smallSpacer,
                              ),
                              Text(
                                "Actualité",
                                style: TextStyle(fontSize: 16, color: textGrey),
                              ),
                              SizedBox(
                                width: smallSpacer,
                              ),
                              Text(
                                "Tarifs",
                                style: TextStyle(fontSize: 16, color: textGrey),
                              ),
                              SizedBox(
                                width: smallSpacer,
                              ),
                              Text(
                                "Contacts",
                                style: TextStyle(fontSize: 16, color: textGrey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          opaque: false,
                                          pageBuilder: (context, animation, _) {
                                            return LoginScreen();
                                          }));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: const BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Connexion",
                                        style: TextStyle(color: textWhite),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.lock,
                                        color: textWhite,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: miniSpacer,
                              ),
                              Container(
                                height: 15,
                                width: 1,
                                color: textGrey,
                              ),
                              const SizedBox(
                                width: miniSpacer,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: const BoxDecoration(
                                    color: secondary,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Inscription",
                                      style: TextStyle(color: textWhite),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.person_add_alt,
                                      color: textWhite,
                                      size: 15,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
          // const BottomBar(
          //   codeScreen: 2,
          // ),

          // if (connectivityProvider.connectionStatus ==
          //     ConnectivityResult.none) ...[const NoConnectionBar()]
        ],
      )),
    );
  }
}
