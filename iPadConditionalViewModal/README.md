# SwiftUI (fullscreen) modal on iPad
## SwiftUI conditional View

One way to achieve a full screen modal presentation on iPad is to simply hide/show the "modal" view on top of the "base" view (or instead of the "base" view) and use a conditional to control the visibility of the "modal".

#### Result

![SwiftUI + UIKit Hybrid](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_conditionalView.gif)

**NOTE:** A more advanced example can be found here https://github.com/piterwilson/SwiftUI-FullscreenModalViewModifier

### PROS
* **Fulscreen** modal presentation on iPad.
* Full SwiftUI solution

### CONS
* Not really a modal presentation(?). The "base" view and all its view hierarchy are still present under the "modal". This can be a pain if you want to support accesibility. You can of course present the conditional modal **instead of** rather than on top of the base view. This setup works but needs to be written rather clever to scale well.
* You will have to add your own animated transition.
* Doesn't work if the base view is embeded in a `NavigationView` **root** unless the its navigation bar is hidden
* Doesn't work if the base view is embeded in a `NavigationView` **child**, that is a View presented using `NavigationLink` unless the its navigation bar and back button are hidden