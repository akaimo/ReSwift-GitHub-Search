//
//  GitHubAPIActionCreator.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import Foundation
import ReSwift
import APIKit

struct GitHubAPIActionCreater {
    let store: Store<AppState>
    
    init (store: Store<AppState>) {
        self.store = store
    }
    
    /// レスポンスが返ってきたらActionを作成する
    func searchRepository(query: String) {
        let request = SearchRepositoriesRequest(query: query)
        Session.sendRequest(request) { result in
            switch result {
            case .Success(let respose):
                self.store.dispatch(SearchRepositoryResult(result: respose))
                
            case .Failure(let error):
                print(error)
            }
        }
    }
}
