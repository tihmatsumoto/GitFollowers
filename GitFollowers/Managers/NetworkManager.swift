//
//  NetworkManager.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 24/08/2024.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "Invalid request. Please try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            //if there is an error outside of api call error. Connection or other
            if let _  = error {
                completed(nil, "Unable to complete your request. Please check your internet connection.")
                return
            }
            
            //if response not nil, then, check status code
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response. Please try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "Invalid data. Please try again.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "Invalid data. Please try again.")
                return
            }
        }
        
        task.resume()
    }
}
