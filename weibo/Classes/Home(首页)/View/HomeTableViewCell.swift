//
//  HomeTableViewCell.swift
//  weibo
//
//  Created by sunyuchun on 2017/10/15.
//  Copyright © 2017年 sunyc. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // 控件
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var formLabel: UILabel!
    @IBOutlet weak var attestImageView: UIImageView!
    @IBOutlet weak var levelImageView: UIImageView!
    @IBAction func downButton(_ sender: UIButton) {
        print(1111)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
