import 'package:flutter_delivery_udemy/src/models/mercado_pago_credentials.dart';

class Environment {

  static const String API_DELIVERY = "192.168.1.11:3000";
  static const String API_KEY_MAPS = "TU_API_KEY";

  static MercadoPagoCredentials mercadoPagoCredentials = MercadoPagoCredentials(
      publicKey: 'TEST-TU_PUBLIC_KEY',
      accessToken: 'TEST-TU_ACCESS_TOKEN'
  );

}