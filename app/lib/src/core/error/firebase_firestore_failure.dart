import 'package:app/src/core/error/i_failures.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreFailure extends IFailure {
  FirebaseFirestoreFailure(super.errMessage);

  factory FirebaseFirestoreFailure.fromFirebaseFirestore(FirebaseException ex) {
    switch (ex.code) {
      case "unknown":
        return FirebaseFirestoreFailure("	An unknown error occurred.");
      case 'object-not-found':
        return FirebaseFirestoreFailure(
            'No object exists at the desired reference.');

      case "bucket-not-found":
        return FirebaseFirestoreFailure("No bucket is configured for Cloud Storage");

      case "project-not-found":
        return FirebaseFirestoreFailure("No project is configured for Cloud Storage");

      case "quota-exceeded":
        return FirebaseFirestoreFailure("Quota on your Cloud Storage bucket has been exceeded. ");

      case "unauthenticated":
        return FirebaseFirestoreFailure("User is unauthenticated, please authenticate and try again.");

      case "unauthorized":
        return FirebaseFirestoreFailure("User is not authorized to perform the desired action, check your security rules to ensure they are correct.");

      case "retry-limit-exceeded":
        return FirebaseFirestoreFailure("The maximum time limit on an operation (upload, download, delete, etc.) has been excceded. Try uploading again.");

        case "invalid-checksum":
        return FirebaseFirestoreFailure("File on the client does not match the checksum of the file received by the server. Try uploading again.");

        case "canceled":
        return FirebaseFirestoreFailure("User canceled the operation.");

        case "invalid-event-name":
        return FirebaseFirestoreFailure("Invalid event name provided. Must be one of [running, progress, pause]");

        case "invalid-url":
        return FirebaseFirestoreFailure("Invalid URL provided to refFromURL(). ");

        case "invalid-argument":
        return FirebaseFirestoreFailure("The argument passed to put()ز");

        case "no-default-bucket":
        return FirebaseFirestoreFailure("No bucket has been set in your config's storageBucket property.");

        case "cannot-slice-blob":
        return FirebaseFirestoreFailure("Commonly occurs when the local file has changed (deleted, saved again, etc.). Try uploading again after verifying that the file hasn't changed.");

        case "server-file-wrong-size":
        return FirebaseFirestoreFailure("File on the client does not match the size of the file recieved by the server. Try uploading again.");

      default:
        return FirebaseFirestoreFailure('An unexpected error occurred.');
    }
  }
}
