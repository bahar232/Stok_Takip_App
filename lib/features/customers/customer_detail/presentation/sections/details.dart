

import 'package:flutter/material.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/bloc/customer_detail_state.dart';
import 'package:quantumapp/core/presentation/components/detail_row_scrollable.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/customer_detail_page.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';

extension CustomerDetailPageDetailsExt on CustomerDetailPage{

  List<DetailRowScrollable> getCustomerDetailRows(Customer customer){
    return [
      DetailRowScrollable(
        title: "Code",
        content: customer.code,
        color: Colors.red,
      ),
      DetailRowScrollable(
          title: "Name",
          content: customer.name
      ),
      DetailRowScrollable(
          title: "Tck No",
          content: customer.tckNo
      ),
      DetailRowScrollable(
          title: "Related",
          content: customer.related
      ),
      DetailRowScrollable(
          title: "Account Type",
          content: customer.accountType.title
      ),
      DetailRowScrollable(
          title: "Tax Office",
          content: customer.taxOffice
      ),
      DetailRowScrollable(
          title: "Tax No",
          content: customer.taxNo
      ),
      DetailRowScrollable(
          title: "Auhtorized Name",
          content: customer.authorizedName
      ),
      DetailRowScrollable(
          title: "Authorized Surname",
          content: customer.authorizedSurname
      ),
      DetailRowScrollable(
          title: "Currency Unit",
          content: customer.currencyUnitId.toString()
      ),
      DetailRowScrollable(
          title: "Country",
          content: customer.country
      ),
      DetailRowScrollable(
          title: "City",
          content: customer.city
      ),
      DetailRowScrollable(
          title: "District",
          content: customer.district
      ),
      DetailRowScrollable(
          title: "Address",
          content: customer.address
      ),
    ];
  }
}