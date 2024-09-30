import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nameWidget(' $title'),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, no) {
                  return Container(
                    //  height: 500,
                    width: 235,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                        color: Color(0xff1F2033),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 128,
                          // width: 210,

                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/marry.png')),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "\u{20B9}999.00",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 75,
                            ),
                            Text(
                              '\u{2729} 4.95/5',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Marriage Timing Prediction',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.',
                          style: TextStyle(
                              fontSize: 11,
                              color: Color(0xff64658A),
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 10, bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                // /  margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color: Color(0xff64658A),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15))),
                                child: const Row(
                                  children: [
                                    Text(
                                      'View',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: ElevatedButton.icon(
                                    style: const ButtonStyle(
                                        padding: WidgetStatePropertyAll(
                                            EdgeInsets.all(12)),
                                        shape: WidgetStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(14)))),
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.blue)),
                                    iconAlignment: IconAlignment.end,
                                    onPressed: () {},
                                    label: const Text(
                                      'Purchase',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    icon: const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget nameWidget(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
        name,
        style: const TextStyle(
            color: Colors.white54, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
