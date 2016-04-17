//
//  GitHubAPIReducer.swift
//  ReSwift-GitHub-Search
//
//  Created by Shuhei Kawaguchi on 2016/04/17.
//  Copyright © 2016年 Shuhei Kawaguchi. All rights reserved.
//

import Foundation
import ReSwift

struct GitHubAPIReducer: Reducer {
    
    func handleAction(action: Action, state: AppState?) -> AppState {
        var state = state ?? AppState()

        switch action {
        case let action as SearchRepositoryResult:
            state.gitHubAPIState.response = action.result
            
        default:
            break
        }

        return state
    }
}
