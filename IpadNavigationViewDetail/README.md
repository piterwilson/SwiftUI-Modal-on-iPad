
# SwiftUI (fullscreen) modal on iPad
## SwiftUI `NavigationView` + `NavigationLink`

It is possible to achieve the effect of a fullscreen modal by creating a `NavigationLink` inside a `NavigationView` on the iPad provided that:

*  `.navigationViewStyle(StackNavigationViewStyle())` is applied to the `NavigationView`
*  The destination view uses `edgesIgnoringSafeArea(.all)` 
*  The destination view uses `.navigationBarBackButtonHidden(true)` 

This will create a `slide` transition and it will be fullscreen. At the time of writting it seems to be impossible to customize the transition of a `NavigationView` + `NavigationLink` presentation.

#### Result

![SwiftUI NavigationView + NavigationLink Fullscreen](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/navigationLink.gif)

### PROS
* Full SwiftUI

### CONS
* Animation not customizable