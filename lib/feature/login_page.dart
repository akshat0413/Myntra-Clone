import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:myntra/feature/landing_page.dart';

import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LandingPage(),
                      ));
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () async {
                  var _url =
                      Uri.parse('https://www.myntra.com/shop/home-living');
                  if (await canLaunchUrl(_url)) {
                    await launchUrl(_url);
                  } else {
                    throw "Could not launch $_url";
                  }
                },
                child: Text(
                  "HOME & LIVING",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(
                width: screenWidth / 20,
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
              splashColor: Colors.pinkAccent[50], // splash color
              onTap: () {}, // button pressed
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
              splashColor: Colors.pinkAccent[50], // splash color
              onTap: () {}, // button pressed
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
              width: screenWidth / 20,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: SizedBox(
          width: screenWidth,
          child: Container(
            color: Colors.red[50],
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight / 17,
                  width: screenWidth / 2,
                ),
                Image(image: AssetImage("assets/images/log.png")),
                Container(
                  width: 450,
                  height: screenHeight / 1.6,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight / 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth / 30,
                          ),
                          Text(
                            'Login ',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'or ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Signup',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight / 30,
                      ),
                      SizedBox(
                        width: screenWidth / 3.2,
                        child: Container(
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth / 30,
                            height: screenHeight / 35,
                          ),
                          Text('By continuing, I agree to the'),
                          TextButton(
                              onPressed: () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/termsofuse');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.pinkAccent, // Background Color
                              ),
                              child: Text(
                                'Terms of Use',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              )),
                          Text('&'),
                          TextButton(
                              onPressed: () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/privacypolicy');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.pinkAccent[400], // Background Color
                              ),
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: SizedBox(
                          width: 360,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pinkAccent[
                                    400], //background color of button
                                //border width and color
                                elevation: 1, //elevation of button

                                padding: EdgeInsets.all(
                                    20) //content padding inside button
                                ),
                            onPressed: () {
                              // Navigate back to first route when tapped.
                            },
                            child: const Text(
                              ' CONTINUE',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth / 25,
                            height: screenHeight / 10,
                          ),
                          Text('Have trouble logging in? '),
                          TextButton(
                              onPressed: () async {
                                var _url = Uri.parse(
                                    'https://www.myntra.com/recovery?referer=https%3A%2F%2Fwww.myntra.com%2F%3Futm_source%3Ddms_google&utm_medium=searchbrand_cpc&utm_campaign=dms_google_searchbrand_cpc_Search_Brand_Myntra_Brand_India_BM_TROAS_SOK&gclid=CjwKCAjwh8mlBhB_EiwAsztdBL48-lHZevPgJz5wr8AXCGq26aNZaqdzOFRzo9o2ZB38W23OjEilHxoCAw4QAvD_BwE');
                                if (await canLaunchUrl(_url)) {
                                  await launchUrl(_url);
                                } else {
                                  throw "Could not launch $_url";
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.pinkAccent, // Background Color
                              ),
                              child: Text(
                                'Get help',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
