//
//  ZJC_UIButton.swift
//  ZhangJinChao
//
//  Created by 汉力 on 2018/6/7.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

extension UIButton {
    convenience init(rect: CGRect, Title: String, Font: UIFont, TitleColor: UIColor, BackGroundColor: UIColor, superView: UIView){
        self.init()
        setTitle(Title, for: .normal)
        titleLabel?.font = Font
        setTitleColor(TitleColor, for: .normal)
        backgroundColor = BackGroundColor
        superView.addSubview(self)
    }
    
    func ChickButon(id:Any, SEL:Selector) -> Void {
        self.addTarget(id, action: SEL, for: .touchUpInside)
    }
}
