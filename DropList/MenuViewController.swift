//
//  MenuViewController.swift
//  DropList
//
//  Created by 牛尧 on 16/6/24.
//  Copyright © 2016年 FISHBALL1. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,DropListDelegate {
    @IBOutlet var menu1: DropList!
    var data1 = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        menu1.options = ["盛大卡","神州行","征途卡","QQ卡","网银","支付宝","财付通","微信","联通卡","久游卡","网易卡","完美卡","搜狐卡","电信卡","盛付卡"] //设置下拉列表项数据
        menu1.editable = false //禁止编辑
        menu1.defaultValue = "请选择" //设置默认值
        menu1.showBorder = false   //不显示边框
        menu1.delegate = self
    }
    func dropDownMenu(menu: DropList!, didChoose index: Int) {
        print("\(menu) choosed at index \(index)")
        //判断一下是获取哪个数组的值，如果不判断会造成数组混乱
        if menu == menu1 {
            data1 = menu1.options[index]
            //缓存用户选择的通道类型
            let  Niuyao = NSUserDefaults.standardUserDefaults().setObject(data1, forKey: "shuju")
        }
    }
    
    //编辑完成后回调
    func dropDownMenu(menu: DropList!, didInput text: String!) {
        print("\(menu) input text \(text)")
    }

}
