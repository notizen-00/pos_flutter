import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      color: AppPallete.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Ringkasan Order',
            style: AppPallete.textHeadline3,
          ),
          Expanded(
              child: ListView(
                  padding: const EdgeInsets.all(0).copyWith(
                    top: 50,
                  ),
                  children: <Widget>[
                DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.black26),
                  child: ListTile(
                      focusColor: Colors.white,
                      selectedColor: Colors.white,
                      leading: const Icon(Icons.coffee),
                      selected: true,
                      visualDensity: VisualDensity.defaultDensityForPlatform(
                          defaultTargetPlatform),
                      title: const Text(
                        'V60',
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: const Text('Rp. 13.000',
                          style: TextStyle(fontSize: 10)),
                      trailing:Row(
                        mainAxisSize: MainAxisSize.min,
                        children:[ 
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Text(
                              'Qty',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () => { },
                            )
                            ),
                        ]
                      )),
                ),
                 DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.black26),
                  child: ListTile(
                      focusColor: Colors.white,
                      selectedColor: Colors.white,
                      leading: const Icon(Icons.coffee),
                      selected: true,
                      visualDensity: VisualDensity.defaultDensityForPlatform(
                          defaultTargetPlatform),
                      title: const Text(
                        'V60',
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: const Text('Rp. 13.000',
                          style: TextStyle(fontSize: 10)),
                      trailing:Row(
                        mainAxisSize: MainAxisSize.min,
                        children:[ 
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Text(
                              'Qty',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () => { },
                            )
                            ),
                        ]
                      )),
                ),
                 DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.black26),
                  child: ListTile(
                      focusColor: Colors.white,
                      selectedColor: Colors.white,
                      leading: const Icon(Icons.coffee),
                      selected: true,
                      visualDensity: VisualDensity.defaultDensityForPlatform(
                          defaultTargetPlatform),
                      title: const Text(
                        'V60',
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: const Text('Rp. 13.000',
                          style: TextStyle(fontSize: 10)),
                      trailing:Row(
                        mainAxisSize: MainAxisSize.min,
                        children:[ 
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Text(
                              'Qty',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () => { },
                            )
                            ),
                        ]
                      )),
                ),
            
              ]
              )
              )
          // Add your cashier details widgets here
        ],
      ),
    );
  }
}
