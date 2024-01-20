# Smart Station Mobile Application

## Contributers

* [Ebrahim Elnemr](https://github.com/ebrahim969)
* [Mustafa Magdy](https://github.com/mustfa-magdy-mohamed-nasr)

## Dependencies

### Main Dependencies

* [flutter_bloc](https://pub.dev/packages/flutter_bloc) : As a state management
* [flutter_localizations](https://pub.dev/packages/flutter_localizations) : For change app language
* [go_router](https://pub.dev/packages/go_router) : To routs between views
* [get_it](https://pub.dev/packages/get_it) : As a service locator to accessing service objects like REST API clients
* [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter) : For awesome icons
* [flutter_svg](https://pub.dev/packages/flutter_svg) : To deal with svg images

## Architecture Pattern

### MVVM

## Folders Structure

### I devided the progect into tow folders: 
#### core : it contains all constants and helpers and general widgets
#### features : It contains all the features of the project, and every feature it contains tow folders => data and presentation that's a layers, data layer has a models, presentaion layer has a view models (it contains blocs and cubits to handle states and business logic) and views (it contains all of ui)


## Local Deployment

Clone the repository
```shell
gh repo clone Auto-Flags/Smart-Station
```
