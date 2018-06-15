//
//  ZJC+UIColor.swift
//  ZhangJinChao
//
//  Created by 张衡 on 2018/5/29.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

extension UIColor {
    class var randomColor: UIColor {
        get {
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
    
     class func colorWithHex(hexString: String) -> UIColor {
        var cString = hexString.trimmingCharacters(in:.whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) {
            cString = String(cString[cString.index(after: cString.startIndex)..<cString.endIndex])
        }
        if (cString.count != 6) {
            return UIColor.clear
        }
        let rString = cString[..<cString.index(cString.startIndex, offsetBy: 2)]
        let gString = cString[cString.index(cString.startIndex, offsetBy: 2)..<cString.index(cString.startIndex, offsetBy: 4)]
        let bString = cString[cString.index(cString.endIndex, offsetBy: -2)..<cString.endIndex]
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: String(rString)).scanHexInt32(&r)
        Scanner(string: String(gString)).scanHexInt32(&g)
        Scanner(string: String(bString)).scanHexInt32(&b)
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 1.0)
    }

}

