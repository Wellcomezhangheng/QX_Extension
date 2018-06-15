//
//  ZJC_UIImageView.swift
//  ZhangJinChao
//
//  Created by 汉力 on 2018/6/5.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

extension UIImageView {
    convenience init(rect:CGRect,
                     imageName:String,
                     superView:UIView) {
        self.init()
        frame = rect
        image = UIImage(named: imageName)
        superView.addSubview(self)
    }
}
