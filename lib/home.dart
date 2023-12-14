import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Iphone13146(),
        ]),
      ),
    );
  }
}

class Iphone13146 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Positioned(
                left: 63,
                top: 251,
                child: Container(
                  width: 309,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 273.71,
                        height: 465.30,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 273.71,
                                height: 465.30,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://s3-alpha-sig.figma.com/img/04b7/8ccd/73558281cc08c4dcff8d70bbab88c761?Expires=1703462400&Signature=BLMElL01X4hW0r9o1wegOFHOnEnPr5WswW0ipaMaGhvJC4ty39icnLyLh6R6axNSRXoWifa9nkjnp5gvXCUZkNLh9l3TNTKLSX6nvV9yvSlc-1nyybtsG7irLHGgf5K-99LwK4IedRhzcDU4GTTo9XyJ4JaLwCVbTOhCC~J6-r63FGSOUxxen08Ip2eXo76SrVpP6hk~T5vKju86S8RH2im3eeK~8Di0dBHSBah6LQaWMhi6Uv~hOWODLrXA92uMgn~q9RctX1v0WtYisL35UtVuWUt2k5mxsYKj4JvvRSa28PS1Se~yCL4F7S-Yh4I3IUlgQF~qN4OgbeW~yXmxGA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.79),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 13.69,
                              top: 398.58,
                              child: Text(
                                'The Ruins',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 29.94,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 32,
                child: Container(
                  width: 170,
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://s3-alpha-sig.figma.com/img/b67d/69b9/fd992e59ffdb1913ebd07aa1839dae77?Expires=1703462400&Signature=Bg6dikjave338xtqincRxgyX82hFhQZxNRoW5yhV0paLcBYRkSjvOvzFDaeqzultNaalfgY8DSp6N0KHDfcHvpK0PkRHYJBCHgqNvqqUpdj5ZP6wm5zOYNcGX6st6qsOP317l5nObmPOwVEGCjub27YcfvBO6v1~nR-k32WNdLwhRvdb0KG9Umu4Ta7XuAIzGHcety05AGJiQafbx14bQh8Mo9tBvQPyIaaQrao4rKWIxRdnUBPCzuZw5dezktydeUdUZCwRdreQiz4BxT3K4X01JhEFM9PKyYrAUTAw63f72rkqhCGfj2xq91slSEFgK~PYBjZ8-5sHlnw11Rryvg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}