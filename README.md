# Step 2
## Page setup

There are few different ways to get routing setup.

I am going to use a mixture of named and un-named routes. For the home page, since we wont be passing data to it, I will be making it a named route.
See the [Navigate with named routes](https://flutter.dev/docs/cookbook/navigation/named-routes) recipe on the Flutter website to learn more.

Pull the `MyHomePage` Widget out of the `main.dart` file and place it into its own file in the `pages` folder.

Start changing some of the widget names

## Basic Routing

Create `helpers/routes.dart` file, set up home as a named route. When doing this take out the home property.
Add a `initNamedRoutes()` method that builds up the named routes.

Add an `appShell.dart` file in the `components` folder and move the stateless widget from `main.dart` to App Shell.
Look at the [App Shell Model](https://developers.google.com/web/fundamentals/architecture/app-shell) to learn more about app shell

Call the `initNamedRoutes()` function in the `appShell.dart` file. Then pass the result to the Material App and set the initial route to the home page.

Call the Stateless Widget from App Shell in `runApp()` in `main.dart`.