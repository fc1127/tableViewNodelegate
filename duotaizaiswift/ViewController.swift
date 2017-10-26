//
//  ViewController.swift
//  duotaizaiswift
//
//  Created by FC on 2017/10/26.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableV : UITableView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableV = UITableView(frame: view.bounds, style: .plain)
        tableV?.dataSource=self
        tableV?.backgroundColor=UIColor.purple
    }
    override func loadView() {
//        view初始化 检查是否创建view 如果没有会自动进入这个方法  让tableview 赋值给view  uitableviewcontroller 也是这样创建的  因为此处用到了多态
        view=tableV
    }
}
//可以不用遵守tableviedelegate 但是只能用数据源方法 表格的方法用不了 应该加上的
extension ViewController:UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellid")
        cell.textLabel?.text=String(indexPath.row)
        return cell
    }
    
}

