<p align="center" >
<img src="https://github.com/igormatyushkin014/StyleKit/blob/master/Images/logo-1024-300.png" alt="StyleKit" title="StyleKit">
</p>

<p align="center">
<a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/v/StyleKit.svg?maxAge=2592000"></a>
<a href="https://cocoapods.org"><img src="https://img.shields.io/cocoapods/dt/StyleKit.svg?maxAge=2592000"></a>
<a href="https://tldrlegal.com/license/mit-license"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat"></a>
</p>

# At a Glance

Front-end developers, who create layout for HTML pages, know the simplicity and power of CSS classes. At some point I thought: why not to make something similar for native iOS apps? This idea was quite obvious. When the first version of the framework has been done, it was named `StyleKit`. Obvious name for obvious thing.

# How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `UIStyle` cocoapod

# Requirements

* iOS 9.0 and later
* Xcode 8 and later

# Usage

Style is a set of UI attributes. Each style includes at least one attribute, but can include unlimited collection of attributes.

```swift
/*
 * Create simple style with one attribute.
 */
let attributes: [ViewStyleAttribute] = [
    .backgroundColor(color: .yellow)
]

let yellowBackground = ViewStyle(attributes: attributes)

/*
 * Another way to create the same style.
 */

let anotherYellowBackground = ViewStyle.with(attribute: .backgroundColor(color: .yellow))
    .done()

/*
 * Create style with multiple attributes.
 */

let greenBackgroundWithThinRedBorder = ViewStyle.with(attribute: .backgroundColor(color: .green))
    .and(attribute: .borderColor(color: .red))
    .and(attribute: .borderWidth(width: 1.0))
    .done()
```

Full list of attributes is available in [ViewStyleAttribute.swift](https://github.com/igormatyushkin014/StyleKit/blob/master/Source/Engine/ViewStyleAttribute.swift) file.

Any style can be applied to any view. You can apply unlimited number of styles to the same view.

```swift
/*
 * Apply style to view.
 */

view.stl.apply(style: yellowBackground)

/*
 * Apply multiple styles to view.
 */

view.stl.apply(style: yellowBackground)
    .apply(style: greenBackgroundWithThinRedBorder)
```

Also, it's possible to check programmatically if style supports view:

```swift
if StyleStorage.thinOrangeText.supports(view: helloLabel) {
    helloLabel.stl.apply(style: StyleStorage.thinOrangeText)
}
```

Recommended way to manage styles in app is to implement a structure with static styles:

```swift
struct StyleStorage {
    
    static let defaultBackground = ViewStyle.with(attribute: .backgroundColor(color: .white))
        .and(attribute: .borderColor(color: .green))
        .and(attribute: .borderWidth(width: 2.0))
        .done()
    
    static let thinOrangeText = ViewStyle.with(attribute: .textColor(color: .orange))
        .and(attribute: .font(font: UIFont.systemFont(ofSize: 36.0, weight: UIFontWeightThin)))
        .done()
        
}
```

Those styles can be reused many times in different places of the app:

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    
    /*
     * Initialize view.
     */
    
    view.stl.apply(style: StyleStorage.defaultBackground)
    
    /*
     * Initialize title label.
     */
    
    titleLabel.stl.apply(style: StyleStorage.thinOrangeText)
}
```

# License

`StyleKit` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
