//
//  ZJC_Protocol.swift
//  ZhangJinChao
//
//  Created by 汉力 on 2018/6/6.
//  Copyright © 2018年 老张. All rights reserved.
//

import UIKit

protocol loanTypeDelegate : NSObjectProtocol{
    func loanTypeDidSelectWithItem(tapGesture:UITapGestureRecognizer) -> ()
}
