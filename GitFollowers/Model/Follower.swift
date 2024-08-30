//
//  Follower.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 24/08/2024.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String //can be in camel case because decoder has a property that changes from snake_case to camelCase and will accept this format
}
