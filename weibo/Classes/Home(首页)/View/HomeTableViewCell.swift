//
//  HomeTableViewCell.swift
//  weibo
//
//  Created by sunyuchun on 2017/10/15.
//  Copyright © 2017年 sunyc. All rights reserved.
//

import UIKit
import SnapKit

class HomeTableViewCell: UITableViewCell {
    
    var headBox = UIView()
    var footBox = UIView()
    var bodyBox = UIView()
    var retweetBox = UIView()
    var picBox = UIView()
    var splitLine = UIView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //重写cell init方法
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.createUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createUI() {
        
        // 屏幕宽度
        let width = UIScreen.main.bounds.size.width
        
        // 设置字体大小
        let font = UIFont.systemFont(ofSize: 11.0)
        
        // 头部用户信息
        self.addSubview(headBox)
        headBox.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(40)
            make.top.equalTo(10)
        }
        
        // 头像
        let avatar = UIImageView(image:UIImage(named:"avatar_default"))
        avatar.layer.cornerRadius = 20
        avatar.clipsToBounds = true
        headBox.addSubview(avatar)
        avatar.snp.makeConstraints { (make) in
            make.width.height.equalTo(40)
            make.top.equalTo(0)
            make.left.equalTo(15)
        }
        
        // 认证
        let verify = UIImageView(image:UIImage(named:"avatar_vip"))
        headBox.addSubview(verify)
        verify.snp.makeConstraints { (make) in
            make.width.height.equalTo(17)
            make.left.equalTo(40)
            make.bottom.equalTo(0)
        }
        
        // 昵称
        let nameLabel = UILabel()
        nameLabel.text = "用户昵称"
        nameLabel.font = UIFont.systemFont(ofSize: 15.0)
        headBox.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(70)
            make.top.equalTo(0)
        }
        
        // Vip
        let vip = UIImageView(image:UIImage(named: "common_icon_membership_level1"))
        headBox.addSubview(vip)
        vip.snp.makeConstraints { (make) in
            make.width.height.equalTo(14)
            make.top.equalTo(2)
            make.left.equalTo(nameLabel.snp.right).offset(10)
        }
        
        // 发布时间
        let timeLabel = UILabel()
        timeLabel.text = "10分钟前"
        timeLabel.font = font
        timeLabel.textColor = UIColor.gray
        headBox.addSubview(timeLabel)
        timeLabel.snp.makeConstraints { (make) in
            make.left.equalTo(70)
            make.bottom.equalTo(0)
        }
        
        // 来自
        let fromLabel = UILabel()
        fromLabel.text = "来自微博：weibo.com"
        fromLabel.font = font
        fromLabel.textColor = UIColor.gray
        headBox.addSubview(fromLabel)
        fromLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(0)
            make.left.equalTo(timeLabel.snp.right).offset(10)
        }
        
        // 更多操作
        let moreButton = UIButton(type: .contactAdd)
        moreButton.setImage(UIImage(named: "down_arrow"), for: UIControlState.normal)
        moreButton.tintColor = UIColor.lightGray
        headBox.addSubview(moreButton)
        moreButton.snp.makeConstraints { (make) in
            make.width.equalTo(15)
            make.height.equalTo(7)
            make.top.equalTo(6)
            make.right.equalTo(-10)
        }
        
        // 内容主体
        self.addSubview(bodyBox)
        bodyBox.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.top.equalTo(headBox.snp.bottom).offset(10)
            make.bottom.equalTo(-40)
        }
        
        // 评论内容
        let contentLabel = UILabel()
        bodyBox.addSubview(contentLabel)
        contentLabel.text = "这是一条测试评论这是一条测试评论这是一条测试评论这是一条测试评论这是一条测试评论这是一条测试评论"
        contentLabel.font = UIFont.systemFont(ofSize: 15.0)
        contentLabel.numberOfLines = 0
        contentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(15)
            make.right.equalTo(-15)
        }
        
        // 转发主体
        bodyBox.addSubview(retweetBox)
        retweetBox.backgroundColor = UIColor.groupTableViewBackground
        retweetBox.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.top.equalTo(contentLabel.snp.bottom).offset(10)
            make.bottom.equalTo(0)
        }
        
        // 转发内容
        let retweetLabel = UILabel()
        retweetBox.addSubview(retweetLabel)
        retweetLabel.text = "这是一条转发评论这是一条转发评论这是一条转发评论这是一条转发评论这是一条转发评论这是一条转发评论"
        retweetLabel.font = UIFont.systemFont(ofSize: 15.0)
        retweetLabel.numberOfLines = 0
        retweetLabel.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.left.equalTo(15)
            make.right.equalTo(-15)
        }
        
        // 图片主体
        retweetBox.addSubview(picBox)
        picBox.snp.makeConstraints { (make) in
            make.width.equalTo(width-30)
            make.height.equalTo((width-30) / 3)
            make.top.equalTo(retweetLabel.snp.bottom).offset(10)
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.bottom.equalTo(-10)
        }
        
        // 图片
        let retweetImageView = UIImageView(image:UIImage(named:"ad_background"))
        picBox.addSubview(retweetImageView)
        retweetImageView.snp.makeConstraints { (make) in
            make.width.height.equalTo((width-30) / 3)
            make.top.equalTo(0)
            make.left.equalTo(0)
        }
        
        // 底部工具栏
        self.addSubview(footBox)
        footBox.backgroundColor = UIColor.blue
        footBox.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(32)
            make.top.equalTo(bodyBox.snp.bottom)
        }
        
        // 转发
        let forwardingButton = button(title: "转发", img: "timeline_icon_retweet")
        footBox.addSubview(forwardingButton)
        forwardingButton.snp.makeConstraints { (make) in
            make.width.equalTo(width / 3 )
            make.height.equalTo(32)
            make.top.equalTo(0)
            make.left.equalTo(0)
        }
        
        // 评论
        let commentButton = button(title: "评论", img: "timeline_icon_comment")
        footBox.addSubview(commentButton)
        commentButton.snp.makeConstraints { (make) in
            make.width.equalTo(width / 3)
            make.height.equalTo(32)
            make.top.equalTo(0)
            make.left.equalTo(width / 3)
        }
        
        // 赞
        let praiseButton = button(title: "赞", img: "timeline_icon_unlike")
        footBox.addSubview(praiseButton)
        praiseButton.snp.makeConstraints { (make) in
            make.width.equalTo(width / 3)
            make.height.equalTo(32)
            make.top.equalTo(0)
            make.right.equalTo(0)
        }
        
        // 竖线左
        let verticalLineLeft = UIView()
        footBox.addSubview(verticalLineLeft)
        verticalLineLeft.backgroundColor = UIColor.groupTableViewBackground
        verticalLineLeft.snp.makeConstraints { (make) in
            make.width.equalTo(1)
            make.height.equalTo(20)
            make.left.equalTo(width / 3)
            make.centerY.equalTo(footBox)
        }
        
        // 竖线右
        let verticalLineRight = UIView()
        footBox.addSubview(verticalLineRight)
        verticalLineRight.backgroundColor = UIColor.groupTableViewBackground
        verticalLineRight.snp.makeConstraints { (make) in
            make.width.equalTo(1)
            make.height.equalTo(20)
            make.right.equalTo(-width / 3)
            make.centerY.equalTo(footBox)
        }
        
        // 分割线
        splitLine.backgroundColor = UIColor.groupTableViewBackground
        self.addSubview(splitLine)
        splitLine.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(8)
            make.top.equalTo(footBox.snp.bottom)
        }
        
    }
    
    // button简单封装
    func button(title: String, img: String) -> (UIButton) {
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor.white
        button.setImage(UIImage(named: img), for: UIControlState.normal)
        button.setTitle(title, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        button.tintColor = UIColor.lightGray
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        button.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 10)
        return button
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
