import 'package:dio/src/multipart_file.dart' as file;
import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:e_o_e/component/components.dart';
import 'package:e_o_e/models/wallet/company.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:e_o_e/screens/rooms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../constants.dart';
import '../network/online/http.dart';
import 'about_us.dart';
import 'main_setting.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  XFile image = XFile('');
  bool selected = false;
  bool isChecked = false;
  var regionController = TextEditingController();
  var transferNumberController = TextEditingController();
  var syriatelCashController = TextEditingController();
  var fullNameController = TextEditingController();
  var yourNumberController = TextEditingController();
  var yourRagionController = TextEditingController();
  String selectedRang = '0';
  String cutOffAmount = '500000';
  String selectedCompany = 'select a company';
  String selectedBranch = 'select a branch';
  int index = 0;
  int selectedCompanyId = 0;
  int selectedBranchId = 0;

  @override
  Widget build(BuildContext context) {
    List<Company> companies = [];
    List<String> companiesNames = [];
    List<String> branchesName = [];
    getCompanies().then((value) {
      value.forEach(
        (company) => companies.add(
          Company.fromJson(company),
        ),
      );
      for (var element in companies) {
        companiesNames.add(element.name.toString());
      }
    });
    final width = MediaQuery.of(context)?.size.width ?? double.nan;
    final height = MediaQuery.of(context)?.size.height ?? double.nan;
    List<Widget> syriatelCash = [
      Text('The Total Amount is : $cutOffAmount sp'),
      const Text(
        'How much do u want to cut off  :',
      ),
      AwesomeDropDown(
        dropDownList: const [
          '25000',
          '50000',
          '75000',
          '100000',
        ],
        selectedItem: cutOffAmount,
        onDropDownItemClick: (value) {
          setState(() {
            cutOffAmount = value;
          });
        },
        dropDownBorderRadius: 10,
        dropDownBottomBorderRadius: 10,
        dropDownTopBorderRadius: 10,
      ),
      SizedBox(
        height: height * .02,
      ),
      const Text('Your syriatel cash account number :'),
      SizedBox(
        height: height * .02,
      ),
      TextFormField(
        keyboardType: TextInputType.number,
        controller: syriatelCashController,
        decoration: const InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(9),
            ),
          ),
          focusColor: Colors.grey,
        ),
      ),
      SizedBox(
        height: height * .02,
      ),
      GestureDetector(
        onTap: () {
          index = 0;
          cutOffSyriatellCash(
            number: syriatelCashController.text,
            moneyAmount: cutOffAmount,
          ).then((value) {
            messageToast(msg: 'Done !', color: Colors.green);
          }).catchError((onError) {
            print(onError.toString());
            messageToast(msg: 'Connection Error', color: Colors.red);
          });
        },
        child: Container(
          color: kPrimaryColor,
          margin: EdgeInsets.symmetric(horizontal: width * .02),
          height: height * .07,
          width: width,
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Confirm',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ];
    List<Widget> paymentMethode = [
      SingleChildScrollView(
        child: Column(
          children: [
            Text('The Total Amount is : $cutOffAmount sp'),
            const Text(
              'How much do u want to cut off  :',
            ),
            AwesomeDropDown(
              dropDownList: const [
                '25000',
                '50000',
                '75000',
                '100000',
              ],
              selectedItem: cutOffAmount,
              onDropDownItemClick: (value) {
                setState(() {
                  cutOffAmount = value;
                });
              },
              dropDownBorderRadius: 10,
              dropDownBottomBorderRadius: 10,
              dropDownTopBorderRadius: 10,
            ),
            SizedBox(
              height: height * .02,
            ),
            const Text('Enter your full name :'),
            SizedBox(
              height: height * .02,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: fullNameController,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                focusColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            const Text('Your your number :'),
            SizedBox(
              height: height * .02,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: yourNumberController,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                focusColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            const Text('Your your region :'),
            SizedBox(
              height: height * .02,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: yourRagionController,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                focusColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            const Text('Select the company :'),
            SizedBox(
              height: height * .02,
            ),
            AwesomeDropDown(
              dropDownList: companiesNames,
              selectedItem: selectedCompany,
              onDropDownItemClick: (value) {
                setState(() {
                  selectedCompany = value;
                  branchesName.clear();
                  for (var element in companies) {
                    if (element.name == selectedCompany) {
                      for (var branch in element.branches!) {
                        branchesName.add(branch.branchName.toString());
                      }
                    }
                  }
                });
              },
              dropDownBottomBorderRadius: 10,
              dropDownTopBorderRadius: 10,
            ),
            SizedBox(
              height: height * .02,
            ),
            const Text('Select the Branch :'),
            SizedBox(
              height: height * .02,
            ),
            AwesomeDropDown(
              dropDownList: branchesName,
              selectedItem: selectedCompany,
              onDropDownItemClick: (value) {
                setState(() {
                  selectedBranch = value;
                  for (var element in companies) {
                    if (element.name == selectedCompany) {
                      selectedCompanyId = element.id!.toInt();
                      for (var branch in element.branches!) {
                        if (branch.branchName == selectedBranch) {
                          selectedBranchId = branch.id!.toInt();
                          print(selectedBranchId);
                        }
                      }
                    }
                  }
                });
              },
              dropDownBottomBorderRadius: 10,
              dropDownTopBorderRadius: 10,
            ),
            SizedBox(
              height: height * .02,
            ),
            GestureDetector(
              onTap: () {
                cutOffCompany(
                    moneyAmount: cutOffAmount,
                    number: yourNumberController.text.toString(),
                    fullName: fullNameController.text,
                    region: yourRagionController.text,
                    companyId: selectedCompanyId.toString(),
                    branchId: selectedBranchId.toString(),
                ).then((value){
                      messageToast(msg: 'Done !', color: Colors.green);
                }).catchError((onError){
                  print('error is \n'+onError.toString());
                  messageToast(msg: 'Connection error', color: Colors.red);
                });
              },
              child: Container(
                color: kPrimaryColor,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewPadding.bottom),
                margin: EdgeInsets.symmetric(horizontal: width * .02),
                height: height * .07,
                width: width,
                child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
    List<Widget> firstPop = [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              elevation: 11,
              scrollable: true,
              title: Text(
                'Choose The Way To Cut Off The Amount You Want',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              actions: syriatelCash,
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * .2, vertical: height * .03),
          height: height * .061,
          width: width * .5,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(11),
          ),
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Syriatel cash',
              style: TextStyle(
                color: Colors.white,
                fontFamily: kFontFamily,
              ),
            ),
          ),
        ),
      ),
      const SizedBox(child: const Center(child: Text('or'))),
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
          showDialog(
            context: context,
            barrierDismissible: false,
            useSafeArea: true,
            builder: (context) => SingleChildScrollView(
              child: AlertDialog(
                scrollable: true,
                backgroundColor: Colors.white,
                elevation: 0,
                actions: paymentMethode,
              ),
            ),
          );
        },
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: width * .2, vertical: height * .03),
            height: height * .061,
            width: width * .5,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(11),
            ),
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Payment Company',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: kFontFamily,
                ),
              ),
            ),
          ),
        ),
      ),
    ];
    List<List<Widget>> actions = [
      firstPop,
      syriatelCash

    ];

    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xff085cb1),
              body: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff085cb1),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset("assets/Image 7.png"),
                            radius: 50,
                          ),
                          const SizedBox(width: 11.0),
                          Column(
                            children: [
                              const SizedBox(
                                height: 32,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 15),
                                  Row(
                                    children: [
                                      const Text(
                                        'Hello',
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Color(0xFFFEC668),
                                        ),
                                      ),
                                      SvgPicture.asset(
                                          "assets/icons8-waving-hand-light-skin-tone-96.svg"),
                                    ],
                                  ),
                                  const Text(
                                    "Maggi Vega",
                                    style: TextStyle(
                                      fontFamily: kFontFamily,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  const Text(
                                    "maggi.vega@gmail.com",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: kFontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Color(0xFFFEC668),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        const Divider(
                          color: Color(0xFFFEC668),
                          height: 7,
                          indent: 25,
                          endIndent: 25,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                              Get.snackbar('', 'coming soon...');
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.091,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  child: Container(
                                    height: 25,
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/user (6).svg",
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        const Text(
                                          "Profile",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainSetting(),
                                ),
                              );
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.091,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  child: Container(
                                    height: 25,
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/settings (5).svg",
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        const Text(
                                          "Settings",
                                          style: TextStyle(
                                            fontFamily: kFontFamily,
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.snackbar("Oh!", "you allready in wallet");
                          },
                          child: Container(
                            color: const Color(0xFFFEC668),
                            height: MediaQuery.of(context).size.height * 0.091,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height: 25,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/wallet (1).svg",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "Wallet",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                              Get.snackbar('', 'coming soon...');
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.091,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/bubble-chat (3).svg",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "Chat",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AboutUs(),
                                ),
                              );
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.091,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height: 25,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/information-button (1).svg",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "About us",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RoomsScreen(),
                                ),
                              );
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.091,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  height: 25,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/classroom (2).svg",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "Rooms",
                                        style: TextStyle(
                                          fontFamily: kFontFamily,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/back (1).svg",
                        width: width * 0.07,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.3),
                      width: width * 0.2,
                      //color: Colors.grey,
                      height: height * 0.05,
                      child: const Center(
                        child: AutoSizeText(
                          "Wallet",
                          style: TextStyle(
                              color: Color(0xFF085CB1),
                              fontSize: 2020,
                              fontFamily: kFontFamily),
                          maxLines: 1,
                          maxFontSize: 24,
                          minFontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(width * .03),
                  //color: Colors.grey,
                  height: height * .2,
                  width: width * .9,
                  child: Center(
                    child: Image.asset(
                      "assets/folder (2).png",
                      isAntiAlias: true,
                      filterQuality: FilterQuality.high,
                      excludeFromSemantics: true,
                      matchTextDirection: true,
                    ),
                  ),
                  //child: ,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * .2, vertical: height * .03),
                  child: AwesomeDropDown(
                    dropDownBorderRadius: 11,
                    dropDownTopBorderRadius: 11,
                    dropDownBottomBorderRadius: 11,
                    dropDownList: const [
                      '25000',
                      '50000',
                      '75000',
                      '100000',
                    ],
                    selectedItem: selectedRang,
                    dropDownBGColor: Color(0xFFCA5B5B),
                    elevation: 0,
                    onDropDownItemClick: (value) {
                      setState(() {
                        selectedRang = value;
                        print(selectedRang);
                      });
                    },
                    selectedItemTextStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    dropDownOverlayBGColor: Color(0xFFCA5B5B),
                    dropDownListTextStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: width * .45,
                      height: height * .05,
                      //color: Colors.grey,
                      child: const Center(
                        child: AutoSizeText(
                          "Enter your region :",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 0212,
                          ),
                          maxLines: 1,
                          maxFontSize: 18,
                          minFontSize: 10,
                        ),
                      ),
                    ),
                    Container(
                      width: width - width * .52,
                      height: height * .05,
                      child: TextField(
                        controller: regionController,
                        decoration: const InputDecoration(
                          labelText: "your region",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          focusColor: Color(0xFF085CB1),
                          hoverColor: Color(0xFF085CB1),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height * 0.04),
                      width: width * .45,
                      height: height * .05,
                      //color: Colors.grey,
                      child: const Center(
                        child: AutoSizeText(
                          "Enter the transfer number :",
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 0212,
                          ),
                          maxLines: 1,
                          maxFontSize: 18,
                          minFontSize: 10,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.04),
                      width: width - width * .52,
                      height: height * .05,
                      child: TextField(
                        controller: transferNumberController,
                        decoration: const InputDecoration(
                          labelText: "transfer number",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          focusColor: Color(0xFF085CB1),
                          hoverColor: Color(0xFF085CB1),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height * 0.04),
                      padding: EdgeInsets.only(
                          top: height * 0.01, left: width * .35),
                      width: width * .45,
                      height: height * .05,
                      //color: Colors.grey,
                      child: const AutoSizeText(
                        "to : ",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          fontSize: 0212,
                        ),
                        maxLines: 1,
                        maxFontSize: 18,
                        minFontSize: 10,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height * 0.04),
                      width: width - width * .52,
                      height: height * .07,
                      child: Center(
                        child: TextFormField(
                          readOnly: true,
                          decoration: const InputDecoration(
                            hintText: "+96396758425",
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              ),
                            ),
                            focusColor: Color(0xFF085CB1),
                            hoverColor: Color(0xFF085CB1),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height * .04),
                      //color: Colors.grey,
                      height: height * .05,
                      width: width * 0.4,
                      child: const Center(
                        child: AutoSizeText(
                          "Add the check photo : ",
                          maxFontSize: 22,
                          minFontSize: 12,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: kFontFamily,
                            fontSize: 2020,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: selected
                          ? () {
                              Get.dialog(
                                Image.file(
                                  File(image.path),
                                ),
                                barrierDismissible: false,
                                transitionDuration:
                                    const Duration(milliseconds: 250),
                                transitionCurve: Curves.easeInOutCirc,
                              );
                            }
                          : () {},
                      child: Container(
                        margin: EdgeInsets.only(top: height * .025),
                        height: height * 0.1,
                        width: width * .25,
                        decoration: BoxDecoration(
                          //color: Colors.grey,
                          borderRadius: BorderRadius.circular(25.0),
                          image: selected
                              ? DecorationImage(
                                  image: FileImage(
                                    File(image.path),
                                  ),
                                  fit: BoxFit.fill,
                                )
                              : null,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then((value) {
                          setState(() {
                            selected = true;
                            image = value!;
                            messageToast(
                                msg: '${image.name} is uploaded',
                                color: Colors.green);
                          });
                        }).catchError((onError) {
                          messageToast(
                              msg: 'Selection canceled', color: Colors.red);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: height * .02, left: width * .03),
                        height: height * 0.1,
                        width: width * .17,
                        decoration: BoxDecoration(
                          color: const Color(0xFF707070).withOpacity(0.55),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: width * .13,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () async {
                    DioHelper.addMoney(formData: {
                      'money_amount': int.parse(selectedRang),
                      'check_image':await file.MultipartFile.fromFile(
                          image.path),
                      'transaction_choice': 'add_money',
                      'number': int.parse(transferNumberController.text),
                      'region': regionController.text,
                    }).then((value) {
                      Get.dialog(
                        Scaffold(
                          body: SizedBox(
                            height: height * .1,
                            width: width,
                            child: const Center(
                              child: Text('لقد تم الشحن سيتم الرد في أقرب وقت'),
                            ),
                          ),
                        ),
                      );
                    }).catchError((onError) {
                      messageToast(msg: 'Error !', color: Colors.red);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * .25, vertical: height * .03),
                    height: height * .061,
                    width: width * .5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCA5B5B),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * .2, vertical: height * .02),
                  height: height * .035,
                  width: width,
                  //color: Colors.red,
                  child: const Center(
                    child: AutoSizeText(
                      "Do you want to cut off your wallet ?",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 2021,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      maxFontSize: 18,
                      minFontSize: 12,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.white,
                        scrollable: true,
                        elevation: 11,
                        title: Text(
                          'Choose The Way To Cut Off The Amount You Want',
                          style: TextStyle(
                            color: kPrimaryColor,
                          ),
                        ),
                        actions: actions[0],
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * .25, vertical: height * .03),
                    height: height * .061,
                    width: width * .5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCA5B5B),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Cut off',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: kFontFamily,
                        ),
                      ),
                    ),
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
