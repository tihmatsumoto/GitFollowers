//
//  FollowerListViewController.swift
//  GitFollowers
//
//  Created by Tiemi Matsumoto on 23/08/2024.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .success(let followers):
                print("Followers.count = \(followers.count)")
                print("Followers = \(followers)")
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad response", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
