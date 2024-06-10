import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/util/patch_util.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_detail_result_dto/invoice_detail_result_dto.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_dto/invoice_dto.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_save_dto/invoice_save_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/remote/invoice_api_service.dart';

class InvoiceApiServiceImpl extends InvoiceApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.invoicePath}";

  @override
  Future<Resource<List<InvoiceDto>>> getInvoices()async{
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
              Uri.parse(commonUrl),
              headers: headers,
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => InvoiceDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<InvoiceDetailResultDto>> getInvoiceDetail(int invoiceId)async{
    final url = "$commonUrl/details/$invoiceId";
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
            Uri.parse(url),
            headers: headers,
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body);
          final dto = InvoiceDetailResultDto.fromJson(decoded);
          return ResourceSuccess(dto);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<String>> saveInvoice(InvoiceSaveDto saveDto)async{
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.post(
            Uri.parse(commonUrl),
            headers: headers,
            body: jsonEncode(saveDto.toJson())
          );
        },
        onSuccessResponse: (response){
          return ResourceSuccess("Başarılı");
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}