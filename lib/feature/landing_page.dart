import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:footer/footer.dart';
import 'login_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    //full screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //hight
    // var padding = MediaQuery.of(context).viewPadding;
    //double height1 = screenHeight - padding.top - padding.bottom;
    return Material(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Image.asset(
          "assets/images/logo.png",
          height: 80,
          width: 60,
        ),
        title: Row(
          children: [
            SizedBox(
              width: screenWidth / 40,
            ),
            TextButton(
              onPressed: () async {
                var _url = Uri.parse('https://www.myntra.com/shop/men');
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  throw "Could not launch $_url";
                }
              },
              child: Text(
                "MEN",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () async {
                var _url = Uri.parse('https://www.myntra.com/shop/women');
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  throw "Could not launch $_url";
                }
              },
              child: Text(
                "WOMEN",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () async {
                var _url = Uri.parse('https://www.myntra.com/shop/kids');
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  throw "Could not launch $_url";
                }
              },
              child: Text(
                "KIDS",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () async {
                var _url = Uri.parse('https://www.myntra.com/shop/home-living');
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  throw "Could not launch $_url";
                }
              },
              child: Text(
                "HOME & LIVING",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () async {
                var _url = Uri.parse('https://www.myntra.com/shop/beauty');
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  throw "Could not launch $_url";
                }
              },
              child: Text(
                "BEAUTY",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () async {
                var _url = Uri.parse(
                    'https://www.myntra.com/studio/home?appRoute=%7B%22url%22%3A%22%2Fstudio%2Fhome%22%7D');
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  throw "Could not launch $_url";
                }
              },
              child: Text(
                "STUDIO",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            SizedBox(
              width: screenWidth / 17,
            ),
            Container(
              width: screenWidth / 4,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for products, brand and more ',
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: SizedBox(
                    width: screenWidth / 20,
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          InkWell(
            splashColor: Colors.pink, // splash color
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            }, // button pressed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.person_outlined,
                  color: Colors.black,
                  size: 25,
                ), // icon
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ), // text
              ],
            ),
          ),
          SizedBox(
            width: screenWidth / 37,
          ),
          InkWell(
            splashColor: Colors.pinkAccent, // splash color
            onTap: () async {
              var _url = Uri.parse('https://www.myntra.com/wishlist');
              if (await canLaunchUrl(_url)) {
                await launchUrl(_url);
              } else {
                throw "Could not launch $_url";
              }
            }, // button pressed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                  size: 25,
                ), // icon
                Text(
                  "Wishlist",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ), // text
              ],
            ),
          ),
          SizedBox(
            width: screenWidth / 37,
          ),
          InkWell(
            splashColor: Colors.pinkAccent, // splash color
            onTap: () async {
              var _url = Uri.parse('https://www.myntra.com/checkout/cart');
              if (await canLaunchUrl(_url)) {
                await launchUrl(_url);
              } else {
                throw "Could not launch $_url";
              }
            }, //, // button pressed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 29,
                ), // icon
                Text(
                  "Bag",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ), // text
              ],
            ),
          ),
          SizedBox(
            width: screenWidth / 35,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: screenHeight / 18,
                    ),
                    SizedBox(
                      height: screenHeight / 2.5,
                      width: screenWidth,
                      child: AnotherCarousel(
                        autoplayDuration: 6.seconds,
                        dotSize: 6.0,
                        dotSpacing: 15.0,
                        dotPosition: DotPosition.bottomCenter,
                        images: [
                          InkWell(
                            radius: 100,
                            // navigation is done on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide1.png'),
                            ),
                          ),
                          InkWell(
                            radius: 100,
                            // navigation is done on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide2.png'),
                            ),
                          ),
                          InkWell(
                            radius: 100,
                            // navigation is done on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide3.png'),
                            ),
                          ),
                          InkWell(
                            radius: 100,
                            // navigation is done on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide4.png'),
                            ),
                          ),
                          InkWell(
                            radius: 100,
                            // navigation is doner on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide5.png'),
                            ),
                          ),
                          InkWell(
                            radius: 100,
                            // navigation is done on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide6.png'),
                            ),
                          ),
                          InkWell(
                            radius: 100,
                            // navigation is done on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide7.png'),
                            ),
                          ),
                          InkWell(
                            radius: 100,
                            // navigation is done on tap
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/slides/slide8.png'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: screenWidth,
                      height: 210,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: screenWidth / 40,
                          ),
                          Text(
                            'DEAL OF THE DAY',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 10),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Ink.image(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/images/Deal/Deal1.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.fill,
                              width: (MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).padding.left -
                                      MediaQuery.of(context).padding.right) *
                                  0.50,
                              height: 360,
                              image: AssetImage('assets/images/Deal/Deal2.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.fill,
                              width: (MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).padding.left -
                                      MediaQuery.of(context).padding.right) *
                                  0.50,
                              height: 360,
                              image: AssetImage('assets/images/Deal/Deal3.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Deal/Deal4.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.fill,
                              width: (MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).padding.left -
                                      MediaQuery.of(context).padding.right) *
                                  0.50,
                              height: 360,
                              image: AssetImage('assets/images/Deal/Deal5.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.fill,
                              // width: (MediaQuery.of(context).size.width -
                              //         MediaQuery.of(context).padding.left -
                              //         MediaQuery.of(context).padding.right) *
                              //     0.50,
                              // height: 360,
                              image: AssetImage('assets/images/Deal/Deal6.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.fill,
                              width: (MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).padding.left -
                                      MediaQuery.of(context).padding.right) *
                                  0.50,
                              height: 360,
                              image: AssetImage('assets/images/Deal/Deal7.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 8,
                          height: screenHeight / 2.9,
                          child: InkWell(
                            radius: 20,
                            onTap: () {
                              () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              };
                            },
                            // implement the image with Ink.image
                            child: Ink.image(
                              fit: BoxFit.fill,
                              width: (MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).padding.left -
                                      MediaQuery.of(context).padding.right) *
                                  0.50,
                              height: 360,
                              image: AssetImage('assets/images/Deal/Deal8.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: screenWidth,
                      height: 210,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: screenWidth / 40,
                          ),
                          Text(
                            'BEST OF MYNTRA EXCLUSIVE BRANDS',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 10),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth / 50,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive1.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive2.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive3.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive4.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive5.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive6.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive7.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive8.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight / 45,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth / 25,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive9.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive10.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive11.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive12.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive13.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive14.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive15.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth / 70,
                        ),
                        Card(
                          elevation: 10,
                          child: SizedBox(
                            width: screenWidth / 10,
                            height: screenHeight / 3.5,
                            child: InkWell(
                              radius: 20,
                              onTap: () {
                                () async {
                                  var _url = Uri.parse(
                                      'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                  if (await canLaunchUrl(_url)) {
                                    await launchUrl(_url);
                                  } else {
                                    throw "Could not launch $_url";
                                  }
                                };
                              },
                              // implement the image with Ink.image
                              child: Ink.image(
                                fit: BoxFit.fill,
                                width: (MediaQuery.of(context).size.width -
                                        MediaQuery.of(context).padding.left -
                                        MediaQuery.of(context).padding.right) *
                                    0.50,
                                height: 360,
                                image: AssetImage(
                                    'assets/images/Exclusive/Exclusive16.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            width: screenWidth,
                            height: 210,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: screenWidth / 40,
                                ),
                                Text(
                                  'TOP PICKS',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      wordSpacing: 10),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth / 100,
                              ),
                              Card(
                                elevation: 8,
                                child: SizedBox(
                                  width: screenWidth / 8.1,
                                  height: screenHeight / 3.5,
                                  child: InkWell(
                                    radius: 20,
                                    onTap: () {
                                      () async {
                                        var _url = Uri.parse(
                                            'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                        if (await canLaunchUrl(_url)) {
                                          await launchUrl(_url);
                                        } else {
                                          throw "Could not launch $_url";
                                        }
                                      };
                                    },
                                    // implement the image with Ink.image
                                    child: Ink.image(
                                      fit: BoxFit.fill,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .left -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .right) *
                                              0.50,
                                      height: 360,
                                      image: AssetImage(
                                          'assets/images/Picks/Picks1.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 100,
                              ),
                              Card(
                                elevation: 8,
                                child: SizedBox(
                                  width: screenWidth / 8.1,
                                  height: screenHeight / 3.5,
                                  child: InkWell(
                                    radius: 20,
                                    onTap: () {
                                      () async {
                                        var _url = Uri.parse(
                                            'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                        if (await canLaunchUrl(_url)) {
                                          await launchUrl(_url);
                                        } else {
                                          throw "Could not launch $_url";
                                        }
                                      };
                                    },
                                    // implement the image with Ink.image
                                    child: Ink.image(
                                      fit: BoxFit.fill,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .left -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .right) *
                                              0.50,
                                      height: 360,
                                      image: AssetImage(
                                          'assets/images/Picks/Picks2.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 100,
                              ),
                              Card(
                                elevation: 8,
                                child: SizedBox(
                                  width: screenWidth / 8.1,
                                  height: screenHeight / 3.5,
                                  child: InkWell(
                                    radius: 20,
                                    onTap: () {
                                      () async {
                                        var _url = Uri.parse(
                                            'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                        if (await canLaunchUrl(_url)) {
                                          await launchUrl(_url);
                                        } else {
                                          throw "Could not launch $_url";
                                        }
                                      };
                                    },
                                    // implement the image with Ink.image
                                    child: Ink.image(
                                      fit: BoxFit.fill,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .left -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .right) *
                                              0.50,
                                      height: 360,
                                      image: AssetImage(
                                          'assets/images/Picks/Picks3.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 100,
                              ),
                              Card(
                                elevation: 8,
                                child: SizedBox(
                                  width: screenWidth / 8.1,
                                  height: screenHeight / 3.5,
                                  child: InkWell(
                                    radius: 20,
                                    onTap: () {
                                      () async {
                                        var _url = Uri.parse(
                                            'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                        if (await canLaunchUrl(_url)) {
                                          await launchUrl(_url);
                                        } else {
                                          throw "Could not launch $_url";
                                        }
                                      };
                                    },
                                    // implement the image with Ink.image
                                    child: Ink.image(
                                      fit: BoxFit.fill,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .left -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .right) *
                                              0.50,
                                      height: 360,
                                      image: AssetImage(
                                          'assets/images/Picks/Picks4.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 100,
                              ),
                              Card(
                                elevation: 8,
                                child: SizedBox(
                                  width: screenWidth / 8.1,
                                  height: screenHeight / 3.5,
                                  child: InkWell(
                                    radius: 20,
                                    onTap: () {
                                      () async {
                                        var _url = Uri.parse(
                                            'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                        if (await canLaunchUrl(_url)) {
                                          await launchUrl(_url);
                                        } else {
                                          throw "Could not launch $_url";
                                        }
                                      };
                                    },
                                    // implement the image with Ink.image
                                    child: Ink.image(
                                      fit: BoxFit.fill,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .left -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .right) *
                                              0.50,
                                      height: 360,
                                      image: AssetImage(
                                          'assets/images/Picks/Picks5.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 100,
                              ),
                              Card(
                                elevation: 8,
                                child: SizedBox(
                                  width: screenWidth / 8.1,
                                  height: screenHeight / 3.5,
                                  child: InkWell(
                                    radius: 20,
                                    onTap: () {
                                      () async {
                                        var _url = Uri.parse(
                                            'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                        if (await canLaunchUrl(_url)) {
                                          await launchUrl(_url);
                                        } else {
                                          throw "Could not launch $_url";
                                        }
                                      };
                                    },
                                    // implement the image with Ink.image
                                    child: Ink.image(
                                      fit: BoxFit.fill,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .left -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .right) *
                                              0.50,
                                      height: 360,
                                      image: AssetImage(
                                          'assets/images/Picks/Picks6.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 100,
                              ),
                              Card(
                                elevation: 8,
                                child: SizedBox(
                                  width: screenWidth / 8.1,
                                  height: screenHeight / 3.5,
                                  child: InkWell(
                                    radius: 20,
                                    onTap: () {
                                      () async {
                                        var _url = Uri.parse(
                                            'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                        if (await canLaunchUrl(_url)) {
                                          await launchUrl(_url);
                                        } else {
                                          throw "Could not launch $_url";
                                        }
                                      };
                                    },
                                    // implement the image with Ink.image
                                    child: Ink.image(
                                      fit: BoxFit.fill,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .left -
                                                  MediaQuery.of(context)
                                                      .padding
                                                      .right) *
                                              0.50,
                                      height: 360,
                                      image: AssetImage(
                                          'assets/images/Picks/Picks7.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            width: screenWidth,
                            height: 210,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: screenWidth / 40,
                                ),
                                Text(
                                  'CATEGORIES TO BAG',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      wordSpacing: 10),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/kurti.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/handbag.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/kurtas.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Dresses.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/T-Shirts.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Sarees.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Shirts.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/T-Shirts & Shorts.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Jewellery.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Teens Wear.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Beauty.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Plus Size Styles.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Jeans.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Sports Shoes.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Trouser.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Casual Shoes.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Track Pants.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Innerwear.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Bath Essentials.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Trouser.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Watches.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Tops.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Infant Essentials.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth / 150,
                              ),
                              SizedBox(
                                width: screenWidth / 8.5,
                                height: screenHeight / 4.5,
                                child: InkWell(
                                  radius: 20,
                                  onTap: () {
                                    () async {
                                      var _url = Uri.parse(
                                          'https://www.myntra.com/most_loved_ethnic_brands?rf=Discount%20Range%3A60.0_100.0_60.0%20TO%20100.0&sort=popularity');
                                      if (await canLaunchUrl(_url)) {
                                        await launchUrl(_url);
                                      } else {
                                        throw "Could not launch $_url";
                                      }
                                    };
                                  },
                                  // implement the image with Ink.image
                                  child: Ink.image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/categories/Flip-Flops.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Footer(
                child: Text(
                    'POPULAR SEARCHES\n\nMakeup Dresses For Girls  T-Shirts  Sandals  Headphones  Babydolls  Blazers For Men  Handbags  Ladies Watches  Bags  Sport Shoes  Reebok Shoes  Puma Shoes  Boxers  Wallets  Tops  Earrings  Fastrack Watches  Kurtis  Nike  Smart Watches  Titan Watches  Designer Blouse  Gowns  Rings  Cricket Shoes  Forever 21  Eye Makeup  Photo Frames  Punjabi Suits  Bikini  Myntra Fashion Show  Lipstick  Saree  Watches  Dresses  Lehenga  Nike Shoes  Goggles  Bras  Suit  Chinos  Shoes  Adidas Shoes  Woodland Shoes  Jewellery  Designers Sarees\nIn case of any concern, Contact Us\n© 2023 www.myntra.com. All rights reserved.\n\nRegistered Office Address\n\n\nBuildings Alyssa,\nBegonia and Clover situated in Embassy Tech Village,\nOuter Ring Road,\nDevarabeesanahalli Village,\nVarthur Hobli,\nBengaluru  560103, India\nCIN: U72300KA2007PTC041799\n\nTelephone: +91-80-61561999\nONLINE SHOPPING MADE EASY AT MYNTRA\nIf you would like to experience the best of online shopping for men, women and kids in India, you are at the right place. Myntra is the ultimate destination for fashion and lifestyle, being host to a wide array of merchandise including clothing, footwear, accessories, jewellery, personal care products and more. It is time to redefine your style statement with our treasure-trove of trendy items. Our online store brings you the latest in designer products straight out of fashion houses. You can shop online at Myntra from the comfort of your home and get your favourites delivered right to your doorstep.\n\nBEST ONLINE SHOPPING SITE IN INDIA FOR FASHION\nBe it clothing, footwear or accessories, Myntra offers you the ideal combination of fashion and functionality for men, women and kids. You will realise that the sky is the limit when it comes to the types of outfits that you can purchase for different occasions.\n\nSmart mens clothing - At Myntra you will find myriad options in smart formal shirts and trousers, cool T-shirts and jeans, or kurta and pyjama combinations for men. Wear your attitude with printed T-shirts. Create the back-to-campus vibe with varsity T-shirts and distressed jeans. Be it gingham, buffalo, or window-pane style, checked shirts are unbeatably smart. Team them up with chinos, cuffed jeans or cropped trousers for a smart casual look. Opt for a stylish layered look with biker jackets. Head out in cloudy weather with courage in water-resistant jackets. Browse through our innerwear section to find supportive garments which would keep you confident in any outfit.\nTrendy womens clothing - Online shopping for women at Myntra is a mood-elevating experience. Look hip and stay comfortable with chinos and printed shorts this summer. Look hot on your date dressed in a little black dress, or opt for red dresses for a sassy vibe. Striped dresses and T-shirts represent the classic spirit of nautical fashion. Choose your favourites from among Bardot, off-shoulder, shirt-style, blouson, embroidered and peplum tops, to name a few. Team them up with skinny-fit jeans, skirts or palazzos. Kurtis and jeans make the perfect fusion-wear combination for the cool urbanite. Our grand sarees and lehenga-choli selections are perfect to make an impression at big social events such as weddings. Our salwar-kameez sets, kurtas and Patiala suits make comfortable options for regular wear.\nFashionable footwear - While clothes maketh the man, the type of footwear you wear reflects your personality. We bring you an exhaustive lineup of options in casual shoes for men, such as sneakers and loafers. Make a power statement at work dressed in brogues and oxfords. Practice for your marathon with running shoes for men and women. Choose shoes for individual games such as tennis, football, basketball, and the like. Or step into the casual style and comfort offered by sandals, sliders, and flip-flops. Explore our lineup of fashionable footwear for ladies, including pumps, heeled boots, wedge-heels, and pencil-heels. Or enjoy the best of comfort and style with embellished and metallic flats.\nStylish accessories - Myntra is one of the best online shopping sites for classy accessories that perfectly complement your outfits. You can select smart analogue or digital watches and match them up with belts and ties. Pick up spacious bags, backpacks, and wallets to store your essentials in style. Whether you prefer minimal jewellery or grand and sparkling pieces, our online jewellery collection offers you many impressive options.\nFun and frolic - Online shopping for kids at Myntra is a complete joy. Your little princess is going to love the wide variety of pretty dresses, ballerina shoes, headbands and clips. Delight your son by picking up sports shoes, superhero T-shirts, football jerseys and much more from our online store. Check out our lineup of toys with which you can create memories to cherish.\nBeauty begins here - You can also refresh, rejuvenate and reveal beautiful skin with personal care, beauty and grooming products from Myntra. Our soaps, shower gels, skin care creams, lotions and other ayurvedic products are specially formulated to reduce the effect of aging and offer the ideal cleansing experience. Keep your scalp clean and your hair uber-stylish with shampoos and hair care products. Choose makeup to enhance your natural beauty.\nMyntra is one of the best online shopping sites in India which could help transform your living spaces completely. Add colour and personality to your bedrooms with bed linen and curtains. Use smart tableware to impress your guest. Wall decor, clocks, photo frames and artificial plants are sure to breathe life into any corner of your home.\n\nAFFORDABLE FASHION AT YOUR FINGERTIPS\nMyntra is one of the unique online shopping sites in India where fashion is accessible to all. Check out our new arrivals to view the latest designer clothing, footwear and accessories in the market. You can get your hands on the trendiest style every season in western wear. You can also avail the best of ethnic fashion during all Indian festive occasions. You are sure to be impressed with our seasonal discounts on footwear, trousers, shirts, backpacks and more. The end-of-season sale is the ultimate experience when fashion gets unbelievably affordable.\n\nMYNTRA INSIDER\nEvery online shopping experience is precious. Hence, a cashless reward-based customer loyalty program called Myntra Insider was introduced to enhance your online experience. The program is applicable to every registered customer and measures rewards in the form of Insider Points.\n\nThere are four levels to achieve in the program, as the Insider Points accumulate. They are - Insider, Select, Elite or Icon. Apart from offering discounts on Myntra and partner platform coupons, each tier comes with its own special perks.\n\nInsider\n\nOpportunity to master any domain in fashion with tips from celebrity stylists at Myntra Masterclass sessions.\nCurated collections from celeb stylists.\nElite\n\nVIP access to special sale events such as the End of Reason Sale (EORS) and product launches.\nExclusive early access to Limited Edition products\nIcon\n\nChance to get on guest lists for special events.\nMyntra Studio - The Personalised Fashion Feed You Wouldnt Want To Miss Out On\nThe world wide web is evolving at a relentless pace, and with an accelerated growth each passing year, there is bound to be an overwhelming surge of online content. It was for this very reason that personalisation of search feeds was proposed as a solution to combat the overload of irrelevant information.\n\nSeveral social media platforms such as Facebook and Instagram along with various online shopping websites have chosen to help filter content, increasing user engagement, retention and customer loyalty.\n\nMyntra is one such online shopping website that joins the list of platforms that help curate a personalised fashion feed. Named theMyntra Studio, this personalised search feed brings you the latest men and womens fashion trends, celebrity styles, branded content and daily updates from your favourite fashion labels.\n\nIf you are wondering how impactful Myntra Studio can be, we are listing out five perks of having a rich, meaningful, and personalised fashion feed in your life.\n\nKeep Up With What Your Favourite Fashion Icons Are Upto\nThe #OOTD, AKA outfit of the day hashtag trend has been a rage among fashion bloggers and stylists. The whole concept of building an outfit from scratch and showcasing it to a huge community of enthusiasts using the hashtag has helped individuals with understanding trends and making suitable for daily wear.\n\nImagine if you could keep up with every piece of clothing and accessory worn by the fashion icons you look upto. From Sonam Kapoor to Hailey Baldwin Bieber, Myntra Studio has a Stories feature to help track celebrity fashion trends, exploring details such as their outfit of the day. This way, you would not ever miss out on the latest celebrity fashion trends, from all around the world.\n\nQuick Fashion Tip And Tricks\nWhether it is draping a saree into a dhoti style, wearing the right lingerie under certain dresses or discovering multiple uses out of heavy ethnic wear, Myntra Studio will help you acquire some unique and useful fashion hacks. Each hack is designed with the intention to help you get the best wear out of everything in your wardrobe.\n\nUpdates on What Is Trending and New Product Launches\nSince fast fashion seems to be extremely hard to keep up with these days, a quick update on what is trending in accessories, clothing and footwear would certainly be of great help. Myntra Studio helps you stay connected to the most beloved and sought after brands such as Puma, Coverstory, The Label Life and so many more.\n\nYour feed keeps you updated with stories of what the brands are creating including clothing, footwear and jewellery, along with their new seasonal collections.\n\nExplicit Step-By-Step Beauty Routines From Experts\nJust like fashion, the beauty community keeps on growing, and with brands such as Huda Beauty, MAC and the latest Kay Beauty by Katrina Kaif, are constantly coming up with mind-blowing products. Whether it is creating a no-makeup look, different winged eyeliners, do-it-yourself facial masks and other personal care beauty routines, Myntra Studio is here for you.\n\nCelebrity Confessions And A Look Into Their Lives\nA bonus feature that Myntra Studio has in store for you is celebrity confessions and a peek into their lives. So, Myntra helps you stay connected to your most beloved celebrities in a matter of clicks.\n\nIf you are very particular when it comes to the content you wish to view and engage with on social media, the ability to intricately filter content helps achieve that. Applying the same formula for hardcore fashion lovers and shoppers, Myntra Studio brings you a daily fashion fix incorporating everything that you love, all at one place. Sign up on Myntra today and start organising your fashion feed, just the way you want to.\n\nMYNTRA APP\nMyntra, Indias no. 1 online fashion destination justifies its fashion relevance by bringing something new and chic to the table on the daily. Fashion trends seem to change at lightning speed, yet the Myntra shopping app has managed to keep up without any hiccups. In addition, Myntra has vowed to serve customers to the best of its ability by introducing its first-ever loyalty program, The Myntra Insider. Gain access to priority delivery, early sales, lucrative deals and other special perks on all your shopping with the Myntra app. Download the Myntra app on your Android or IOS device today and experience shopping like never before!\n\nHISTORY OF MYNTRA\nBecoming Indias no. 1 fashion destination is not an easy feat. Sincere efforts, digital enhancements and a team of dedicated personnel with an equally loyal customer base have made Myntra the online platform that it is today. The original B2B venture for personalized gifts was conceived in 2007 but transitioned into a full-fledged ecommerce giant within a span of just a few years. By 2012, Myntra had introduced 350 Indian and international brands to its platform, and this has only grown in number each passing year. Today Myntra sits on top of the online fashion game with an astounding social media following, a loyalty program dedicated to its customers, and tempting, hard-to-say-no-to deals.\n\nThe Myntra shopping app came into existence in the year 2015 to further encourage customers shopping sprees. Download the app on your Android or IOS device this very minute to experience fashion like never before\n\nSHOP ONLINE AT MYNTRA WITH COMPLETE CONVENIENCE\nAnother reason why Myntra is the best of all online stores is the complete convenience that it offers. You can view your favourite brands with price options for different products in one place. A user-friendly interface will guide you through your selection process. Comprehensive size charts, product information and high-resolution images help you make the best buying decisions. You also have the freedom to choose your payment options, be it card or cash-on-delivery. The 14-day returns policy gives you more power as a buyer. Additionally, the try-and-buy option for select products takes customer-friendliness to the next level.\n\nEnjoy the hassle-free experience as you shop comfortably from your home or your workplace. You can also shop for your friends, family and loved-ones and avail our gift services for special occasions.'),
                padding: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
