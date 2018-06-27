//
//  SwiftFile.swift
//  Qlink
//
//  Created by Jelly Foo on 2018/3/22.
//  Copyright © 2018年 pan. All rights reserved.
//

import Foundation

import KeychainAccess

class SwiftFile: NSObject {
    func firstMethod() {
        print("swift log");
        // 调用OC方法
        LaunchViewController.showLog()
    }
    
    
}

