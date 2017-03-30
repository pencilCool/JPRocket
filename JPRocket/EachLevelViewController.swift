//
//  EachLevelViewController.swift
//  JPRocket
//
//  Created by tangyuhua on 2017/3/29.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit

class EachLevelViewController:UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var items  = [EachLevelItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "第二级别"
        addSource();
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 120;
    }
    
    func addSource() -> Void {
        let test = EachLevelItem(serial: "第一课", title:"sakura",  intro: " 入门的词汇而已")
        
        let test2 = EachLevelItem(serial:"第二课", title:"sakura2", intro: " 入门语法")
        items.append(test)
        items.append(test2)
    }
    
    
}


extension EachLevelViewController: UITableViewDelegate {

}


extension EachLevelViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eachLevelCell = tableView.dequeueReusableCell(withIdentifier: "EachLevelCell", for: indexPath) as! EachLevelCell
        
        let item = items[indexPath.row]
        eachLevelCell.serialNumber.text = item.serial
        eachLevelCell.title.text        = item.title
        eachLevelCell.intro.text        = item.intro
        return eachLevelCell;
    }
    
}
