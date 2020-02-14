# SwiftUI (fullscreen) modal on iPad

This repository contains my examples on how to present a full screen modal on iPad using SwiftUI.

At the time of writing it doesn't seem like there's a clean way to present a **full screen** modal on iPad. That is, the type of presentation that would be the equivalent to the following in `UIKit`

```
let myModal = MyModalViewController()
myModal.modalPresentationStyle = .fullScreen
self.present(myModal, animated: true)
```

## Techniques explored in this repository

### UIKit + SwiftUI Hybrid approach

One way to achieve a full screen modal presentation on iPad is to wrap each `View` instance in a `UIHostController` and then use `ObservableObject` for the communication between `SwiftUI` and `UIKit`. 

[This approach is explored in the `iPadModalHybrid` project.](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/tree/master/iPadModalHybrid)