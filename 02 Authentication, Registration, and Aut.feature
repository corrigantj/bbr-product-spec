02 Authentication, Registration, and Authorization

# Feature:
Authentication, Registration, and Authorization

## User Story:
As a user, I want to be able to register for an account so that I can use the application and have my score saved.

## Introduction:
We are taking Federated Login approach to speed the registration and login process. This makes authentication and re-login much more straight-forward technically and from a user experience perspective.

## Definition of Done:
- App UI matches comps (attached) - @Design and/or @Product to sign off on design.
- Functionality performs according acceptance criteria below.

## Acceptance Criteria:
|*Scenarios:* | *Fail (Ticket)* | *Pass (Date)* |
|*S1*| Ticket # | *MM/DD/YY* |
|*S2*| Ticket # | *MM/DD/YY* |
|*S3*| Ticket # | *MM/DD/YY* |
|*S4*| Ticket # | *MM/DD/YY* |

### Scenario 1: New User creates an account
**GIVEN:** User is on the AuthReg page
**AND:** User has not created an account
**WHEN:** User taps on an Authentication provider (e.g. Google, Facebook, Twitter, etc.)
**THEN:** Take the user through the selected provider's authentication process
**AND:** Create a new account for the user
**AND:** Link Authenticated provider to the newly created account
**AND:** Log the user into the app
**AND:** Persist the user's authentication until they log out manually
**AND:** Take the user to the Main page

### Scenario 2: Logged-out Returning User logs in - same Auth Provider
**GIVEN:** User is on the AuthReg page
**AND:** User has created an account
**WHEN:** User taps on an Authentication provider (e.g. Google, Facebook, Twitter, etc.)
**THEN:** Take the user through the selected provider's authentication process
**AND:** Log the user into the app
**AND:** Persist the user's authentication until they log out manually
**AND:** Take the user to the Main page

### Scenario 3: Logged-out Returning User logs in - different Auth Provider
**GIVEN:** User is on the AuthReg page
**AND:** User has created an account
**WHEN:** User taps on an Authentication provider (e.g. Google, Facebook, Twitter, etc.)
**AND:** The selected provider is different than the one used to create the account
**THEN:** Take the user through the selected provider's authentication process
**AND:** Log the user into the app
**AND:** Link Authenticated provider to existing User account
**AND:** Persist the user's authentication until they log out manually
**AND:** Take the user to the Main page

### Scenario 4: Logged-in User
**GIVEN:** User is on the Splash page
**AND:** User has already created an account
*AND:** User's authentication is persisted from their last session (e.g. they did not log out)
**WHEN:** App completes its User Authenticaton check
**THEN:** Log the user into the app
**AND:** DO NOT display the AuthReg page
**AND:** Continue to persist the user's authentication until they log out manually
**AND:** Take the user to the Main page

## Notes:
- This feature is dependent on the following features:
  - Splash Page
  - Main Page
  - User Profile Page

## Attachments:
- [AuthReg Page](https://trello.com/1/cards/5b5d6832c230aa8824f4f098/attachments/5b5d867cfc365076bdf94aee/download/01_AuthReg.png)

## Links:
- [Firebase Authentication](https://firebase.google.com/docs/auth/)
- [Firebase Authentication - Android](https://firebase.google.com/docs/auth/android/firebaseui)
- [Firebase Authentication - iOS](https://firebase.google.com/docs/auth/ios/firebaseui)
- [Firebase Authentication - Web](https://firebase.google.com/docs/auth/web/firebaseui)
- [Firebase Authentication - Auth State Persistence](https://firebase.google.com/docs/auth/web/auth-state-persistence)
- [Firebase Authentication - iOS Account Linking](https://firebase.google.com/docs/auth/ios/account-linking)