import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/widgets/app_drawer.dart';

import '../widgets/order_item.dart';
import '../providers/orders.dart' show Orders;

class OrderScreen extends StatelessWidget {

static const routName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
     appBar: AppBar(
       title: Text('Your Orders'),
     ),
     drawer: AppDrawer(),
     body: ListView.builder(
       itemCount: orderData.orders.length,
       itemBuilder: (ctx , i) =>OrderItem(orderData.orders[i]) ,
     ),
    );
  }
}