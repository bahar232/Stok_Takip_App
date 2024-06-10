

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_text_field.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_bloc.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_state.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/sections/select_category.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/add_invoice_page.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/sections/select_category.dart';

extension AddInvoicePageContentExt on AddInvoicePage{

  Widget getContent(){
    return FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectCustomer(),
          getSelectSalesPerson()
        ],
      ),
    );
  }

}