# Flutter Boilerplate Using Getx, Dio, and GetStorage
## This Boilerplate is still under development and README is not yet.

## Getting Started


## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/zubairehman/flutter-boilerplate-project.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

This boilerplate uses [clean-dart](https://github.com/aghyad97/clean-dart-cli) cli tool to generate different folder and files following clean architecture. 
## How to use?

First thing that you need to do is activate the clean-dart-cli, for this run the command bellow in your terminal

```dart
$ pub global activate clean_dart_cli
```

#### To generate new usecases
```
clean-dart gen usecase /domain/usecases RegisterUser
```

#### To generate new entity 
```
clean-dart gen entity /domain/entities User
```

#### To generate new model 
```
clean-dart gen model /data/models User
```

#### To generate new repository 
```
clean-dart gen repository /domain/repositories /data/repositories User
```