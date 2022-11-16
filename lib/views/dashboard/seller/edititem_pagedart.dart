import 'dart:developer';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaffoldzoid_app/controller/get_product/get_product_bloc.dart';
import 'package:scaffoldzoid_app/controller/product/product_bloc.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/utils/messsenger.dart';
import 'package:scaffoldzoid_app/widgets/button/button.dart';
import 'package:scaffoldzoid_app/widgets/inputfield/input_field.dart';
import 'package:scaffoldzoid_app/widgets/price_card/price_card.dart';

class EditItemsPage extends StatefulWidget {
  const EditItemsPage({super.key});

  @override
  State<EditItemsPage> createState() => _EditItemsPageState();
}

class _EditItemsPageState extends State<EditItemsPage> {
  String? productId;
  String iteamData = "Weight";
  String? selectedValue;
  bool isAvailability = true;
  List priceList = [];
  final List<String> items = [
    '500 gm',
    '1 kg',
    '2 kg',
    '3 kg',
    '4 kg',
    '5 kg',
  ];
  final TextEditingController orangeType = TextEditingController();
  final TextEditingController orangeCategory = TextEditingController();
  final TextEditingController orangePrice = TextEditingController();
  final TextEditingController orangeQuantity = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void addItems() {
      if (orangeType.text == '') {
        CustomSnackbar.errorSnackbar('error', 'Please enter orange type');
      } else if (orangeCategory.text == '') {
        CustomSnackbar.errorSnackbar('error', 'Please enter orange category');
      } else if (priceList.isEmpty) {
        CustomSnackbar.errorSnackbar('error', 'Please enter orange price');
      } else {
        log(priceList.toString());
        log(orangeType.text);
        log(orangeCategory.text);
        log(isAvailability.toString());

        context.read<ProductBloc>().add(ProductEvent.updateProduct(
            productId: productId.toString(),
            orangeName: orangeType.text,
            category: orangeCategory.text,
            isAvsilsbility: isAvailability,
            iteams: priceList));
      }
    }

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 40.h,
        child: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                success: () {
                  CustomSnackbar.successSnackbar('success', "Product updated");
                  Navigator.pop(context);
                });
          },
          builder: (context, state) {
            return Button(
              label: 'SAVE',
              onPressed: addItems,
            );
          },
        ),
      ),
      backgroundColor: Kcolor.bgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Add Items',
          style: GoogleFonts.poppins(
            color: Kcolor.headingColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Kcolor.bgColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<GetProductBloc, GetProductState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loaded: (productDetails) {
                orangeType.text = productDetails.name;
                orangeCategory.text = productDetails.category;
                isAvailability = productDetails.isAvailability;

                setState(() {
                  productId = productDetails.productId;
                });

                for (int i = 0; i < productDetails.iteams.length; i++) {
                  priceList.add(
                    {
                      'price': productDetails.iteams[i].price,
                      'quantity': productDetails.iteams[i].quantity,
                    },
                  );
                }
              },
              failure: (error) {
                CustomSnackbar.errorSnackbar('error', error);
              },
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                InputField(
                  hintText: 'Orange Type Name',
                  labelText: 'Orange Type Name',
                  controller: orangeType,
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                ),
                SizedBox(
                  height: 20.h,
                ),
                InputField(
                  hintText: 'Orange Category',
                  labelText: 'Orange Category',
                  controller: orangeCategory,
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 13.w),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.w, vertical: 20.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    border: Border.all(
                        color: const Color.fromRGBO(200, 200, 200, 1)),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Prizes',
                            style: GoogleFonts.poppins(
                              color: Kcolor.headingColor,
                              fontSize: 13.5.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '*',
                            style: GoogleFonts.poppins(
                              color: Kcolor.primaryColor,
                              fontSize: 13.5.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Note: You can add more than one prize for the same orange type.',
                        style: GoogleFonts.poppins(
                          color: Kcolor.headingColor,
                          fontSize: 13.5.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomDropdownButton2(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Kcolor.primaryColor,
                                size: 25.sp,
                              ),
                              buttonWidth: double.infinity,
                              buttonHeight: 45.h,
                              dropdownWidth: 300.w,
                              buttonDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  color: const Color.fromARGB(0, 255, 255, 255),
                                  width: 0,
                                ),
                                color: const Color.fromRGBO(250, 250, 250, 1),
                              ),
                              hint: iteamData,
                              dropdownItems: items,
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value;
                                  iteamData = value!;
                                  orangeQuantity.text = selectedValue!;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            flex: 1,
                            child: InputField(
                              hintText: 'Price',
                              labelText: 'Price',
                              controller: orangePrice,
                              keyboardType: TextInputType.number,
                              textCapitalization: TextCapitalization.words,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextButton.icon(
                          onPressed: () {
                            if (orangePrice.text == "") {
                              CustomSnackbar.errorSnackbar(
                                  'error', 'Please enter price');
                            } else if (orangeQuantity.text == "") {
                              CustomSnackbar.errorSnackbar(
                                  'error', 'Please enter quantity');
                            } else {
                              setState(() {
                                priceList.add({
                                  'quantity': orangeQuantity.text,
                                  'price': orangePrice.text
                                });
                                orangePrice.text = '';
                              });
                            }
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Kcolor.primaryColor,
                          ),
                          label: Text('Add More',
                              style: GoogleFonts.poppins(
                                color: Kcolor.primaryColor,
                                fontSize: 13.5,
                                fontWeight: FontWeight.w700,
                              ))),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: priceList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return PriceCard(
                              price: priceList[index]['price'],
                              quantity: priceList[index]['quantity'],
                              onPressed: () {
                                setState(() {
                                  priceList.removeAt(index);
                                });
                              },
                            );
                          }),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
                  child: Row(
                    children: [
                      Text('Availability',
                          style: GoogleFonts.poppins(
                            color: Kcolor.headingColor,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                          )),
                      Text(' *',
                          style: GoogleFonts.poppins(
                            color: Kcolor.primaryColor,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                          )),
                      const Spacer(),
                      CupertinoSwitch(
                          value: isAvailability,
                          onChanged: (value) {
                            setState(() {
                              isAvailability = value;
                            });
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
