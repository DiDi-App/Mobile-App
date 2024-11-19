import 'package:didi/src/core/constants.dart';
import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/orders/presentation/widgets/basket_item.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text(
            "Basket",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
          ),
        ),
        SizedBox(height: 1.h),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
          child: Column(
            children: [
              const BasketItem(),
              SizedBox(height: 3.h),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppThemeColors.kBasketTabBorderColor,
                  ),
                ),
                height: 6.h,
                child: TabBar(
                  labelPadding: EdgeInsets.zero,
                  labelColor: AppThemeColors.kPrimaryBackgroundColor,
                  unselectedLabelColor: AppThemeColors.kWhiteColor,
                  indicator: BoxDecoration(
                    color: AppThemeColors.kPrimaryButtonColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  controller: _tabController,
                  tabs: [
                    Container(
                      decoration: const BoxDecoration(),
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          "Delivery",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          "Pickup",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
