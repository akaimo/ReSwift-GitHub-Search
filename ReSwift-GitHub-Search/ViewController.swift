//
//  ViewController.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var validateLabel: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    
    let store = Store<AppState>(reducer: GitHubAPIReducer(), state: AppState())
    var gitHubApiActionCreator: GitHubAPIActionCreater!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        gitHubApiActionCreator = GitHubAPIActionCreater(store: store)
        title = "GitHub Repository Search"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func newState(state: AppState) {
        print("---newState")
        print(state)
        if let _ = state.gitHubAPIState.response {
            let vc = storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
            vc.state = state
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    @IBAction func searchAction(sender: AnyObject) {
        gitHubApiActionCreator.searchRepository(textView.text!)
    }

}

