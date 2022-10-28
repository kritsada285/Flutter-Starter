#### The architecture
Elements are injected from top to bottom. 
1. The first elements added in the widget tree are mappers, particularly useful to convert data coming from data layers to something that should be used in the presentation layer.
2. The second elements are providers: here you can inject services that manipulate data or access to it like REST clients or DAOs interfaces.
3. The third layer is used to inject the repositories that access to the data layer using an abstraction layer.
4. The last layer is used to inject the logic: Pine relies on BLoC as a state manager, that's why we'll inject global scoped BLoCs.

Each element might rely on the top level ones and are generally accessed from the bottom level ones: for instance a repository may need to access to a REST client service to gather data, save it into a database, and the return it to a BLoC.
To access top-level items, you can use the read and watch functions exposed by Provider.

<img src="https://raw.githubusercontent.com/MyLittleSuite/pine/master/assets/architecture.png" alt="Pine logo" border="0">

#### The interactions
<img src="https://raw.githubusercontent.com/MyLittleSuite/pine/master/assets/interaction.png" alt="Pine logo" border="0">


### Libraries & Tools Used

* [Dio](https://github.com/flutterchina/dio)
* [Retrofit For Dart](https://github.com/trevorwang/retrofit.dart/)
* [Json Serialization](https://github.com/dart-lang/json_serializable)
* [Dependency Injection](https://github.com/fluttercommunity/get_it)
* [Flutter BLoC](https://pub.dev/packages/flutter_bloc)
* [Provider](https://pub.dev/packages/provider)
* [Dartz](https://pub.dev/packages/dartz)
* [Pine](https://github.com/MyLittleSuite/pine)
---


### Project Folder Stucture

```
lib/
|- blocs/
|- di/
|- models/
|- pages/
|- repositories/
|- services/
|- widgets/
|- app.dart
|- main.dart
```

> This repository took inspiration from [`pine`](https://github.com/MyLittleSuite/pine)
