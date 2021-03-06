//
//  TestTabBarViewController.swift
//  HKTabBarDemo
//
//  Created by PDA-iOS on 2019/2/28.
//  Copyright © 2019年 Heikki. All rights reserved.
//

import UIKit

class HKTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc0 = UIViewController()
        vc0.view.backgroundColor = UIColor.init(red: 1, green: 0, blue: 0, alpha: 0.3)
        let vc1 = UIViewController()
        vc1.view.backgroundColor = UIColor.init(red: 0, green: 1, blue: 0, alpha: 0.3)
        let vc2 = UIViewController()
        vc2.view.backgroundColor = UIColor.init(red: 0, green: 0, blue: 1, alpha: 0.3)
        viewControllers = [vc0, vc1, vc2]
        
        
        let item = HKTabBarModel(imageName: "recent", title: "消息", distance: 10, mini_x_Coef: 0.2, mini_y_Coef: 0.4)
        let item1 = HKTabBarModel(imageName: "buddy", title: "联系人")
        let item2 = HKTabBarModel(imageName: "qworld", title: "动态", distance: 10, mini_x_Coef: -0.2, mini_y_Coef: 0.2)
        
        //        let tabbar = HKTabBar(items: [item, item1, item2])
        //        tabbar.hk_delegate = self
        
        let tabbar = HKTabBar(items: [item, item1, item2]) { (btn, index) in
            print(btn?.title ?? "title")
            self.selectedIndex = index
        }
        
        self.setValue(tabbar, forKey: "tabBar")
    }
}

//extension HKTabBarViewController: HKTabBarDelegate {
//    func hk_tabBar(_ tabBar: HKTabBar, didSelect item: HKDragButton, index: Int) {
//         self.selectedIndex = index
//    }
//}
