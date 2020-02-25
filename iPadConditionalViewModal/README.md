# SwiftUI (fullscreen) modal on iPad
## SwiftUI conditional View

One way to achieve a full screen modal presentation on iPad is to simply hide/show the "modal" view on top of the "base" view and use a conditional to control the visibility of the "modal".

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_conditionalView.gif)

### PROS
* **Fulscreen** modal presentation on iPad.
* Full SwiftUI solution

### CONS
* Not really a modal presentation. The "base" view and all its view hierarchy are still present under the "modal". This can be a pain if you want to support accesibility and this requires extra work arounds.
* You will have to add your own animated transition.