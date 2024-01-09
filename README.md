# Flutter-E-commerce-Application -> FirebaseException ..... FirebaseFirestoreException

- Add Assets: `Font` | `Images` | `Packages`
- Add Route
- Add Utilities: `Colors` | `Assets` | `MediaQuery` | `Styles`
- Add Theme
- Add shareable_components `Btns` | `Forms_components` | `AppBar` | `NavBar` | `Cards`
- Add UI: `Login Page` | `SignUp Page` | `Forget password page` | `Main page` | `Profile page` | `My Order page` | `Order Details page` | `Geneal updates` | `Shipping Address Screen` | `Add Shipping Address Screen` | `Setting Screen` | `Password Change` | `Payment Methods Screen` | `Home Screen` | `Category Screen` | `Category Details Screen` | `Product Details Screen` | `Add Bag Screen with inner check out, Success ` | `Add Favorite Screen` |

import 'package:cloud_firestore/cloud_firestore.dart';

void handleFirestoreException(FirebaseFirestoreException exception) {
  switch (exception.code) {
    case FirebaseFirestoreErrorCode.cancelled:
      print("Firestore operation cancelled");
      // Additional code for cancelled operation
      break;
    case FirebaseFirestoreErrorCode.unknown:
      print("Unknown error occurred");
      // Additional code for unknown error
      break;
    case FirebaseFirestoreErrorCode.invalidArgument:
      print("Invalid argument provided");
      // Additional code for invalid argument
      break;
    // Add more cases for other error codes as needed
    default:
      print("Unhandled error code: ${exception.code}");
      // Additional code for unhandled error codes
      break;
  }
}

void main() {
  try {
    // Firestore operation that might throw an exception
  } on FirebaseFirestoreException catch (e) {
    handleFirestoreException(e);
  } catch (e) {
    print("An unexpected error occurred: $e");
    // Handle other types of exceptions
  }
}
