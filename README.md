# Flutter UI Class - Firebase Integration

This Flutter app demonstrates Firebase Firestore integration for task management with real-time updates.

## Firebase Setup Instructions

### 1. Create Firebase Project
1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Create a project" or "Add project"
3. Enter your project name and follow the setup wizard
4. Enable Google Analytics if desired

### 2. Enable Firestore Database
1. In your Firebase project console, go to "Firestore Database"
2. Click "Create database"
3. Choose "Start in test mode" for development
4. Select a location for your database

### 3. Update Firestore Rules
In the Firebase console, go to Firestore Database > Rules and update them to:

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if true;
    }
  }
}
```

### 4. Connect Flutter App to Firebase
1. In Firebase console, go to Project settings (gear icon)
2. Scroll down to "Your apps" section
3. Click "Add app" and select Flutter icon
4. Register your app with package name (from pubspec.yaml)
5. Download `google-services.json` (for Android) and place it in `android/app/`
6. Download `GoogleService-Info.plist` (for iOS) and place it in `ios/Runner/`
7. Follow the remaining setup steps in Firebase console

### 5. Run the App
```bash
flutter run
```

## Features
- Add new tasks with title and description
- Delete tasks
- Real-time task list updates using StreamBuilder
- Clean UI with Material Design

## Dependencies Added
- `firebase_core: ^3.0.0`
- `cloud_firestore: ^5.0.0`

