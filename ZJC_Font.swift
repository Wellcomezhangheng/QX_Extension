//
//  ZJC_Font.swift
//  ZhangJinChao
//
//  Created by 张衡 on 2018/5/30.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

extension UIFont {
     func mysystemFontOfSize(fontSize:CGFloat) -> UIFont {
        var size = fontSize
        if IS_IPhone6 {
            size = fontSize
        } else if IS_IPhone6p {
            size = fontSize + 1
        } else if IS_IPhone5 {
            size = fontSize - 1
        }
        return UIFont.systemFont(ofSize:size)
    }
}
