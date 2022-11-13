import 'package:flutter/material.dart';

import '../constant/constants.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(color: Colors.red),
        child: Stack(children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/product_detail.png',
                width: width,
                fit: BoxFit.cover,
              )),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(children: [
                Icon(Icons.arrow_back, color: ic),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Detail', style: poppins16)),
                const Spacer(),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.heart_broken_sharp,
                            size: 14, color: Colors.red)),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share_outlined, color: ic)),
                ]),
              ]),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: wc,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20))),
              child: Column(children: [
                const SizedBox(height: 9),
                Center(
                  child: Container(
                      color: const Color(0xFFD8D8D8), width: 36, height: 5),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Wooden Coff', style: poppins22),
                          const Spacer(),
                          Text('\$240', style: poppins26w400),
                        ],
                      ),
                      const SizedBox(height: 9),
                      Row(
                        children: [
                          Icon(Icons.star, color: icc, size: 18),
                          const SizedBox(width: 8),
                          Icon(Icons.star, color: icc, size: 18),
                          const SizedBox(width: 8),
                          Icon(Icons.star, color: icc, size: 18),
                          const SizedBox(width: 8),
                          Icon(Icons.star, color: icc, size: 18),
                          const SizedBox(width: 8),
                          const Icon(Icons.star, color: Colors.grey, size: 18),
                        ],
                      ),
                      const SizedBox(height: 21),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Choose a color :', style: poppins12w300),
                          const Spacer(),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: tcp,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 14,
                              child: CircleAvatar(
                                backgroundColor: tcp,
                                radius: 12,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          const CircleAvatar(
                            backgroundColor: Color(0xFFEEA427),
                            radius: 12,
                          ),
                          const SizedBox(width: 12),
                          const CircleAvatar(
                            backgroundColor: Color(0xFFE3E3E3),
                            radius: 12,
                          ),
                          const SizedBox(width: 12),
                          const CircleAvatar(
                            backgroundColor: Color(0xFF80450A),
                            radius: 12,
                          ),
                        ],
                      ),
                      const SizedBox(height: 19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Select Quality :', style: poppins12w300),
                          const Spacer(),
                          Container(
                            width: 102,
                            height: 32,
                            decoration: BoxDecoration(
                              color: wc,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: tcp),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.remove,
                                    color: tcp,
                                  ),
                                  Container(
                                    width: 35,
                                    color: const Color(0xFFD8D8D8),
                                    child: const Center(child: Text('2')),
                                  ),
                                  Icon(Icons.add, color: tcp),
                                ]),
                          ),
                        ],
                      ),
                      Text(
                          'Curabitur commodo turpis id placerat mattis. Mauris '
                          'euismod arcu id orci fringilla sodales. Proin congue '
                          'eleifend ipsum, eleifend porttitor mi ullamcorper.',
                          style: poppins12w300),
                      const SizedBox(height: 28),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'ADD TO CART',
                              style: poppins16White,
                            )),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
