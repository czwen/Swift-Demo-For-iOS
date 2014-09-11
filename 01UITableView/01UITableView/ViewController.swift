//
//  ViewController.swift
//  01UITableView
//
//  Created by ChenZhiWen on 2/9/14.
//  Copyright (c) 2014 ChenZhiWen. All rights reserved.
//

import UIKit

let cell_identifier = "cell"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var tableView:UITableView = UITableView()
    
    var data:Array<String> = ["Tom","Ryan","David","Tom","Ryan","David","Tom","Ryan","David","Tom","Ryan","David","Tom","Ryan","David"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView = UITableView(frame: self.view.frame)
        tableView.delegate = self
        tableView.dataSource = self
        //important
        //regist cell class to tableview
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cell_identifier)
        self.view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell
        cell = tableView.dequeueReusableCellWithIdentifier(cell_identifier) as UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // do something when click the cell
    }
}