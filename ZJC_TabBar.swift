//
//  ZJC_TabBar.swift
//  ZhangJinChao
//
//  Created by 张衡 on 2018/5/31.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

extension UITabBar {
    /**
     *  using runtime associated ID
     */
    private struct AssociatedKeys {
        static var tabKey = "tabView"
    }
    /**
     *  define new tabbar, Set up the set OR get
     */
    var btntab : UIButton? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.tabKey) as? UIButton
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.tabKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    /**
     *  add center button
     */
    func AddCenterTab(image:UIImage,selectImage:UIImage,titleText:String) -> UIButton {
        if self.btntab == nil {
            self.shadowImage = UIImage()
            let btn = UIButton(frame: CGRect.init(x: (ZJC_Width - 50) / 2, y: -30, width: 50, height: 50))

            btn.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            btn.setImage(image, for: .normal)
            btn.setImage(selectImage, for: .selected)
            btn.titleLabel?.text = titleText
            self.addSubview(btn)
            self.btntab = btn
        }
        return self.btntab!
    }

}
