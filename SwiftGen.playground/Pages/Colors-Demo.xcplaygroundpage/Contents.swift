//: #### Other pages
//:
//: * [Demo for `swiftgen strings`](Strings-Demo)
//: * [Demo for `swiftgen images`](Images-Demo)
//: * [Demo for `swiftgen storyboards`](Storyboards-Demo)
//: * Demo for `swiftgen colors`

import UIKit

//: #### Example of code generated by swiftgen-colors

// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import UIKit

extension UIColor {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0
    
    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}

extension UIColor {
  enum Name : UInt32 {
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
    /// Alpha: 80% <br/> (0xffffffcc)
    case Translucent = 0xffffffcc
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#339666"></span>
    /// Alpha: 100% <br/> (0x339666ff)
    case ArticleBody = 0x339666ff
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff66cc"></span>
    /// Alpha: 100% <br/> (0xff66ccff)
    case Cyan = 0xff66ccff
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#33fe66"></span>
    /// Alpha: 100% <br/> (0x33fe66ff)
    case ArticleTitle = 0x33fe66ff
  }
  
  convenience init(named name: Name) {
    self.init(rgbaValue: name.rawValue)
  }
}



//: #### Usage Example

UIColor(named: .ArticleTitle)
UIColor(named: .ArticleBody)
UIColor(named: .ArticleBody)
UIColor(named: .Translucent)
/* Only possible if you used `enumBuilder.build(generateStringInit: true)` to generate the enum */
//let orange = UIColor(hexString: "#ffcc88")
let lightGreen = UIColor(rgbaValue: 0x00ff88ff)

