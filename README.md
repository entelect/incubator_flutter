# Step 1
## Configuration setup

Rename `main.dart` to `appShell.dart` and move the file to `components/`

Then create a new files for the different environments
 - prod.dart _Production_
 - staging.dart _Staging_
 - main.dart _Development_

Create `env/` folder
Create `EnvironmentSettings` class, this will hold all of the app's settings that are different for each environment.
Create an InheritedWidget and call it `EnvConfig`. _An InheritedWidget is a great way to pass data to Widget children without passing the data to each child._

