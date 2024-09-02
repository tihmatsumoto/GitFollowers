//
//  GFError.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 26/08/2024.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username seems to not exist. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response. Please try again."
    case invalidData = "Invalid data. Please try again."
}
