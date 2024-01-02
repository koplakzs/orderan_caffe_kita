import 'package:caffe_kita/data/caffe.dart';
import 'package:caffe_kita/pages/location.dart';
import 'package:caffe_kita/pages/menu.dart';
import 'package:caffe_kita/pages/statistik.dart';
import 'package:caffe_kita/utils/fonts.dart';
import 'package:caffe_kita/utils/style.dart';
import 'package:flutter/material.dart';

class ListCaffe extends StatelessWidget {
  const ListCaffe({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredCaffe =
        caffe.where((item) => item["type"].contains(type)).toList();

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Center(
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
                    "KAFE ${type == "terdekat" ? "TERDEKAT" : "TERNYAMAN"}",
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
                    child: ListView.separated(
                      padding: const EdgeInsets.all(0),
                      itemCount: filteredCaffe.length,
                      itemBuilder: (context, index) {
                        var caffeIndex = filteredCaffe[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${caffeIndex['name']}",
                                    style: TextStyling.base(
                                      fontFamily: Fonts.irishGroverRegular,
                                    ),
                                  ),
                                  Text(
                                    "${type == "terdekat" ? caffeIndex['distance'] : caffeIndex['facility']}",
                                    style: TextStyling.base(
                                      fontFamily: Fonts.irishGroverRegular,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                      onTap: () => {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                                    builder: (context) => Menu(
                                                          caffeName: caffeIndex[
                                                              'name'],
                                                          menu: caffeIndex[
                                                              'menu'],
                                                        )))
                                          },
                                      child: Text(
                                        "MENU & HARGA",
                                        style: TextStyling.base(
                                            fontSize: 9, underline: true),
                                      )),
                                  GestureDetector(
                                      onTap: () => {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Location(
                                                          caffeName: caffeIndex[
                                                              'name'],
                                                        )))
                                          },
                                      child: Text(
                                        "DENAH LOKASI",
                                        style: TextStyling.base(
                                            fontSize: 9, underline: true),
                                      )),
                                  GestureDetector(
                                      onTap: () => {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Statistik()))
                                          },
                                      child: Text(
                                        "STATISTIK",
                                        style: TextStyling.base(
                                            fontSize: 9, underline: true),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
