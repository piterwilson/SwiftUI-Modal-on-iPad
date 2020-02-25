# SwiftUI (fullscreen) modal on iPad

This repository contains my examples on how to present a full screen modal on iPad using SwiftUI.

At the time of writing it doesn't seem like there's a clean way to present a **full screen** modal on iPad. That is, the type of presentation that would be the equivalent to the following in `UIKit`

```
let myModal = MyModalViewController()
myModal.modalPresentationStyle = .fullScreen
self.present(myModal, animated: true)
```

## Techniques explored in this repository

A few techniques are explored in this repository. All examples attempt to have a "base" screen with a single button that presentes a "modal" view. The "modal" view has a button to dismiss itself.

#### Base view

![Base View](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/start.png)

### SwiftUI .sheet() View Modifier

Most online resources available will use this approach. It implements SwiftUI's `sheet()` view modifier documented here:  https://developer.apple.com/documentation/swiftui/anyview/3345075-sheet

What is usually failed to mention is that this presentation shows full screen on phones only. On iPad, as the name implies, the presentation displays a "sheet" which is not fullscreen. 

#### Result

![SwiftUI Sheet](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_sheeet.gif)

[This approach is explored in the `iPadModalSwiftUISheet` project.](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/tree/master/IpadModalSwiftUISheet)

### UIKit + SwiftUI Hybrid approach

One way to achieve a full screen modal presentation on iPad is to wrap each `View` instance in a `UIHostController` and then use `ObservableObject` for the communication between `SwiftUI` and `UIKit`. 

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_hybrid.gif)

[This approach is explored in the `iPadModalHybrid` project.](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/tree/master/iPadModalHybrid)

### SwiftUI conditional View

One can achieve a full screen modal presentation on iPad is to simply hide/show the "modal" view on top of the "base" view and use a conditional to control the visibility of the "modal".

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