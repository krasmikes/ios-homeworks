//
//  FeedViewController.swift
//  Navigation
//
//  Created by Апанасенко Михаил Витальевич on 22.12.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    let postButton = UIButton(frame: .zero)
    let post = Post(title: "Post Title")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        postButton.setTitle("Open post", for: .normal)
        postButton.setTitleColor(.black, for: .normal)
        postButton.backgroundColor = .gray
        
        postButton.frame.size.height = 50
        postButton.frame.size.width = 100
        postButton.center = view.center
        view.addSubview(postButton)
        
        postButton.addTarget(self, action: #selector(postButtonTapped), for: .touchUpInside)
    }
    
    @objc private func postButtonTapped(_ sender: UIButton) {
        let postViewController = PostViewController(post: post)
        navigationController?.pushViewController(postViewController, animated: true)
    }
}
