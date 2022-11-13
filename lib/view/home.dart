import 'package:flutter/material.dart';
import 'package:flutter_intensif_club_fugi/constant/constants.dart';
import 'package:flutter_intensif_club_fugi/data/product_category.dart';

import '../data/product_detail_data.dart';
import 'product_detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentPage = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: listProductCategory.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text('Home'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: ListView(
          children: [
            const SizedBox(height: 32),
            Text('Discover the most \nmodern furniture', style: poppins22),
            sh10,
            TabBar(
                isScrollable: true,
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: const TextStyle(
                  height: 1.5,
                  fontSize: 12.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                labelColor: wc,
                unselectedLabelColor: tc,
                tabs: listProductCategory
                    .map((product) => Tab(
                          child: Text(
                            product.name,
                            style: const TextStyle(
                              height: 1.5,
                              fontSize: 12.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ))
                    .toList()),
            sh30,
            Text('Recommended Furnitures', style: poppins16),
            const SizedBox(height: 19),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.05,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              shrinkWrap: true,
              itemCount: listProducDetailData.length,
              itemBuilder: (context, index) {
                var item = listProducDetailData[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductDetail(),
                    ));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: Image.asset(
                                    item.urlImage,
                                    width: double.infinity,
                                    height: 163,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Icon(
                                          Icons.favorite_outline_outlined,
                                          size: 14,
                                          color: Colors.red,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 14, top: 6, bottom: 5),
                              child: Text(item.name, style: poppins12),
                            ),
                            Row(children: [
                              const SizedBox(width: 14),
                              Text(
                                '\$${item.price}',
                                style: poppins20Price,
                              ),
                              const Spacer(),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: icc,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '${item.ratting}',
                                style: poppins12Rate,
                              ),
                              const SizedBox(width: 18),
                            ]),
                            const SizedBox(width: 12),
                          ],
                        )),
                  ),
                );
              },
            ),
            sh30,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          currentIndex: currentPage,
          unselectedItemColor: Colors.grey,
          selectedItemColor: wc,
          type: BottomNavigationBarType.fixed,
          backgroundColor: wc,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
                icon: currentPage == 0
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF9A9390),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.home_outlined),
                        ))
                    : const Icon(Icons.home_outlined),
                label: ''),
            BottomNavigationBarItem(
                icon: currentPage == 1
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF9A9390),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.shopping_cart_outlined),
                        ))
                    : const Icon(Icons.shopping_cart_outlined),
                label: ''),
            BottomNavigationBarItem(
                icon: currentPage == 2
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF9A9390),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.star_border_outlined),
                        ))
                    : const Icon(Icons.star_border_outlined),
                label: ''),
            BottomNavigationBarItem(
                icon: currentPage == 3
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF9A9390),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.person_2_outlined),
                        ))
                    : const Icon(Icons.person_2_outlined),
                label: ''),
          ]),
    );
  }
}
