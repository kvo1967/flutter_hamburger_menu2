import 'package:flutter/material.dart';
import 'package:hamburger_menu2/entities/manager_entity.dart';

class ManagerDetail extends StatefulWidget {
  final ManagerEntity manager;
  final bool swap;
  const ManagerDetail(Key? key, this.manager, this.swap) : super(key: key);

  @override
  State<ManagerDetail> createState() => _ManagerDetailState();
}

class _ManagerDetailState extends State<ManagerDetail> {
  bool swap = false;

  @override
  void initState() {
    swap = widget.swap;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: swap
              ? const Color.fromARGB(255, 105, 105, 47)
              : const Color.fromARGB(255, 44, 45, 47),
          boxShadow: [
            BoxShadow(
              color: swap
                  ? const Color.fromARGB(255, 232, 232, 185)
                  : const Color.fromARGB(255, 74, 73, 73),
              blurRadius: 10.0,
              spreadRadius: 5.0,
              offset: const Offset(5.0, 5.0),
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
                child: swap
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align all text to the left
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${(widget.manager.givenName)} ${(widget.manager.familyName).toUpperCase()}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const Divider(),
                          Text(
                            widget.manager.description,
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                          const Text(''),
                          const Text(''),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align all text to the left
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
                    icon: Icon(
                      swap
                          ? Icons.arrow_back_outlined
                          : Icons.info_outline_rounded,
                      color: Colors.white70,
                    ),
                    onPressed: () => setState(() {
                      swap = !swap;
                    }),
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
