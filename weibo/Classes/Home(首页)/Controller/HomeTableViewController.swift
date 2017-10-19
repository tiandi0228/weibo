//
//  HomeTableViewController.swift
//  weibo
//
//  Created by sunyuchun on 2017/10/14.
//  Copyright © 2017年 sunyc. All rights reserved.
//

import UIKit
import SnapKit
import Kingfisher

class HomeTableViewController: UITableViewController, UIPopoverPresentationControllerDelegate {
    
    var popView = UIView()
    
    var arrow = UIView()
    
    var scan = UIButton()
    
    var popLine = UIView()
    
    var show:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置navigation的item颜色
        self.navigationController?.navigationBar.tintColor = UIColor.gray
        
        // 去掉分划线
        self.tableView.separatorStyle = .none
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        //注册cell
        self.tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeCell")
        
        // 设置 tabelView 行高,自动计算行高
        tableView.rowHeight = UITableViewAutomaticDimension
        // 设置预估行高 --> 先让 tableView 能滚动，在滚动的时候再去计算显示的 cell 的真正的行高，并且调整 tabelView 的滚动范围
        tableView.estimatedRowHeight = 300
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeTableViewCell
        cell.textLabel?.numberOfLines = 0
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    
    // MARK: - Navigation


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let vc = segue.destination as? HomeMenuViewController {
            vc.fromvc = self
            vc.popoverPresentationController?.delegate = self
            vc.preferredContentSize = CGSize(width: 120, height: 132)
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

}
