
# SwiftUI (fullscreen) modal on iPad
## UIKit + SwiftUI Hybrid approach (better version)

This solution was created by [Mojtaba Hosseini](https://stackoverflow.com/users/5623035/mojtaba-hosseini) in this stackoverflow post (https://stackoverflow.com/questions/58958858/present-a-new-view-in-swiftui/58970681#58970681) and all credit goes to him. 

One way to achieve a full screen modal presentation on iPad is to create a `EnvironmentKey` that holds the value of ` UIApplication.shared.windows.first?.rootViewController` and then access this from `SwiftUI` to call `UIKit` methods such as `present(_,animated:completion:)` or `dismiss()` on that `UIViewController`. 

A small extension on `UIViewController` is also needed to create a way for the `UIViewController` to present an arbitrary `SwiftUI` `View`.

By using this approach, one can easily leverage the existing presentation API's from `UIKit` while still having `View` instances made with `SwiftUI`.

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_hybrid.gif)

### PROS
* **Fulscreen** modal presentation on iPad.
* Ability to use `UIKit` presentation APIs. 

### CONS
* Not very intuitive
* Not full `SwiftUI`