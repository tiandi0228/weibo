//
//  User.swift
//  weibo
//
//  Created by sunyuchun on 2017/10/15.
//  Copyright © 2017年 sunyc. All rights reserved.
//

import UIKit

class User: NSObject {
    // 用户id
    var id:Int64 = 0
    // 用户昵称
    var screen_name: String?
    // 用户头像
    var profile_image_url: String?
    // 认证类型
    var verified_type: Int64 = 0
    // 会员等级 0-6
    var mbrank:Int64 = 0
}
