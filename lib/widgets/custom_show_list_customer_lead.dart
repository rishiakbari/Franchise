import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../utils/colorz.dart';

class CustomerShowListLead extends StatefulWidget {
  const CustomerShowListLead({super.key});

  @override
  State<CustomerShowListLead> createState() => _CustomerShowListLeadState();
}

class _CustomerShowListLeadState extends State<CustomerShowListLead> {
  bool isShowLead = false;
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
                    isShowLead = !isShowLead;
                  });
                }, 
                icon: !isShowLead
                ? const Icon(TablerIcons.chevron_down,color: Colorz.main,)
                :const Icon(TablerIcons.chevron_up,color: Colorz.main,)
              ),
            ],
          ),
          // SizedBox(height: 10.0,),
          isShowLead ? Padding(
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
                        "Date : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "8/10/2023 ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "15:21:26",
                        style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colorz.textSecondary),
                      ),
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
                        " - ",
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
                        "Call Done",
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
                        "Lead From : ",
                        style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Admin",
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