import 'package:living_word/app/models/payment/paymentModel.dart';
import 'package:living_word/app/services/paymentService/chapaPaymentServcie.dart';
import 'package:get/get.dart';


class ChapaPaymentController extends GetxController{
final ChapaPaymentService _paymentService= ChapaPaymentService();
String? paymentUrl;
Future<dynamic> makePayment(Payment payment) async {
   try {
       paymentUrl = await _paymentService.makePayment(payment);
      print(paymentUrl);
     return paymentUrl;
    } catch (error) {
      print('Error making payment: $error');
      return null;
    }
  }
}