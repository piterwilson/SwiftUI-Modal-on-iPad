
# SwiftUI (fullscreen) modal on iPad
## UIKit + SwiftUI Hybrid approach

One way to achieve a full screen modal presentation on iPad is to wrap each `View` instance in a `UIHostController` and then use `ObservableObject` for the communication between `SwiftUI` and `UIKit`.

By using this approach, one can easily leverage the existing presentation API's from `UIKit` while still having `View` instances made with `SwiftUI`.

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/hybrid.png)

### PROS
* **Fulscreen** modal presentation on iPad.
* Ability to use `UIKit` presentation APIs. Storyboards, Nibs, Custom transitions etc. 

### CONS
* Too much Boilerplate code.