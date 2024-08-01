# Flutter template repository

This repository contains a flutter project with a sample feature to showcase the BloC architecture and
a basic CI setup to get started with code analysis, unit test running and apps generation and distribution.

This readme contains just a small introduction to the project and the first steps to getting started with it.
If this you want to know more details, please check the [blogpost](https://medium.com/@rafaelmiguel.ortega/flutter-template-repository-ca6804c70b4d) attached to it with an extended explanation. 

## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## What this template contains

Apart from the flutter code, you can find two different workflows, both using Github actions.

One that will be executed on Pull Requests and will be slightly different to the one executed on pushes to
the main branch. 

## Using this template

Here are the first steps to get started if you want to use this template as base for your own flutter app:

- Change package name
- Create Firebase app [instructions](https://firebase.google.com/docs/flutter/setup)
- Add secrets to your Github repository [instructions](https://github.com/marketplace/actions/firebase-app-distribution):
    - STORE_PASSWORD
    - KEY_ALIAS
    - KEY_PASSWORD
    - FIREBASE_ANDROID_APP_ID
    - FIREBASE_TOKEN
    - SERVICE_ACCOUNT_JSON. Used to upload the Android app to Google Play. Please check [this](https://developers.google.com/android-publisher/getting_started#:~:text=Google%20Play%20Console.-,Go%20to%20the%20API%20access%20page%20on%20the%20Google%20Play,Google%20Play%20Console%2C%20click%20Done.) for instructions.
- Add testers group

## Next steps
- After setting up an iOS developer account, verify that iOS ipa file is properly built and uploaded to Firebase.
