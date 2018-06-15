//
//  ZJC_UILabel.swift
//  ZhangJinChao
//
//  Created by 汉力 on 2018/6/2.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(rect:CGRect,
                     Text:String,
                     TextColor:UIColor,
                     TextFont:UIFont,
                     TextAlign:NSTextAlignment,
                     superV:UIView) {
        self.init()
        text = Text
        font = TextFont
        frame = rect
        textColor = TextColor
        textAlignment = TextAlign
        superV.addSubview(self)
    }
}
