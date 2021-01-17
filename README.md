# iz.TourGuide

This app uses preinstalled data through the use of Core Data - that lets the user scroll through a list of locations, drill down into a location and jot down notes.

## App Architecture

- The home viewController is initially a tableView that the user can scroll through.
- When the user selects one of the places it opens up the placeViewController were they can get more details about that location.
- Theres a photo at the top of the viewController with a segmented controller below it, that leads to 3 other viewControllers.
- When the user selects any of the options it shows a preview in the child container view on the home page.
- The infoViewController is the first item in the segment controller displaying information about the place.
- The mapViewController is the second item in the segment controller displaying the exact loaction via maps.
- The notesViewController is the third item in the segment controller displaying a note taking screen.
- Throughout this app the use of Core Data is in use to display and hold the preinstalled information for the user to enjoy.
