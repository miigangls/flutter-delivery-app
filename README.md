# Flutter Delivery App

Aplicación móvil de delivery (tipo Rappi/UberEats) para **Android e iOS**, desarrollada con **Flutter 2.2** en 2021. Consume el API REST del [Backend Delivery App](../Backend-Delivery-App-master) (Node.js + PostgreSQL) e integra Google Maps, notificaciones push y pagos con MercadoPago.

Proyecto desarrollado como parte del curso de Udemy *"App Delivery con NodeJS, SQL y Pasarelas de pago"*.

## Roles de la aplicación

La app maneja tres roles en una sola instalación:

- **Cliente** — explora el catálogo por categorías, arma su pedido, define la dirección de entrega en el mapa y paga con tarjeta (MercadoPago)
- **Restaurante** — crea categorías y productos con imágenes, recibe y despacha pedidos
- **Repartidor** — recibe pedidos disponibles en tiempo real (Socket.IO) y muestra la ruta de entrega en el mapa

## Tecnologías y paquetes

- **Flutter 2.2 / Dart 2.13**
- **http** — consumo del API REST propia
- **google_maps_flutter + geolocator + geocoding** — mapas, GPS y rutas de entrega
- **firebase_core + firebase_messaging** — notificaciones push
- **socket_io_client** — pedidos en tiempo real
- **MercadoPago** — tokenización de tarjetas y pagos (vía API propia)
- **shared_preferences** — sesión local
- **image_picker, fluttertoast, lottie, carousel_slider, modal_bottom_sheet**, entre otros

## Estructura

```
lib/
├── main.dart
└── src/
    ├── api/         # URL base del backend
    ├── models/      # User, Product, Order, Address, MercadoPago...
    ├── pages/       # Pantallas por rol: client, restaurant, delivery
    ├── provider/    # Comunicación HTTP/socket con el API
    ├── utils/       # Colores, snackbar, SharedPreferences
    └── widgets/     # Widgets reutilizables
```

## Requisitos

- Flutter SDK 2.2.x (`>=2.12.0 <3.0.0`)
- Backend Node.js corriendo (ver repo del backend)
- `google-services.json` (Android) con tu proyecto Firebase
- API key de Google Maps en `android/app/src/main/AndroidManifest.xml`
- Credenciales **TEST** de MercadoPago

## Ejecutar

```bash
flutter pub get
# Ajustar la IP del backend en lib/src/api/environment.dart
flutter run
```

## Capturas de funcionalidad

- Login y registro con roles
- Catálogo de productos con imágenes por categoría
- Carrito y creación de pedido
- Selección de dirección en Google Maps
- Pago con tarjeta (formulario, cuotas y estado del pago)
- Seguimiento del pedido en mapa en tiempo real
