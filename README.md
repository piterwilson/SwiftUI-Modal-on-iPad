# SwiftUI (fullscreen) modal on iPad

## What is Modality?

Apple describes "Modality" as:

> Modality is a design technique that presents content in a temporary mode that’s separate from the user's previous current context and requires an explicit action to exit. Presenting content modally can:
> * Help people focus on a self-contained task or set of closely related options
> * Ensure that people receive and, if necessary, act on critical information



Even though what constitues a "Modal" is subject to some amount of interpretation on the specific use-case, one blind spot in the `SwiftUI` Framework is the lack of a clean way to present a **Fullscreen modal**

This repository contains my examples on how to present a full screen modal on iPad using SwiftUI, that is, the type of presentation that would be the equivalent to the following in `UIKit`

```
let myModal = MyModalViewController()
myModal.modalPresentationStyle = .fullScreen
self.present(myModal, animated: true)
```

## Techniques explored in this repository

A few techniques are explored in this repository. All examples attempt to have a "base" screen with a single button that presentes a "modal" view. The "modal" view has a button to dismiss itself.

### SwiftUI .sheet() View Modifier

Most online resources available will use this approach. It implements SwiftUI's `sheet()` view modifier documented here:  https://developer.apple.com/documentation/swiftui/anyview/3345075-sheet

What is usually failed to mention is that this presentation shows full screen on phones only. On iPad, as the name implies, the presentation displays a "sheet" which is not fullscreen. 

#### Result

![SwiftUI Sheet](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_sheeet.gif)

[This approach is explored in the `iPadModalSwiftUISheet` project.](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/tree/master/IpadModalSwiftUISheet)

### UIKit + SwiftUI Hybrid approach (better version)

This solution was created by [Mojtaba Hosseini](https://stackoverflow.com/users/5623035/mojtaba-hosseini) in this stackoverflow post (https://stackoverflow.com/questions/58958858/present-a-new-view-in-swiftui/58970681#58970681) and all credit goes to him. 

One way to achieve a full screen modal presentation on iPad is to create a `EnvironmentKey` that holds the value of ` UIApplication.shared.windows.first?.rootViewController` and then access this from `SwiftUI` to call `UIKit` methods such as `present(_,animated:completion:)` or `dismiss()` on that `UIViewController`. 

A small extension on `UIViewController` is also needed to create a way for the `UIViewController` to present an arbitrary `SwiftUI` `View`.

By using this approach, one can easily leverage the existing presentation API's from `UIKit` while still having `View` instances made with `SwiftUI`.

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_hybrid.gif)

### UIKit + SwiftUI Hybrid approach (not so great version)

One way to achieve a full screen modal presentation on iPad is to wrap each `View` instance in a `UIHostController` and then use `ObservableObject` for the communication between `SwiftUI` and `UIKit`. 

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_hybrid.gif)

[This approach is explored in the `iPadModalHybrid` project.](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/tree/master/iPadModalHybrid)

### SwiftUI conditional View

One way to achieve a full screen modal presentation on iPad is to simply hide/show the "modal" view on top of the "base" view (or instead of the "base" view) and use a conditional to control the visibility of the "modal".

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_conditionalView.gif)

[This approach is explored in the `iPadConditionalViewModal` project.](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/tree/master/iPadConditionalViewModal)


### SwiftUI `NavigationView` + `NavigationLink`

It is possible to achieve the effect of a fullscreen modal by creating a `NavigationLink` inside a `NavigationView` on the iPad provided that:

*  `.navigationViewStyle(StackNavigationViewStyle())` is applied to the `NavigationView`
*  The destination view uses `edgesIgnoringSafeArea(.all)` 
*  The destination view uses `.navigationBarBackButtonHidden(true)` 

This will create a `slide` transition and it will be fullscreen. At the time of writting it seems to be impossible to customize the transition of a `NavigationView` + `NavigationLink` presentation.

#### Result

![SwiftUI NavigationView + NavigationLink Fullscreen](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/navigationLink.gif)

[This approach is explored in the `IpadNavigationViewDetail` project.](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/tree/master/IpadNavigationViewDetail)
