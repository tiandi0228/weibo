//
//  MainViewController.swift
//  weibo
//
//  Created by sunyuchun on 2017/10/14.
//  Copyright © 2017年 sunyc. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupComposeBtn()
        
        // 改变选中颜色
        self.tabBar.tintColor = UIColor.black

    }
    
    // MARK: 添加加号按钮
    private func setupComposeBtn() {
        let composeBtn = UIButton().nk_image("tabbar_compose_icon_add").nk_backgroundImage("tabbar_compose_button").nk_action(self, #selector(buttonClick))
        let w = UIScreen.main.bounds.width / 5
        composeBtn.frame = tabBar.bounds.insetBy(dx: 2 * w, dy: 0)
        tabBar.addSubview(composeBtn)
    }
    
    // MARK: 点击事件
    func buttonClick(button :UIButton){
        
        print("点击")
        
    }
}
