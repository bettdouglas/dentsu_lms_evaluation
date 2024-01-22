## Dentsu LMS

## Setup Instructions
This project is build using Flutter and Dart. 
It contains a server which provides the APIs for data storage and an app which interacts with the server. 

## Local Development Setup.

### Step 1 - Install Flutter and Dart. 
Follow the instructions on https://docs.flutter.dev/get-started/install and choose your target platform. 

Make sure you have dart and Flutter installed before proceeding to the next steps.
This means when you run `flutter doctor` on the command line, everything should be checked. 

Like the result of the link below. https://docs.flutter.dev/get-started/install/macos/mobile-android#run-flutter-doctor


Confirm that you're able to run dart and flutter programs on the command line. 
`dart --version`
`flutter --version`

### Step 2 - Start API server
By default this program connects to an API running on a VPS server. If you want to run the project locally, you need to change the server from the remote host to the localhost. (0.0.0.0) on port 8181. You can do this by going to file `app/lib/app/view/app.dart` and in line 34, change the IP address to localhost(0.0.0.0)

#### Create a file called .env inside the server/ with the following contents. 
```
SECRET_KEY=mV6QktnBTA6OLsj0WlEl6o9CW7MNbZnp
```

Once created, you can start the server by running the following commands.
```
cd server/
dart pub get
dart bin/server.dart
```

You should get a message that says
```
Server running at InternetAddress('0.0.0.0', IPv4) on 8181
``` 


After the server is created, accounts with details defined below are created.

```
name: dentsu-admin
email: admin@dentsu.com
role: Admin
password: Dentsu1234
```
```
name: austine
email: austine.maina@dentsu.com
role: Designer
password: AustinM
```
```
name: jeffrey
email: Jeffrey.Quntai@dentsu.com
role: Product Lead
password: JeffreyQ
```
```
name: charles
email: charles.karuri@dentsu.com
role: Product Lead
password: CharlesK
```

```
name: moses
email: moses.mativo@dentsu.com
role: Devops
password: MosesM
```

```
name: david
email: david.odhiambo@dentsu.com
role: Devops
password: DavidO
```

#### Step 3 - Start Flutter Client
You need to tell the Android Debugging Interface (adb) to reverse the Flutter Clients localhost to the dart server running on port 8181.
```
adb reverse tcp:8181 tcp:8181
```

Then you can run the Flutter app in debug mode and login with the details defined above. 
```
cd app/
flutter pub get
flutter run
```