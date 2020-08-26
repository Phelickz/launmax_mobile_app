import 'package:flutter/material.dart';

class Order {
  int orderNo;
  List<String> items;
  int quantity;
  DateTime dateTime;
  int totalCost;
  String deliveryAddress;
  String deliveryPersonel;
  String companyName;
  int phoneNumber;
  String status;
  Color statusColor;
  IconData statusIcon;
  bool delivered = false;

  Order({
    this.orderNo,
    this.items,
    this.quantity,
    this.dateTime,
    this.totalCost,
    this.deliveryAddress,
    this.deliveryPersonel,
    this.companyName,
    this.phoneNumber,
    this.status,
    this.statusColor,
    this.statusIcon, 
    this.delivered,
  });
}

List<Order> order = [
  Order(
      companyName: 'So-white laundry',
      deliveryAddress: 'Agege, Lagos',
      deliveryPersonel:'Buhari Muhammed',
      items: ['Agbada','jugoola', 'gown','Buba and Sokoto', 'Suit'],
      orderNo: 1947034,
      phoneNumber: 2348085657265,
      quantity: 3,
      totalCost: 1000,
      dateTime: DateTime.now(),
      status: 'ON OUR WAY',
      statusColor: Colors.red[300],
      statusIcon: Icons.access_time,
      delivered:false,
      ),
      

  Order(
      companyName: 'So-white laundry',
      deliveryAddress: 'Agege, Lagos',
      deliveryPersonel:'Buhari Muhammed',
      items: ['Agbada','Buba and Sokoto', 'Suit'],
      orderNo: 1947034,
      phoneNumber: 2348085657265,
      quantity: 3,
      totalCost: 1000,
      dateTime: DateTime.now(),
      status: 'IN PROGRESS',
      statusColor: Colors.orange[400],
      statusIcon: Icons.access_time,
      delivered:false,
      ),

  Order(
      companyName: 'So-white laundry',
      deliveryAddress: 'Agege, Lagos',
      deliveryPersonel:'Buhari Muhammed',
      items: ['Agbada','Buba and Sokoto', 'Suit'],
      orderNo: 1947034,
      phoneNumber: 2348085657265,
      quantity: 3,
      totalCost: 1000,
      dateTime: DateTime.now().subtract(new Duration(days:30)),
      status: 'DELIVERED',
      statusColor: Colors.green[300],
      statusIcon: Icons.check,
      delivered:true,
      ),
];
