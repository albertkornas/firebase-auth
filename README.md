# firebase-auth
Playing with Firebase Auth on a simple login page built with SwiftUI

This is a simple project I created for the purpose of integrating Firebase to create an email/password login page for users. The advantage of using Firebase here is to prove how quick it is to implement compared to building my own custom backend. This would be very useful for an MVP. In this project, I used Swift Package Manager for the Firebase dependency.

I also integrated GitHub actions as a CI/CD pipeline. The pipeline runs three different unit tests upon PR and Push:
* Assert that email field is blank upon load
* Positive test that uses Firebase to attempt to log in with an existing user account
* Negative test that that uses Firebase to attempt to log in with an existing user account
