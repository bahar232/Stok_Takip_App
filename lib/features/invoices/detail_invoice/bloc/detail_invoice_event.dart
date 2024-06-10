

abstract class IDetailInvoiceEvent{}

class DetailInvoiceEventLoadData extends IDetailInvoiceEvent{
  final int invoiceId;
  DetailInvoiceEventLoadData({required this.invoiceId});
}

class DetailInvoiceEventClearMessage extends IDetailInvoiceEvent{}