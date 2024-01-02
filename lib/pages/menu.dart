import 'package:caffe_kita/utils/fonts.dart';
import 'package:caffe_kita/utils/style.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key, required this.caffeName, required this.menu});

  final String caffeName;
  final List menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xffEBD2D2),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: Color.fromARGB(255, 124, 124, 124),
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Text(
              "MENU & HARGA",
              style: TextStyling.base(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xffF8F4F4)),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      caffeName,
                      style: TextStyling.base(
                        fontFamily: Fonts.irishGroverRegular,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.7,
                                crossAxisCount: 3,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20),
                        itemCount: menu.length,
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (context, index) {
                          var menuIndex = menu[index];
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(image: AssetImage(menuIndex['picture'])),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                menuIndex['name'],
                                textAlign: TextAlign.center,
                              ),
                              Text(menuIndex['price']),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    ));
  }
}
