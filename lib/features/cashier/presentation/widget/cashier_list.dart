import 'package:flutter/material.dart';

class CashierList extends StatelessWidget {
const CashierList({ super.key });

  @override
  Widget build(BuildContext context){
    return ListTile(
      onTap: ()=>{},
      leading:const Icon(Icons.receipt),
      title:const Text('V60 sd')
      
    );
  }
}