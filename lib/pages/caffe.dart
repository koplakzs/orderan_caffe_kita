import 'package:caffe_kita/pages/list_caffe.dart';
import 'package:caffe_kita/utils/fonts.dart';
import 'package:caffe_kita/utils/style.dart';
import 'package:flutter/material.dart';

class Caffe extends StatelessWidget {
  const Caffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width,
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
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '"CAFFE KITA MERUPAKAN LAYANAN YANG MEMUDAHKAN DALAM MENCARI REKOMENDASI KAFE DARI YANG TERDEKATMAUPUN TERNYAMAN"',
                  style: TextStyling.base(
                      fontFamily: Fonts.jomolhariRegular, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 12,
                    ),
                    Text(
                      "Lokasi Anda",
                      style: TextStyling.base(fontSize: 12),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xffEBD2D2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Jl. KH Ali Maksum No 153, Sewon, Bantul, Yogyakarta",
                    style: TextStyling.base(
                      color: const Color(0xff265C98),
                      underline: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Mulai Cari Kafe",
                  style: TextStyling.base(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ListCaffe(
                              type: "terdekat",
                            )))
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEBD2D2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: const Color(0xff000000)),
                  child: Text(
                    "KAFE TERDEKAT",
                    style: TextStyling.base(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    "PILIH KAFE TERDEKAT JIKA INGIN MENCARI REKOMENDASI KAFE TERDEKAT DENGAN LOKASI ANDA",
                    style: TextStyling.base(fontSize: 7),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ListCaffe(
                              type: "ternyaman",
                            )))
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEBD2D2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: const Color(0xff000000)),
                  child: Text(
                    "KAFE TERNYAMAN",
                    style: TextStyling.base(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    "PILIH KAFE TERNYAMAN JIKA INGIN MENCARI KAFE NYAMAN UNTUK MENGERJAKAN TUGAS MAUPUN SEKEDAR UNTUK BERSANTAI",
                    style: TextStyling.base(fontSize: 7),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
