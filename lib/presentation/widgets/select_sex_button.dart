import 'package:flutter/material.dart';

class SelectSexButton extends StatefulWidget {
  const SelectSexButton({Key? key}) : super(key: key);

  @override
  State<SelectSexButton> createState() => _SelectSexButtonState();
}

class _SelectSexButtonState extends State<SelectSexButton> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Sex:',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 80,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xFFF1F1F1), borderRadius: BorderRadius.circular(40)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 62,
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.white,
                      indicatorColor: Color(0x292D32),
                      indicatorWeight: 2,
                      indicator: BoxDecoration(color: Color(0xFF292D32), borderRadius: BorderRadius.circular(40)),
                      tabs: const [
                        Tab(
                          child: Text(
                            'Male',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Female',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
