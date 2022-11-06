01 Splash Page on App Launch.md

# Feature:
 Splash Page on App Launch

## User Story:
As a user opens the app, a splash page will appear for a few seconds before the app loads. This splash page can be customized with your logo and a background image.

## Introduction: 
We prefer to display a Splash page every time the user launches the application to provide a smooth experience during app initialization. This gives us the added benefit of doing a diagnostic check in sub-systems (e.g. network connectivity) and make effective decisions that will affect the overall user experience throughout the app (e.g. 'no' connectivity => run ML model in offline mode).

## Definition of Done:
- App UI matches the design
- Functionality is implemented according to the acceptance criteria

## Acceptance Criteria:
|*Scenarios:*|*Failed (Ticket)*|*Passed (Date)*|
|*S1*| Ticket # | *YYYYMMDD* |
|*S2*| Ticket # | *YYYYMMDD* |
|*S3*| Ticket # | *YYYYMMDD* |
|*S4*| Ticket # | *YYYYMMDD* |
|*S5*| Ticket # | *YYYYMMDD* |
|*S6*| Ticket # | *YYYYMMDD* |

### Scenario 1: User launches application after downloading app
**GIVEN** User has downloaded the Burpee Battle Royale app
**AND** User has never logged in or launched the app before
**WHEN** the user launches the app
**THEN** Display the Splash page, while the app performs required background processes, initializes, and other system checks

### Scenario 2:First-user is taken to AuthReg page
**GIVEN** User can see Splash page as described in Scenario 1 (S1)
**WHEN** App has completed required background processes, initialized, and other system checks
**THEN** Fade the Splash page out
**AND** Take the user to the AuthReg page

### Scenario 3: Logged-in user launches app
**GIVEN** User has downloaded the Burpee Battle Royale app
**AND** User has already logged in and launched the app before
**AND** User's authentication token is still persisted in the device
**WHEN** User launches the app
**THEN** Display the Splash page, while the app performs required background processes, initializes, and other system checks

### Scenario 4: Logged-in user is taken to Main page
**GIVEN** User can see Splash page as described in Scenario 3 (S3)
**WHEN** App has completed required background processes, initialized, and other system checks
**THEN** Fade the Splash page out
**AND** Take the user to the Main page

### Scenario 5: Logged-out returning user launches app
**GIVEN** User has downloaded the Burpee Battle Royale app
**AND** User has already logged in and launched the app before
**AND** User's authentication token is no longer persisted in the device (e.g. user has logged out)
**WHEN** User launches the app
**THEN** Display the Splash page, while the app performs required background processes, initializes, and other system checks

### Scenario 6: Logged-out returning user is taken to AuthReg page
**GIVEN** User can see Splash page as described in Scenario 5 (S5)
**WHEN** App has completed required background processes, initialized, and other system checks
**THEN** Fade the Splash page
**AND** Take the user to the AuthReg page

