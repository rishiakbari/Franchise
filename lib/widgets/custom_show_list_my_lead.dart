import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../utils/colorz.dart';

class CustomerShowListMyLead extends StatefulWidget {
  const CustomerShowListMyLead({super.key});

  @override
  State<CustomerShowListMyLead> createState() => _CustomerShowListMyLeadState();
}

class _CustomerShowListMyLeadState extends State<CustomerShowListMyLead> {
  bool isShowMyLead = false;
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
                    isShowMyLead = !isShowMyLead;
                  });
                }, 
                icon: !isShowMyLead
                ? const Icon(TablerIcons.chevron_down,color: Colorz.main,)
                :const Icon(TablerIcons.chevron_up,color: Colorz.main,)
              ),
            ],
          ),
          // SizedBox(height: 10.0,),
          isShowMyLead ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Email : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                   Expanded(
                    flex: 2,
                     child: Text(
                      "abcdef45@gmail.com",
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
                        "+91 8200255249",
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
                      flex: 2,
                      child: Text(
                        "Company :  ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex:4,
                      child: Text(
                        "pp car",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "name",
                      style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                    )
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
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
                        "Jamnagar",
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
                      child: Text(
                        "Category : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Car Garage",
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
                        "Pending",
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
                      child: Text(
                        "Remark : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "-",
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
                      child: Text(
                        "State : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Gujrat",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    )
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