# Scanner_Sources

## CardIO plugin for flutter

A Flutter plugin for iOS and Android for scanning credit cards using the camera. 

### Example

Show example folder
``` dart
  Map<String, dynamic> details = await FlutterCardIo.scanCard({
    "requireExpiry": true,
    "scanExpiry": true,
    "requireCVV": true,
    "requirePostalCode": true,
    "restrictPostalCodeToNumericOnly": true,
    "requireCardHolderName": true,
    "scanInstructions": "Hola! Fit the card within the box",
  });
```
### Response

```dart
{
    "cardholderName": "John doe",
    "cardNumber": "1234 5678 9876 1236",
    "redactedCardNumber": "**** **** **** 1236",
    "expiryMonth": 12,
    "expiryYear": 2022,
    "cvv": 123,
    "postalCode": "93748"
}
```
