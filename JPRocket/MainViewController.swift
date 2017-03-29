//
//  ViewController.swift
//  JPRocket
//
//  Created by tangyuhua on 2017/3/29.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    var items :[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = ["入门", "初级会话","动词变形等"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func searchBarButtonTapped(_ sender: Any) {
            print("go to a dictionary ");
    }
}

extension MainViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}

extension MainViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mainCell: MainCell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
        mainCell.serialNumber.text = "第\(indexPath.row)级别"
        mainCell.content.text  = items[indexPath.row]
        return mainCell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
}

