//
//  SearchRepositoryRequest.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct SearchRepositoriesRequest: GitHubAPI {
    typealias Response = [Repository]
    let query: String
    let page: Int
    
    init(query: String, page: Int = 1) {
        self.query = query
        self.page = page
    }
    
    var method: HTTPMethod {
        return .GET
    }
    
    var path: String {
        return "/search/repositories"
    }
    
    var parameters: [String: AnyObject] {
        return ["q": query, "page": page]
    }
    
    func responseFromObject(object: AnyObject, URLResponse: NSHTTPURLResponse) -> Response? {
        return try? decodeArray(object, rootKeyPath: "items")
    }
}
