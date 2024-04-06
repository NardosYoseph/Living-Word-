import 'package:living_word/app/apiHandler/api_handler.dart';
import 'package:living_word/app/models/payment/paymentModel.dart';

class PaymentService{
  Future<Payment> storePayment(Payment payment) async{
final  response= await ApiHandler().post('/payment/storePayment', payment.toJson());
if(response){
return response;}
else{
  throw Exception('failed to store payment');
}
  }
}