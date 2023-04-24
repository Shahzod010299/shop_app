
import 'package:flutter/material.dart';
import 'package:uzum/components/constants/AppImages.dart';
import 'package:uzum/components/constants/mediaquery.dart';
import 'package:uzum/data/repository/App_repository.dart';
import 'package:uzum/pages/home/tab/widgets/page_view_widget.dart';
import 'package:uzum/pages/home/tab/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: m_w(context) * 0.5,
            width: m_w(context).toDouble(),
            child: PageView(
              children: [
                PageViewWidget(image: AppImages.pv_1),
                PageViewWidget(image: AppImages.pv_2),
                PageViewWidget(image: AppImages.pv_3),
              ],
            ),
          ), // pageView
          DefaultTabController(
            length: 4,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: TabBar(
                    splashBorderRadius: BorderRadius.circular(12),
                    isScrollable: true,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.withOpacity(0.3),
                    ),
                    tabs: const [
                      Tab(
                          child: Text(
                        'Electronics',
                        style: TextStyle(color: Colors.black),
                      )),
                      Tab(
                          child: Text(
                        'Jewelery',
                        style: TextStyle(color: Colors.black),
                      )),
                      Tab(
                          child: Text(
                        'Men\'s clothing',
                        style: TextStyle(color: Colors.black),
                      )),
                      Tab(
                          child: Text(
                        'Women\'s clothing',
                        style: TextStyle(color: Colors.black),
                      )),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  height: m_h(context) * 0.45,
                  margin: const EdgeInsets.all(8),
                  child: TabBarView(
                    children: [
                      FutureBuilder(
                        future: AppRepository.getProductsByCategoryFromApi(
                            'electronics'),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasData) {
                            List products = snapshot.data!;

                            return GridView.builder(
                              itemCount: products.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.6,
                                mainAxisSpacing: 12,
                   crossAxisSpacing: 12,
                              ),
                              itemBuilder: (context, index) =>
                                  ProductWidget(product: products[index]!),
                            );
                          }
                          return Container();
                        },
                      ),
                      FutureBuilder(
                        future: AppRepository.getProductsByCategoryFromApi(
                            'jewelery'),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasData) {
                            List products = snapshot.data!;

                            return GridView.builder(
                              itemCount: products.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.6,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 12,
                              ),
                              itemBuilder: (context, index) =>
                                  ProductWidget(product: products[index]!),
                            );
                          }
                          return Container();
                        },
                      ),
                      FutureBuilder(
                        future: AppRepository.getProductsByCategoryFromApi(
                            'men\'s clothing'),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasData) {
                            List products = snapshot.data!;

                            return GridView.builder(
                              itemCount: products.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.6,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 12,
                              ),
                              itemBuilder: (context, index) =>
                                  ProductWidget(product: products[index]!),
                            );
                          }
                          return Container();
                        },
                      ),
                      FutureBuilder(
                        future: AppRepository.getProductsByCategoryFromApi(
                            'women\'s clothing'),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasData) {
                            List products = snapshot.data!;

                            return GridView.builder(
                              itemCount: products.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.6,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 12,
                              ),
                              itemBuilder: (context, index) =>
                                  ProductWidget(product: products[index]!),
                            );
                          }
                          return Container();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
