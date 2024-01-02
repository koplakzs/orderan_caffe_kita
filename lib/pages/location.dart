import 'package:caffe_kita/utils/fonts.dart';
import 'package:caffe_kita/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Location extends StatefulWidget {
  const Location({super.key, required this.caffeName});

  final String caffeName;

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late final WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          'https://www.google.com/maps/place/Delevasi+Coffee+-+Yogyakarta/@-7.7303981,110.4068456,17z/data=!3m1!4b1!4m6!3m5!1s0x2e7a5981f81fbf9f:0xb0ef37d2a422971e!8m2!3d-7.7303981!4d110.4068456!16s%2Fg%2F11s_zd91qs?entry=ttu'));

    super.initState();
  }

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
              "DENAH LOKASI",
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
                      widget.caffeName,
                      style: TextStyling.base(
                        fontFamily: Fonts.irishGroverRegular,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "LOKASI",
                        style: TextStyling.base(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Jl. Raya Krapyak, Nglaban, Sinduharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581",
                        style: TextStyling.base(
                          fontSize: 12,
                          color: const Color(0xff265C98),
                          underline: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(child: WebViewWidget(controller: controller)),
                  ],
                )),
          )
        ],
      ),
    ));
  }
}
