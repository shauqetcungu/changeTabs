//
//  ViewController.swift
//  ChangeVC
//
//  Created by Saša Vujanovic on 22/04/2019.
//  Copyright © 2019 Shauqet Cungu. All rights reserved.
//

import UIKit

struct TableCellData {
    let emoji: String?
    let message: String?
}

class FirstViewController: UITableViewController {
    
    var tableData = [TableCellData]()
    
    let dummyString = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableData = [TableCellData.init(emoji: "👿", message: dummyString),TableCellData.init(emoji: "🤖", message: dummyString),TableCellData.init(emoji: "🎃", message: dummyString),TableCellData.init(emoji: "👻", message: dummyString),TableCellData.init(emoji: "🧤", message: dummyString),TableCellData.init(emoji: "👅", message: dummyString),TableCellData.init(emoji: "👿", message: dummyString),TableCellData.init(emoji: "👻", message: dummyString)]
        
        self.tableView.register(CustomTableCell.self, forCellReuseIdentifier: "custom")
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomTableCell
        cell.emoji = tableData[indexPath.row].emoji
        cell.message = tableData[indexPath.row].message
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
}

