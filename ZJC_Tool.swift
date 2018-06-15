//
//  ZJC_Tool.swift
//  ZhangJinChao
//
//  Created by 汉力 on 2018/6/6.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

class ZJC_Tool: NSObject {
    func ToolWithDeviceForFloat(float:CGFloat) -> CGFloat {
        var tempFloat = float
        if IS_IPhone6 {
            tempFloat = float - 1
        } else if IS_IPhone6p {
            tempFloat = float
        } else if IS_IPhone5 {
            tempFloat = float - 2
        }
        return tempFloat
    }
}
