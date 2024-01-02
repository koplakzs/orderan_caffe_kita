import 'package:caffe_kita/pages/caffe.dart';
import 'package:caffe_kita/utils/fonts.dart';
import 'package:caffe_kita/utils/style.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
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
                    "CAFFE KITA",
                    style: TextStyling.base(fontSize: 40, shadow: true),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        "EASY",
                        style: TextStyling.base(
                            fontFamily: Fonts.kalamRegular,
                            fontSize: 24,
                            color: const Color(0xff5B5353)),
                      ),
                      Text(
                        "TO FIND",
                        style: TextStyling.base(
                            fontFamily: Fonts.kalamRegular,
                            fontSize: 24,
                            color: const Color(0xff5B5353)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Image(
                          image: AssetImage("assets/images/lokasi.png")),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "CAFES",
                        style: TextStyling.base(
                            fontFamily: Fonts.kalamRegular,
                            fontSize: 24,
                            color: const Color(0xff5B5353)),
                      ),
                      Text(
                        "ARROUND YOU",
                        style: TextStyling.base(
                            fontFamily: Fonts.kalamRegular,
                            fontSize: 24,
                            color: const Color(0xff5B5353)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Caffe()))
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: const Color.fromARGB(255, 124, 124, 124),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  child: Text(
                    "LETS START",
                    style: TextStyling.base(fontSize: 16),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
