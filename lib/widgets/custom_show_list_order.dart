import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import '../utils/colorz.dart';

class CustomShowListOrder extends StatefulWidget {
   const CustomShowListOrder({
    super.key,
    });

  @override
  State<CustomShowListOrder> createState() => _CustomShowListOrderState();
}

class _CustomShowListOrderState extends State<CustomShowListOrder> {
  bool isShowOrder = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colorz.main,width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "100",
                  style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colorz.textPrimary),
                  ),
              ),
              const Spacer(),
              IconButton(
                onPressed: (){
                  setState(() {
                    isShowOrder = !isShowOrder;
                  });
                }, 
                icon: !isShowOrder
                ? const Icon(TablerIcons.chevron_down,color: Colorz.main,)
                :const Icon(TablerIcons.chevron_up,color: Colorz.main,)
              ),
            ],
          ),
          // SizedBox(height: 10.0,),
          isShowOrder ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Name Of Card :",
                      style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textSecondary),
                    ),
                  const SizedBox(width: 10.0,),
                   Expanded(
                     child: Text(
                      "XYZ",
                      style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                     ),
                   ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Phone : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "  +91 8200255249",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                      "Company name : ",
                      style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textSecondary),
                    ),
                    Text(
                      "ABC",
                      style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textSecondary),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "City : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "  Jamnagar",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    // SizedBox(width: 50.0,),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "State : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Gujrat",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Amount : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "  175.00/-",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Text(
                      "Payment : ",
                      style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textSecondary),
                    ),
                    Text(
                      "Paid",
                      style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textSecondary),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Status : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "  Pending",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0,),
              ],
            ),
          ):const SizedBox.shrink()
        ],
      ),
    );
  }
}