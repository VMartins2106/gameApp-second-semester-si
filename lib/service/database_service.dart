import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_app/shared/constants.dart';

class DatabaseService {

  final String? uid;
  DatabaseService({this.uid});

  // reference for our collections
  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");

  // getting user data
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot = await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }

  // saving user data
  Future savingUserData(String fullName, String email, String phone) async {
    return await userCollection.doc(uid).set({
      "fullName": fullName,
      "email": email,
      "phone": phone,
      "uid": uid,
    });
  }
  // updating user data JUST NAME
  Future updatingUserDataN(String fullName) async {
    return await userCollection.doc(uid).update({
      "fullName": fullName,
    });
  }
  // updating user data JUST PHONE
  Future updatingUserDataP(String phone) async {
    return await userCollection.doc(uid).update({
      "phone": phone,
    });
  }
  // updating user data NAME AND PHONE
  Future updatingUserDataNP(String fullName, String phone) async {
    return await userCollection.doc(uid).update({
      "fullName": fullName,
      "phone": phone,
    });
  }

}