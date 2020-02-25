# Step 1
## Page setup

There are few different ways to get routing setup.

I am going to use a mixture of named and un-named routes.

Pull the MyHomePage Widget out of the appShell and place it into its own file in the `pages` folder.

Start changing some strings here and there.

## Basic Routing

Create `helpers/routes.dart` file, set up home as a named route.

Call the `initNamedRoutes()` function in the `appShell.dart` file. Then pass the result to the Material App and set the initial route to the home page.