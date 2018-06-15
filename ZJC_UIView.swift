//
//  ZJC_UIView.swift
//  ZhangJinChao
//
//  Created by 汉力 on 2018/6/5.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

extension UIView {
    convenience init(rect:CGRect,
                     BackGroundColor:UIColor,
                     superView:UIView) {
        self.init()
        frame = rect
        backgroundColor = BackGroundColor
        superView.addSubview(self)
    }
    convenience init(rect:CGRect,
                     BackGroundColor:UIColor) {
        self.init()
        frame = rect
        backgroundColor = BackGroundColor
    }
}
