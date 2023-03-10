import 'package:flutter/material.dart';
import 'package:mastering_the_flutter/constants/colors.dart';
import 'package:mastering_the_flutter/widgets/app_text.dart';
import 'package:mastering_the_flutter/widgets/buttons.dart';

class CarauselPages extends StatefulWidget {
  const CarauselPages({super.key});

  @override
  State<CarauselPages> createState() => _CarauselPagesState();
}

class _CarauselPagesState extends State<CarauselPages> {
  ///List untuk menyimpan asset gambar kita yang akan digunakan pada carausel
  List images = [
    "images/welcome-one.png",
    "images/welcome-two.png",
    "images/welcome-three.png",
  ];

  List tittleText = [
    "Trips",
    "Treps",
    "Trops",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(

          /// The Default is Axis.horizontal (left and right)
          scrollDirection: Axis.vertical,

          /// Sesuai dengan berapa jumlah gambar / assets yang akan digunakan pada carausel ("According to the number of images/assets to be used on the carousel")
          itemCount: images.length,

          /// itemBuilder have 2 parameter (context , index)
          itemBuilder: (_, index) {
            ///itemBuilder akan me-return sebuah widget
            ///Container() ini akan jadi tempat bagi gambar text dan indicator carauselnya
            ///jadi Container() ini harus memiliki lebar dan panjang dari keseluruhan layar
            return Container(
              // ini untuk membuat lebar Container() full selayar
              width: double.maxFinite,
              height: double.maxFinite,
              // ini untuk memperlihatkan gambar/images yang akan gunakan
              decoration: BoxDecoration(
                image: DecorationImage(
                  // ignore: prefer_interpolation_to_compose_strings
                  image: AssetImage("assets/" + images[index]),
                  // Untuk membuat image mengambil semua ruang dilayar
                  fit: BoxFit.cover,
                ),
              ),
              // Untuk Menyimpan Text dan indikator
              child: Container(
                margin: const EdgeInsets.only(
                  top: 90,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: tittleText[index],
                          isBold: true,
                        ),
                        AppLargeText(
                          text: "Mountains",
                          isBold: false,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 250,
                          child: AppSmallText(
                            text:
                                "Mountain hikes give you an incredible sense of freedom along with endurance tests",
                            isBold: false,
                            size: 14,
                            color: AppColors.textColor2,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ResponsiveButton(
                          width: 120,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(
                        3,
                        (indexDots) => Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          width: 8,
                          height: (index == indexDots) ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: (index == indexDots)
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
