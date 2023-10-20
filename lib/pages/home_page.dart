import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swy_eat_flutter/models/post_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentPage = 0;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40.0,
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.symmetric(horizontal: 22.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: const Color(0xFFEBEDEF),
            ),
            child: TabBar(
              controller: tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: const Color(0xFF33495D),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: const Color(0xFF33495D),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(
                  text: 'Restaurants',
                ),
                Tab(
                  text: 'Clients',
                )
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          const Divider(thickness: 6, color: Color(0xFFEBEDEF)),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.separated(
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      return Container(
                        padding:  const EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage:
                                      AssetImage(post.user?.avatar ?? ''),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        post.user?.name ?? '',
                                        style: const TextStyle(
                                          color: Color(0xFF33495D),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            post.cuisineType ?? '',
                                            style: const TextStyle(
                                                color: Color(0xFFF19B15),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: CircleAvatar(
                                              radius: 2,
                                              backgroundColor:
                                                  Color(0xFFF19B15),
                                            ),
                                          ),
                                          ...List.generate(
                                            post.user?.priceRange ?? 0,
                                            (index) => SvgPicture.asset(
                                              'assets/icons/ic_frame.svg',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12.0),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0xFFEBEDEF),
                            ),
                            const SizedBox(height: 12.0),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFF19B15),
                                ),
                                const SizedBox(width: 4.0),
                                Text(
                                  '${post.rate ?? 0.0} (${post.user?.review ?? 0} avis)',
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 43.0),
                                const Icon(Icons.location_on_outlined),
                                const SizedBox(width: 4.0),
                                Text(post.user?.location?.city ?? '')
                              ],
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              post.description ?? '',
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF85929E),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 12.0),
                            SizedBox(
                              height: 128.0,
                              child: Stack(
                                children: [
                                  PageView(
                                    onPageChanged: (value) {
                                      setState(() {
                                        currentPage = value;
                                      });
                                    },
                                    children: [
                                      ...List.generate(post.image?.length ?? 0,
                                          (index) {
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            post.image?[index] ?? '',
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        );

                                        // return Container(
                                        //   decoration: BoxDecoration(
                                        //     borderRadius: BorderRadius.circular(10.0),
                                        //     image: DecorationImage(image: Image.network(post.image?[index] ?? '').image,fit: BoxFit.cover),
                                        //   ),
                                        // );
                                      }),
                                    ],
                                  ),
                                  if((post.image?.length ?? 0) > 1)
                                  Positioned(
                                    bottom: 6.0,
                                    right: 6.0,
                                    child: Text('${currentPage + 1}/${post.image?.length ?? 0}'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const Divider(thickness: 6, color: Color(0xFFEBEDEF)),
                    itemCount: posts.length),
                Container(
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
