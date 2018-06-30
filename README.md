# BezierRowView

[![CI Status](https://img.shields.io/travis/436910463q@gmail.com/BezierRowView.svg?style=flat)](https://travis-ci.org/436910463q@gmail.com/BezierRowView)
[![Version](https://img.shields.io/cocoapods/v/BezierRowView.svg?style=flat)](https://cocoapods.org/pods/BezierRowView)
[![License](https://img.shields.io/cocoapods/l/BezierRowView.svg?style=flat)](https://cocoapods.org/pods/BezierRowView)
[![Platform](https://img.shields.io/cocoapods/p/BezierRowView.svg?style=flat)](https://cocoapods.org/pods/BezierRowView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- [x] Xcode 9.0
- [x] Swift 3.x

## Results

[![ScreenShot](https://pasteboard.co/HscJs34.png)]
[![ScreenShot](https://pasteboard.co/HscJCIc.png)]

Its simply creator custom UIView with BezierPath. It keep you to write easy code for grid of photos without difficulties. Obtaining images based on the URL or your Photo Model, as well as track the click events on a specific layer of this mask and understand where the user clicked. In callback you can get your Model or URL.

## Installation

BezierRowView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BezierRowView'
```
## Usage

<table>
<tr>
<th width="30%">Here's an example</th>
<th width="30%">In Action</th>
</tr>
<tr>
<td>Define UIView ...</td>
<th rowspan="9"><img src="https://pasteboard.co/HscJahK.png"></th>
</tr>
<tr>
<td><div class="highlight highlight-source-swift"><pre>
@IBOutlet weak var bez: BezierRowUIView!</pre></div></td>
</tr>
<tr>
<td>... then bind the shape path, model or any URL and callback to your view</td>
</tr>
<tr>
<td width="30%"><div class="highlight highlight-source-swift"><pre>
bez.setupBind(p: typeOfMaskThreeShape.r308, m: ["https://www.incimages.com/uploaded_files/image/970x450/creative-pano_37907.jpg",
"https://res.cloudinary.com/simpleview/image/upload/c_fill,f_auto,h_492,q_50,w_844/v1/clients/athens/32581440564_fb72de5891_z_21711e2d-306e-4aee-8f1e-c3d7476b0aa4.jpg",
"https://i1.wp.com/www.mindcharity.co.uk/wp-content/uploads/2017/03/creative-minds.jpg?ssl=1"]) { item in
print(item)
}
bez.setNeedsDisplay()
</pre></div></td>
</tr>
</table>

## Author

436910463q@gmail.com, Dmitry Marinin

## License

BezierRowView is available under the MIT license. See the LICENSE file for more info.
