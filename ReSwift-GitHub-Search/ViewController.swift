//
//  ViewController.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import UIKit
import APIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var validateLabel: UILabel!
    @IBOutlet weak var searchButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GitHub Repository Search"
        
//        let request = SearchRepositoriesRequest(query: "Swift")
//        Session.sendRequest(request) { result in
//            switch result {
//            case .Success(let respose):
//                print(respose)
//                
//            case .Failure(let error):
//                print(error)
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func searchAction(sender: AnyObject) {
    }

}

