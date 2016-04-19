//
//  ResultViewController.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import UIKit
import ReSwift

class ResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var state: AppState!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let num = state.gitHubAPIState.response?.count else { return 0 }
        return num
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = state.gitHubAPIState.response?[indexPath.row].fullName
        return cell
    }
}
