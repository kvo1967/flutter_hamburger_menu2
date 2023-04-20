import 'package:flutter/material.dart';

import '../../entities/manager_entity.dart';

class ManagerSummary extends StatefulWidget {
   final ManagerEntity manager;
  const ManagerSummary(Key? key, this.manager) : super(key: key);

  @override
  State<ManagerSummary> createState() => _ManagerSummaryState();
}

class _ManagerSummaryState extends State<ManagerSummary> {
  @override
  Widget build(BuildContext context) {  
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 223, 205, 10),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 232, 232, 185),
              blurRadius: 10.0,
              spreadRadius: 5.0,
              offset: Offset(5.0, 5.0),
            )
          ]),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    //size: const Size.(20),
                    child: Image.asset(widget.manager.portraitPath,
                        width: 65, height: 100, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 10,
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.white70),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align all text to the left
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        '${(widget.manager.givenName)} ${(widget.manager.familyName).toUpperCase()}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(widget.manager.seasons),
                    const Divider(),
                    Text(widget.manager.honours1),
                    Text(widget.manager.honours2),

                    // // Row(
                    // //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // //   children: const [
                    // //      Text(' manager.honours2' ),
                    // //      Icon(Icons.info_outline),
                    // //   ],
                    // // ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                //decoration: const BoxDecoration(color: Colors.blueGrey),
                children: [
                  const Divider(height: 70),
                  IconButton(
                    icon:const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white70,
                    ),
                    onPressed: () => debugPrint('Icon Pressed'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}