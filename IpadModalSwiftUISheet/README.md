
# SwiftUI (fullscreen) modal on iPad
## SwiftUI .sheet() View Modifier

Most online resources available will use this approach. It implements SwiftUI's `sheet()` view modifier documented here:  https://developer.apple.com/documentation/swiftui/anyview/3345075-sheet

What is usually failed to mention is that this presentation shows full screen on phones only. On iPad, as the name implies, the presentation displays a "sheet" which is not fullscreen. 

#### Result

![SwiftUI Sheet](https://github.com/piterwilson/SwiftUI-Modal-on-iPad/raw/master/screenshots/_sheeet.gif)

### PROS
* Full SwiftUI

### CONS
* Not fullscreen on iPad