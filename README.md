# Custom angular project creation
I made this script to make it easier to create angular projects. Not using batch in daily life, so feel free to make pullrequests. Works fine on Windows, have no idea if you can run this on macOS or Linux. It's not a ready-to-use product, it's more like a customizable tool for developers.

## Requirements
- @angular/cli (install via `npm intsall -g @angular/cli`)
- put ang.bat file into Windows/System32 folder (or any other path from PATH variable) to make it accessible globally
- put eslintrc.json file wherever you want. You can also change it if you want. Just keep in mind that there might be some additional dependancies to make it work
- change path to eslintrc.json inside the .bat file

## Using
The idea is to use one simple command instead of running the same commands over and over again. I always use scss and skip the tests. You can change this default preferences in the .bat file. Also don't like using default tslint and karma, so I migrated to eslint and removed karma.

Run command `ang.bat [%1 [%2 [%3]]]` inside a folder you want your project to be created.
Where parameters %1, %2 and %3 are:

|    | meaning      | default value |
|----|--------------|---------------|
| %1 | project name | site          |
| %2 | styles       | scss          |
| %3 | skip-tests   | true          |

Basically, I use just `ang.bat %name%` and get a modern angular project with scss, strict typing, routing and eslint. 
If you want to use sass, you should call `ang.bat %name% sass` and `ang.bat %name% scss false` for not skipping tests (yes, you should pass styles too, even if you don't change the deafult value).

## Contribution
Contribution is appreciated since luck of batch knowledge. Would be nice to embody the following features:
- using of `--styles`, `--skip-tests` instead of %2, %3 enumeration
- jest tests setup
