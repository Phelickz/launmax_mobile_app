import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:launmax_app/UI/screens/order/order_detail.dart';

import 'package:launmax_app/models/orders.dart';

import '../../../styles.dart';

class TrackOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context)),
        title: Text(
          'Track Order',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: order.length,
          itemBuilder: (BuildContext context, int index) {
            var newDate = DateFormat("MMMM d, yyyy HH:mm a")
                .format(order[index].dateTime);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => OrderDetail(order: order[index]))),
                child: Card(
                  elevation: 3.9,
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              order[index].statusIcon,
                              color: order[index].statusColor,
                            ),
                            Text(order[index].status,
                                style:
                                    TextStyle(color: order[index].statusColor,fontSize: 13)),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.06),
                            Text("$newDate"),
                          ],
                        )),
                    Divider(
                      height: .2,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.1),
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Order No̲${order[index].orderNo}",
                              style: TextStyle(
                                  fontSize: 22.0, color: AppColor.primaryColor),
                            ),
                            SizedBox(height:5.2 ),
                            Row(
                              children: [
                                Text('item: ',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.grey[500])),
                                Expanded(
                                  child: Text(
                                      '${order[index].items.reduce((v, e) => v + ',' + e)}',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: AppColor.primaryColor[600])),
                                ),
                              ],
                            ),
                          ]),
                    ),
                    Divider(
                      height: .2,
                    ),
                    Container(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VALUE OF ITEMS ",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[500]),
                          ),
                          Text(
                            "NGN ${order[index].totalCost}",
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "QUANTITY ",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[500]),
                          ),
                          Text(
                            "${order[index].quantity}",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            );
          }),
    );
  }
}
