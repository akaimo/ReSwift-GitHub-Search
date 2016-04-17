//
//  AppState.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import Foundation
import ReSwift

struct AppState: StateType {
    var gitHubAPIState = GitHubAPIState()
    
    init() {}
}
