//
//  ViewController.swift
//  DropList
//
//  Created by 牛尧 on 16/6/24.
//  Copyright © 2016年 FISHBALL1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var N:String?
    @IBOutlet var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //btn.setTitle("请选择", forState: UIControlState.Normal)
    }
    //选择完通道类型将返回的值传入button
    override func viewWillAppear (animated: Bool) {
        self.navigationController?.navigationBar.hidden = false
        //取出用户在另一个页面缓存的点卡类型
        N = NSUserDefaults.standardUserDefaults().stringForKey("shuju")
        if( N == "盛大卡" || N == "神州行" || N == "征途卡" || N == "QQ卡" || N == "网银" || N == "支付宝" || N == "财付通" || N == "微信" || N == "联通卡" || N == "久游卡" || N == "网易卡" || N == "完美卡" || N == "搜狐卡" || N == "电信卡" || N == "盛付卡" ){
         
            btn.setTitle(N! as String, forState: UIControlState.Normal)
        }
        else{
            btn.setTitle("请选择", forState: UIControlState.Normal)
        }
        print("niu",N)
       
}

}

