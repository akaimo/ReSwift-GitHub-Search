//
//  GitHubAPI.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import Foundation
import APIKit

protocol GitHubAPI: RequestType {
    
}

extension GitHubAPI {
    var baseURL: NSURL {
        return NSURL(string: "https://api.github.com")!
    }
}